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
  des'2)
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
}

cornoTwoMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}