\version "2.19.15"

\language "deutsch"

cornoOneMusic = \relative {
  \key as \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \clef treble
  es'2( des4 f es es as2) f8 es4 des c8 b4~ b2 as2
}
