\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Tango"
  %meter = "Tango"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #30
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

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
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%% INCLUDE %%%%%%%%%


%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key f \minor
  %\set Score.markFormatter = #format-mark-box-letters
  \time 2/4
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  r16. c''32(\noBeam d e f g
  \once\override Beam.positions = #'(-1.5 . 0)
  as b h c des d es e
  <d, as' c f>8->) r16. <c, d f as c>32( <ces es f as ces>4)
  r16 <b ges' b>( <c as' c> <des a' des>
  <c as' c>) <g des' g>( <as d as'><b e b'>
  <as d as'>8) r r16 <f' d' f>( <g e' g> <as f' as>
  <g e' g>8) r r16 <e cis' e>( <f d' f> <g e' g>
  <f d' f>8) r <f' as c f>-> r16. c,32~
  \bar "||"
  %\break
  \mark \markup { \box \bold 1 }
  <c d as'>8.
  %\once \override Slur.positions = #'(5 . 5)
  \shape #'((0 . 3.2) (.5 . 3.5) (.3 . 2.5) (-.2 . .7)) Slur
  <as d g>16^(
  <<
    {
      fis'8 g
    }
    \\
    {
      <b, des>4
    }
  >>
  <b c as'>8.)
  \shape #'((0 . 1.2) (0 . 2.5) (0 . 1.5) (-1.2 . -2.2)) Slur
  e16^(
  <<
    {
      f8 as
    }
    \\
    {
      b,4
    }
  >>
  <as c g'>8. <as c ges'>16 <as d f>8) r
  r16 <c ges' c>( <d as' d> <es b' es>
  <f h f'> <g des' g> < as d as'> <b e b'>
  <des g des'>8)-^ r16 <c f as c>( <h es  as h>8 <c d as' c>
  <b! des! g b!>) r16 <as c f as>( <g des' e g>8 <as c d as'>
  <ges b e ges>)-^ r16
  <<
    {
      s16
      \shape #'((0 . 1) (0 . 2.5) (0 . 1.5) (-.2 . .2)) Slur
      as4( <b des>8)
    }
    \\
    {
      \voiceThree
      c,16_(
      \once \override NoteColumn.force-hshift = #.2
      des8 h
      \once \override NoteColumn.force-hshift = #.2
      c)-.
    }
  >>
  r r8. c16~ 
  \mark \markup { \box \bold 2 }
  <c d as'>8.
  %\once \override Slur.positions = #'(5 . 5)
  \shape #'((0 . 3.2) (.5 . 3.5) (.3 . 2.5) (-.2 . .7)) Slur
  <as d g>16^(
  <<
    {
      fis'8 g
    }
    \\
    {
      <b, des>4
    }
  >>
  <b c as'>8.)
  \shape #'((0 . 1.2) (0 . 2.5) (0 . 1.5) (-1.2 . -2.2)) Slur
  e16^(
  <<
    {
      f8 as
    }
    \\
    {
      b,4
    }
  >>
  <as c g'>8. <as c ges'>16 <as d f>8) r
  r <d' as' d>( <c ges' c> <b e b'>
  <a des f a>8. <as des f as>16 <g des' f g>8) <b des f b>(
  <ges b des ges>8. <f b des f>16 <e b' c e>8) <as c e as>(
  <f as d f>16.)[ c'32(] d e f g
  \once\override Beam.positions = #'(-1.5 . 0)
  as b h c des d es e
  <d, as' c f>8->) r16. <c, d f as c>32( <ces es f as ces>4)
  r16 <b ges' b>( <c as' c> <des a' des>
  <c as' c>) <g des' g>( <as d as'><b e b'>
  <as d as'>8) r r16 <f' d' f>( <g e' g> <as f' as>
  <g e' g>8) r r16 <e cis' e>( <f d' f> <g e' g>
  <f d' f>8) r <f' as c f>->
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key f \minor
  \time 2/4
  %\set Staff.printKeyCancellation = ##f
  R2 <f,, f'>8_> r16. <c' c'>32( <des! des'!>8) g(
  c,)-. r16. g'32(
  %\stemDown
  <c e b'>8) c,(
  %\stemUp
  <f, f'>)-. r16. c''32(
  %\stemDown
  <f as d>8) c,(
  %\stemUp
  <g g'>)-. r16. c'32_(
  %\stemNeutral
  <g' b des e>8) c,,_(
  <f, f'>)-. r
  \clef treble
  <f''' as c d>-> r
  \clef bass
  \bar "||"
  <f,, f'>8 r16
  \stemUp
  <c' f>(
  \stemNeutral
  <des f>8) f,(
  c) r16
  \once \override Slur.positions = #'(0 . -3)
  g'_( <e' g des'>8) c
  <f, c' f>8. q16 q8 c(
  <f, f'>)-.\noBeam
  \makeOctaves #1 {
    e'16( es d des c ces
  }
  <b f' b>8)-^ r16 <f' c' f>( <des' f>8) f,(
  <b, b'>) r16 f'( <des' b'>8) f,(
  <c c'>) r16 c'^\( des8 h16 <g, g'>(
  <c c'>8)\) r16 <h h'> <as as'>8-. <g g'>-.
  <f f'>8 r16
  \stemUp
  <c'' f>(
  \stemNeutral
  <des f>8) f,(
  c)-. r16
  \once \override Slur.positions = #'(0 . -3)
  g'_( <e' g des'>8) c
  <f, c' f>8. q16 q8 <c g'>(
  <f, f'>)-.\noBeam <c''' es>( <b e> <c as'>)
  <b,, b'> r16 g'( <g' b des e>8) <f,, f'>
  <ges ges'>8. des''16_( <as' b des fes>8) c,,_(
  <f, f'>8.) <as as'>16( <g g'>8 <ges ges'>
  <f f'>8)_> r16. <c' c'>32( <des! des'!>8) g(
  c,)-. r16. g'32(
  %\stemDown
  <c e b'>8) c,(
  %\stemUp
  <f, f'>)-. r16. c''32(
  %\stemDown
  <f as d>8) c,(
  %\stemUp
  <g g'>)-. r16. c'32_(
  %\stemNeutral
  <g' b des e>8) c,,_(
  <f, f'>)-. r
  \clef treble
  <f''' as c d>-> r
  \clef bass
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##t
  s16. s32\< s4. s2*4\sf s4. s16. s32\p s2*3 s2\sf\< s2*3\ff
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}