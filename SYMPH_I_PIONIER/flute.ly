\version "2.19.15"

\language "deutsch"

fluteMusic = \relative {
  \key as \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \clef treble
  r4 as''2.(~ as4. c16 es   
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  as32 g f es des c b as g f es des c b as g-.)
  r4 as'4.\startTrillSpan( c,8\stopTrillSpan es f
  b2\startTrillSpan)
}
