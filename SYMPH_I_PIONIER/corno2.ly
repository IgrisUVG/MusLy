\version "2.19.15"

\language "deutsch"

cornoTwoMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  as2( f4 as c b as2) b8 as g ges f e es d~ d2 f
  es2-- es--~ es2. es4( f1 fis2 e) e1~ e2 f~ f as~ as r
  \time 3/4
  R2.*20
  \clef bass
  c,2( b4 as f es~ es2 g4
  \time 4/4
  des'2) r R1*2
  \clef treble
  r2. f'4~( f2 es4 des c b2.)
  des4_( g2. es4 c b as~ as2 g~ g4) r2. R1 r4 ces2.~( ces4 c2.)
  \bar "|."
}

cornoTwoMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \cadenzaOn
  e1~ e  s4. s16
  \cadenzaOff
}

cornoTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  R2.*10
  %\clef bass
  f2.( fes) R2.*2 b2.~ b~ b~ b4.~ b4( as8)
}