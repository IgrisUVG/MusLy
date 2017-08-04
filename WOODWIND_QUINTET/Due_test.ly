\version "2.19.15"
\language "deutsch"
\relative {
  \time 6/4
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  e''2.( c4 h e, es1) r2 R1. a'4( f des8 c as4 es'') r8 r16 f,,(
  \times 2/3 {b8 c des} es8 f) r4 des( des, e f1) r8 a''~ a as
}