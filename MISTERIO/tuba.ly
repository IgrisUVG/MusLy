\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

tubaMusic = \relative {
  %\clef "bass_8"
  \clef bass
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
  \time 4/4 R1*34 r2 r8. ges16 ges8. des16 des8. b16 b2 r4
}