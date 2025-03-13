\version "2.19.15"

\language "deutsch"

vniOneMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  es''16( c b as f es as, c b es f as des es f b c es f g as2.)
  b,,,16 des es f g b des es f ges a c
  \ottava #1
  \set Staff.ottavation = #"8"
  es ges a b b8 d,
  \ottava #0
  f, as, f des4. b'32( as g es c8~ c2.~ c) b4(
  b8 d f b d f as a h2 h--) h-- h-- h-- b--
  as16( g f es c b as f es2~ es)
  % solo
  es2:16~
  \time 3/4
  es 2.:16~ es4:16 r2 R2.*6
  c'2.( b4 as g f2.~ f2) as4( f'2~ f8 des b2 f4 es b' g'8 f
  es4.) des8( c b a2~ a8 c f4. des8 b' as b, as f4) r8 as,~(
  as2 c'4~ c2) r4
}

vniOneMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  r1*3
}

vniOneMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}