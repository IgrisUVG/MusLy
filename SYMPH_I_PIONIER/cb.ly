\version "2.19.15"

\language "deutsch"

cbMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  des8->( g,) as->( es) c'4 des as es' f, c'
  des8( c b4-.) des8( c b4)  
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  b32( a b c d f es d es d c b as ges' f es des2)
  b8 as es' b as4 es'8 b <as es'>4. c8 es f b,4
  b1 h e,~ e2 g b as~ as r
  \time 3/4
  R2.*18 r2 r8 <as, es'>8~ q2.~ q2 r4
}
