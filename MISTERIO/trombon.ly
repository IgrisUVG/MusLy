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
  \time 4/4 R1*34 r8. c'16 c8. f,16 f4 r R1*53
  \key g \major
  h4 a8( g) g4 g8( fis) g4 g d2 h'4 a8( g) g4 g a2 g2 h4 a8( g) g4 g a2 h2
}