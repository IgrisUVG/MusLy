\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

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
top = \change Staff = "RH"
bot = \change Staff = "LH"
xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

%%%%%%%%%%%%%%%%%%%%%% EINS %%%%%%%%%%%%%%%%%%%%%%
rechtsEins = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Moderato"
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  <c' e'>8<des des'><e c'><d b'><ces as'><b g'><d f> es
  e! d c des16 es f8. e16 c4~ c4. e16 fis a8. g16 e4~
  e4. f16 g as8. ges16 f4~
  \time 3/4
  f8 g!16 a! h8. f16 g8 as16 b
  \time 4/4
  c8. ges16 h8 cis16 dis e d c b a g es f ges4. g16 a
  <<
    {
      b8. as16 ges4 a!8 b16 c des8. b16 c4 d8 e16 fis
      g8. b,16 es4 f8 d4. s4 c h b c4 h8 cis16 d e8. a,16 cis4~
      cis d8 es16 f! ges8. des16 f4 e2 des8 c16 b as4~
      <es as>8<c ges'>16<des f> s4 f gis8. a16
      b4 c d8 es16 f ges8. c,16 des4 c16 b <f a><e b'>
    }
    \\
    {
      r8 es des d16 e f8. e16 as4 g8 a16 h c8. fis,16
      g4 as8 h16 d c8. f,16 b4 <g des'> f8 ges16 as a8. f16 g4
      f2 g4 gis fis8 g!16 a b8. as16 ges4 a g8 a16 h a8. g16 f2
      s4 \stemUp es8.<c~ e>16 \stemDown c8. d16 e8 f
      es f16 g as8. d,16 g8. as16 b8 as ges f g\noBeam s
    }
  >>
  <d a'>8<des as'>16<d ges>
  <<
    {
      f es des c~ c8 d!16 e f8. es16
    }
    \\
    {
      c8 b as g as f
    }
  >>
  <e! c'>4 r
  \clef bass
  r2 gis8 a g8. f16 e4 as8 g b4 a ges8 as
  <<
    {
      h c s4 fis,4 h8 ais cis4 c
    }
    \\
    {
      f,4 <es a>8.<d~ g>16 d8 e fis4 gis8 ais4 g8
    }
  >>
  <ges ges'><as f'>
  \clef treble
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  <h h'><cis ais'><d e'><e cis'><f c'><es b'>
  <<
    {
      as g f es f g es8. d16 c4 <a fis'>8<gis e'> gis' fis4.
    }
    \\
    {
      des4~ des c b a8 g s4 h cis8 h
    }
  >>
  <d b'>8<es ces'>
  <c! as'>8.<b ges'>16<as f'>4<d a'!>8<c gis'><e h'><es b'^~>
  <d b'>4
  <<
    {
      \override TupletNumber #'transparent = ##t
      \times 2/3 {d'8 c h} es16 c f es
    }
    \\
    {
      <f, g>2
    }
  >>
  <as des>16<g c><as h><es as>
  <<
    {
      ges16 as8.
    }
    \\
    {
      des,8 es
    }
  >>
  <f h><e c'>~ q2
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%% ZWEI %%%%%%%%%%%%%%%%%%%%%%
rechtsZwei = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \key f \minor
  \set Timing.beamExceptions = #'()
  <ces' g'>4<b e><as f'>\fermata
  \bar "||"
  <<
    {
      r16 g'(\( b des ges4.) f8~ f4. es8\) es4~(
      es2 des4) r16 g,( as b des4. c8) b2.( as2)
    }
    \\
    {
      s4 f8 b as g! des' c as4 b g16 as b8 as4. g8 f2.
      es8 des c16 b c f es f8.~ f4. es8
    }
  >>
  r4
  \bar "||"
  \break
  \override Score.RehearsalMark.extra-offset = #'(1.5 . 2)
  \mark "Allegro"
  \clef bass
  \makeOctaves #1 {
    r8 b4 a8 ges f es des c2 h8 d f as4 g8
    \clef treble
    r f as h d4 c8
  }
  r r2 R2. r4.
  <<
    {
      ges'\startTrillSpan
      ges32\stopTrillSpan as ges as es as ges as
      es b' as b e, b' as b e, c' h c f, c' b c
      f, c' h c ges des' b des ges, des' h des g, c b c
      as8 s
    }
    \\
    {
      s4. ges8 es es e e f f ges ges g
      as32 es' des es ces g' ges es
    }
  >>
  des ces b as g8~\noBeam
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #0.65 \teeny \natural
  }
  #(define afterGraceFraction (cons 11 12))
  \afterGrace g2\startTrillSpan {
    \omit Beam
    \omit Stem
    f16 g\stopTrillSpan
    \undo \omit Beam
    \undo \omit Stem
  }
  a4 a a a e'32( d cis b a f g es d4) d d d
  a'32 g fis e d des c as g4
  \clef bass
  <<
    {
      g b2
    }
    \\
    {
      es,4~ es f
    }
  >>
  r4
  \clef treble
  ges'16 as b des, es4 f16 g a c,
  <<
    {
      d4 es~ es16 f g b, c4
    }
    \\
    {
      b16 c des f, g4 b8 g~ g4
    }
  >>
  <as des>16<b es><c f> as
  <<
    {
      b8 des
    }
    \\
    {
      ges,4
    }
  >>
  <as es'>16<b f'><c g'><es, b'><f c'>\noBeam
  \shape #'((0 . -1.5) (1 . 1) (0 . 1) (0 . -5)) Slur
  d''32[( c] a g f d \bot c[ a g f] d c a g)
  \top <as' f'>16\noBeam
  \shape #'((0 . -1.5) (-2.5 . 1) (0 . 0) (3 . -.5)) Slur
  c'32[( b] as f es c \bot b as f es c[ b as f]
  b, c g' e b'[ des c e]
  g f g b \top des[ e g b] c d g, e' <b g'>8)\laissezVibrer
  <<
    {
      g'16 fes f e
    }
    \\
    {
      b16 as g8
    }
  >>
  <as f'>2 r4
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%% DREI %%%%%%%%%%%%%%%%%%%%%%
rechtsDrei = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \time 5/4
  \key d \major
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \partial 1
  cis''4.( h8 a gis e4 fis8. his,16 cis2)\fermata
  dis4. fis8 e2. cis'4( h a4. gis8 fis h a h g4~
  g4 fis)\fermata a4. d,8 g fis e8. d16 d2\fermata
  \bar "!"
  %\noBreak
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegretto"
  <<
    {
      e8 fis gis4~ gis8 h cis,4 dis8 e fis4. a8
      d,4 cis16 d e g fis a c8~ c4. h8 g2 f

    }
    \\
    {
      cis8 h e dis h4 a h ais a h8 a g4 a8 e' es d c4
      h b a gis
    }
  >>
  \clef bass
  <<
    {
      e'8 d cis4. g'8 fis4 d8 cis h4~
      h8 fis' e4 a, d g, cis fis, gis gis8 a a4~ a2 r2.
    }
    \\
    {
      fis4 cis'8 h \once\showStaffSwitch \bot
      \stemUp
      \once \override NoteColumn.force-hshift = #-.2
      e,4 \stemDown
      \once\showStaffSwitch \top fis8 a d,4 h'8 a
      g4. gis8 fis4 r8 fis e4 r8 e d4 e2 cis4~ cis2 r2.
    }
  >>
  \bar "||"
  \clef treble
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Vivo dolce"
  \time 4/4
  \key g \major
  g'''8 e16( fis g8-.) e-. fis\noBeam h16( a g fis e d
  f8) d16( e f8-.) d-. e\noBeam c'16( h a g fis e
  d8) h16( cis d8-.) h-. c\noBeam d'16( c h a g fis
  a8) f16( g a8) fis gis2
  h8 g16( a h8-.) g-. a\noBeam h,16( cis dis e fis g
  a8) f16( g a8-.) f-. g\noBeam a,16( h cis d e fis
  g8)\noBeam c16( b as g f es f8)\noBeam b16( as g f es d
  es8) c16( d es8-.) c-. d\noBeam g16( f es d c b
  c8) a16( h! c8-.) a-. h\noBeam e16 d cis h a gis
  fis' gis, cis a gis' fis e dis e g, a h fis' e d cis
  d fis, gis a e' fis, gis a d fis, gis a cis fis, gis a
  h gis e es d a' d g, fis e dis c' h a gis8
  f'16[ e d cis8.] a16[ gis fis eis8.] dis'16 <cis fis> h ais
  gis4 fis8 dis16( eis fis8-.) dis-. eis\noBeam ais16( gis
  fis eis dis cis c8) a16( h c8-.) a-. h\noBeam e16( d
  c) b'( a g fis8) d16( e fis8-.) d-. e4~
  e c16( d e8)[ c] d4~ d8[ h16( cis] d8[) e]-.
  <<
    {
      \stemDown
      \override Slur.positions = #'(1 . 1)
      a'16[( g fis e]
      \stemUp
      dis[ h ais gis] g[ f d dis] e4~ e2)
    }
    \\
    {
      s8 s2 s8 c16 h8.~ h2
    }
  >>
  r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%% VIER %%%%%%%%%%%%%%%%%%%%%%
rechtsVier = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \time 5/4
  \key d \major
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \makeOctaves #1 {
    g'4. f8 e d c h c b' a4. g8 fis e dis cis dis c'
    h4. a8 gis fis eis dis eis d' cis4. h8 ais gis fisis eis fisis e'
    dis ais gis cis h2.~ h8 ais4
  }
  <gis cis dis gis>8~ q2 r4
  \tweak #'duration-log #1 h,16\laissezVibrer dis fis gis cis, ais' cis a
  cis e dis h fis a \xLV #4 \tweak #'duration-log #1 a'8\laissezVibrer e16 dis cis h
  e, gis fis dis d f g cis, c ais' \xLV #4 \tweak #'duration-log #1 ais'8^\laissezVibrer
  gis,16 ais cis fis
  <<
    {
      h e, dis h
    }
    \\
    {
      \hide Flag
      h'8 s16 h,
      \undo \hide Flag
    }
  >>
  fis cis dis e gis a \xLV #4 \tweak #'duration-log #1 a'8\laissezVibrer
  dis,16 cis dis eis gis his, dis ais gis fis gis h
  \override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {cis gisis ais} \xLV #4 \tweak #'duration-log #1 ais'8\laissezVibrer
  a,16 g d fis a h gis e a cis h fis gis a \xLV #2 \tweak #'duration-log #1 a'8\laissezVibrer
  h,16 d, fis cis' b g d' c a b g f \times 2/3 {e g a}
  \tweak #'duration-log #1 a'8\laissezVibrer
  \ottava #1
  \set Staff.ottavation = #"8"
  <es' b'>16<des as'><c f><b d>
  <<
    {
      gis cis d c
    }
    \\
    {
      e, a f8
    }
  >>
  \ottava #0
  <<
    {
      a fis cis16 ais gis8 fis16 eis dis cis
    }
    \\
    {
      e'16 d cis h gis fis dis8 gis, ais
    }
  >>
  \clef bass
  <<
    {
      h g fis16 d e8. d16[ e8] d16 fis gis8_.
    }
    \\
    {
      fis16 e! d! cis h8 a16 ais h8 a16 gis g8 a^.
    }
  >>
  \repeat unfold 5 {<gis fis'>-. <a gis'>-.}
  \clef treble
  \repeat unfold 4 {<gis' fis'>-. <a gis'>-.}
  \repeat unfold 3 {<gis fis'>-. <ais gis'>-.}
  <gis fis'>-. <ais gis'>~ q2 q\fermata
  \bar "|."
}