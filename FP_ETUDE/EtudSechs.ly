\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})

pocoCr =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco cresc.")
pocoDim =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco dimin.")

slash =
#(define-music-function (parser location ang stem-fraction protrusion)
   (number? number? number?)
   (remove-grace-property 'Voice 'Stem 'direction) ; necessary?
   #{
     \once \override Stem #'stencil =
     #(lambda (grob)
        (let* ((X-parent (ly:grob-parent grob X))
               (is-rest? (ly:grob? (ly:grob-object X-parent 'rest))))
          (if is-rest?
              empty-stencil
              (let* ((ang (degrees->radians ang))
                     ; We need the beam and its slope so that slash will
                     ; extend uniformly past the stem and the beam
                     (beam (ly:grob-object grob 'beam))
                     (beam-X-pos (ly:grob-property beam 'X-positions))
                     (beam-Y-pos (ly:grob-property beam 'positions))
                     (beam-slope (/ (- (cdr beam-Y-pos) (car beam-Y-pos))
                                   (- (cdr beam-X-pos) (car beam-X-pos))))
                     (beam-angle (atan beam-slope))
                     (stem-Y-ext (ly:grob-extent grob grob Y))
                     ; Stem.length is expressed in half staff-spaces
                     (stem-length (/ (ly:grob-property grob 'length) 2.0))
                     (dir (ly:grob-property grob 'direction))
                     ; if stem points up. car represents segment of stem
                     ; closest to notehead; if down, cdr does
                     (stem-ref (if (= dir 1) (car stem-Y-ext) (cdr stem-Y-ext)))
                     (stem-segment (* stem-length stem-fraction))
                     ; Where does slash cross the stem?
                     (slash-stem-Y (+ stem-ref (* dir stem-segment)))
                     ; These are values for the portion of the slash that
                     ; intersects the beamed group.
                     (dx (/ (- stem-length stem-segment)
                           (- (tan ang) (* dir beam-slope))))
                     (dy (* (tan ang) dx))
                     ; Now, we add in the wings
                     (protrusion-dx (* (cos ang) protrusion))
                     (protrusion-dy (* (sin ang) protrusion))
                     (x1 (- protrusion-dx))
                     (y1 (- slash-stem-Y (* dir protrusion-dy)))
                     (x2 (+ dx protrusion-dx))
                     (y2 (+ slash-stem-Y
                           (* dir (+ dy protrusion-dy))))
                     (th (ly:staff-symbol-line-thickness grob))
                     (stil (ly:stem::print grob)))

                (ly:stencil-add
                 stil
                 (make-line-stencil th x1 y1 x2 y2))))))
   #})

slashI = {
  \slash 50 0.6 1.0
}

slashII = {
  \slash 45 0.5 0.8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
globalSechs = {
  \override Staff.TimeSignature #'stencil = ##f
  \key a \major
  \time 8/4
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsSechs = \relative {
  \override Staff.TimeSignature #'stencil = ##f
  \key a \major
  \time 8/4
  \clef treble
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lustig"
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  \acciaccatura {\slashI fis''16 gis} <d e a>2-- e4-.
  \times 2/3 {cis8( dis cis} h4-.)
  \times 2/3 {h8( cis h} a4-.)
  \acciaccatura dis,8 e4-.
  \acciaccatura {\slashII fis'16 gis} <cis, a'>4-.
  <a h e>-. \times 2/3 {cis8( d! cis} h4-.)
  \times 2/3 {a8( h gis} e4-.)\acciaccatura h'8 a4-.
  <h' cis e a>-^
  <<
    {
      a2 e4 \times 2/3 {cis8( dis cis} h4)
      \times 2/3 {h8( cis h} <d,! a'>4)
    }
    \\
    {
      d' cis h8 gis a4 fis gis s
    }
  >>
  \acciaccatura dis8 <cis e>4
  <cis' a'><a h e>
  <<
    {
      \times 2/3 {cis8( d! cis} <fis, h>4-.)
      \times 2/3 {a8( h gis} <d e>4-.)
      \acciaccatura h'8 a4 a\rest
      \stemDown
      cis-.
      \stemUp
      gis_.
    }
    \\
    {
      gis s e s
      \stemUp
      \shape #'(
                 ((-1 . -2) (-.5 . -5) (-1.5 . 1) (.5 . 0))
                 ((0 . 0) (0 . -1) (0 . -2) (-.5 . -2.5))
                 ) Slur
      cis4^(
      \once\showStaffSwitch
      \change Staff = LH
      \stemDown
      h
      \stemUp
      a^.) h-.
      \change Staff = RH
    }
  >>
  \times 2/3 {fis'8( gis fis} e4-.) h'
  \times 2/3 {dis,8( e dis} cis4)<dis' gis h dis>->(
  <e fis h e>-^) cis-.\times 2/3 {gis8( a gis}
  e4-.) fis-. h-. r2
  <<
    {
      \makeOctaves #1 {
        a'2 e4 \times 2/3 {cis8 dis cis} h4
        \times 2/3 {h8 cis h} a4 e
      }
    }
    \\
    {
      \shape #'((-.5 . 1) (1 . 4) (0 . 5) (0 . 1)) Slur
      \override NoteColumn.force-hshift = #1.3
      e''8^( d e cis h gis a4
      \override NoteColumn.force-hshift = #1.5
      a8 fis
      \override NoteColumn.force-hshift = #1.3
      gis4 e8 d
      \override NoteColumn.force-hshift = #1.5
      d cis)
    }
  >>
  <<
    {
      a'4 <h, e>
    }
    \\
    {
      \revert NoteColumn.force-hshift
      <cis a'>8 a~ a4
    }
  >>
  \times 2/3 {cis8( d! cis} h4-.)
  \times 2/3 {a8( h gis} e4-.)\acciaccatura h'8 a4-. r
  \bar "||"
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark \markup {
    \fontsize #-1
    \concat {
      \smaller \note #"4." #1
      \smaller " = "
      \smaller \note #"8" #1
    }
  }
  <cis a'>16-. q8-. <h gis'>16 r8 <gis' e'>--
  r16 <fis d'>8-- q16( <e cis'>8-.) <d h'>-.
  <cis a'>16-. q8-. <h gis'>16~ q8 <a fis'>-. <gis e'>-. r r4
  <cis a'>16-. q8-. <h gis'>16 r8 <gis' e'>--
  r16 <fis d'>8-- q16( <e cis'>8-.) <d h'>-.
  <cis a'>-- q16-. <h gis'>16~ q8 <d h'>-. <cis a'>-. r r4
  <a cis a'>8.( <e cis' e>16) r4 r16
  \acciaccatura fis'8 <fis d'>8.---><e cis'>8-. <d h'>-.
  <a cis a'>8.( <e cis' e>16) r4 r16
  \acciaccatura fis'8 <fis d'>8.---><e cis'>8-. <d h'>-.
  <a cis a'>8.( <e cis' e>16) r4 r16
  <cis' a'>8-- q16( <d h'>8)-. <h gis'>-.
  <a cis a'>8.( <e cis' e>16) r4 r16
  \acciaccatura fis'8 <fis d'>8.---><e cis'>8-. <d h'>-.
  <a cis a'>8.( <e cis' e>16) r4 r16
  \acciaccatura fis'8 <fis d'>8.---><e cis'>8-. <d h'>-.
  <e cis'>8-. <cis a'>16( <d h'>~ q8)<h gis'><cis a'>-. r r4
  \break
  \bar "||"
  \time 8/4
  \override Score.RehearsalMark.extra-offset = #'(4 . -0.2)
  \mark "A tempo"
  \override Fingering.staff-padding = #'()
  e'8[-\markup {\italic legato} a,
  d
  -\tweak X-offset #-1
  -\tweak Y-offset #4.5 
  -5 
  cis] a[ e h'-5 a]
  fis-2 gis a h cis d
  \tuplet 3/2 4 {
    e8 h a cis a e
    \override TupletNumber #'transparent = ##t
    h' e, d a' d, h cis d-1 e fis gis a
    h cis
    \ottava #1
    \set Staff.ottavation = #"8"
    d e fis gis a d, gis fis e h cis d-1 e fis gis a h cis d
    e a, d-5 cis a e h'-5 a gis fis e d-3
    \ottava #0
    cis h a-4 e h gis'-3 a-1 h cis
    \ottava #1
    \set Staff.ottavation = #"8"
    d e fis gis a e fis gis a h a e a e d
    \ottava #0
    a e' d a e d' a e d-2 a' e-3 cis-2 d e fis gis a h cis
    \ottava #1
    \set Staff.ottavation = #"8"
    d e fis gis a e a h d, cis-2 a' fis h, cis-3 e
    \ottava #0
    h a cis e, a h d, fis a gis e
  }
  a8-. r <cis,, e a>2\fermata r1.
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksSechs = \relative {
  \override Staff.TimeSignature #'stencil = ##f
  \key a \major
  \time 8/4
  \clef bass
  %\set Staff.printKeyCancellation = ##f
  \grace {s8}
  a,4-. e'-. h'-. cis-. dis( e)-. a,-. e-.
  a,-. e'-. h'-.
  \acciaccatura d,,8 d'4-. cis-. h-. a-. a,-^
  a'4 e' h' cis dis( e) a, e a, e' h'
  \acciaccatura d,,8 \makeOctaves #1 {d4 cis h a} r
  e''2 <dis h'>4-. <cis h'>-. <h h'>-.
  \times 2/3 {dis8( e dis} cis4) h->(
  e,-^)<a' e'>-.<e h'>-.<gis cis>-.<h dis>-.
  <<
    {
      e
    }
    \\
    {
      <a, e'>8-. gis-.
    }
  >>
  dis( e) cis-. h-.
  \makeOctaves #-1 {a4_( e' h' cis dis e a, e)}
  a,_(-. e'-. h')-. \acciaccatura d,,8 d'4-. cis-. h-. a-.
  \acciaccatura {\slashII h16 e,} a,4-.
  \bar "||"
  \time 4/4
  \set Staff.pedalSustainStyle = #'mixed
  \repeat unfold 10 {
    a'8\sustainOn <h' cis e>16 fis,~\sustainOff fis8 e--
    r8. <fis' a>16( <gis h>8-.) <e d'>-.
  }
  \bar "||"
  \repeat unfold 6 {
    a,4-. e'-. h'-.
    <<
      {
        d2( dis4 e)
      }
      \\
      {
        a,4( h cis h)
      }
    >>
    r
  }
  <a, e' h'>2\fermata r1.
  \bar "|."
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicSechs = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  \override Hairpin.extra-offset = #'(0 . -0.5)
  s1*4\p s\f s1\pp\< s\! s4 s1\pp s4 s2\< s1*2\ff
  s1\dim s2. s4\ppp s1*4\mf s1\sf s1\sf s1\sf s1*3\sf
  s1*9 s2.
  \override Hairpin.extra-offset = #'(0 . 0.5)
  s4\> s1 s2. s4\! s1*2
}