\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

trombonMusic = \relative {
  \clef tenor
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
  \time 3/4 r2.
  \time 4/4 R1*34 r8. c'16 c8. f,16 f4 r R1*12
}