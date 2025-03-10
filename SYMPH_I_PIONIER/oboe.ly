\version "2.19.15"

\language "deutsch"

oboeMusic = \relative {
  \key as \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \clef treble
  c''2\( as4 des c1( des8 c) b4 as8\) g ges( f~ f1~
  f16)
}
