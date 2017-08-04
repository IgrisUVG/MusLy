\version "2.18.0"
\language "deutsch"
fluteOneMusic = \relative {
  %\override Staff.TimeSignature #'stencil = ##f
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4 g''-- c-- g'--~
  \time 3/4 g2.
  \time 5/4 r1 r4
}