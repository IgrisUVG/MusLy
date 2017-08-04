\version "2.18.0"
\language "deutsch"
fluteTwoMusic = \relative {
  %\override Staff.TimeSignature #'stencil = ##f
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 es''2( d4)
  \time 5/4 r1 r4
}