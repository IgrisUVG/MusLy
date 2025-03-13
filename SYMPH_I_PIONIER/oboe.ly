\version "2.19.15"

\language "deutsch"

oboeMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  c''2\( as4 des c1( des8 c) b4 as8\) g ges( f~ f1~
  f16) es c8~( c4~   
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  c32 des d es e f fis g as g fis f e es d des
  c2.) g'4( b g8 es' d2 dis h) gis g~ g1 f4 es2.~ es2 r
  \time 3/4
  R2.*15
  r4 b''2( c4 a g8f-.) des'4( es2~ es4) r2 r es4~ es2 r4
}

oboeMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}

oboeMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}