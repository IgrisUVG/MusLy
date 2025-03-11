\version "2.19.15"

\language "deutsch"

cornoTwoMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  as2( f4 as c b as2) b8 as g ges f e es d~ d2 f
}
