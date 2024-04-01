\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "noteHeads.ly"

vleMusic = \relative {
  \clef alto
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 g'4( f es)
  \time 4/4 R1*8
  \repeat unfold 6 {
    \repeat tremolo 32 {d32~}
  }
  \repeat tremolo 32 {d32}
}