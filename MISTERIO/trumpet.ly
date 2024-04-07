\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetEinsMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r2. f''4->~
  \time 3/4 f2.
  \time 5/4 r1 r4
  \time 3/4 r2 f,4->
  \time 4/4 b2-> r R1*32 r8. b16 b8. es,16 es4 r R1*54
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetZweiMusic = \relative {
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
  \time 4/4 R1*33 r2 r8. f'16 f8. b,16 b4 r r2 R1*53
  \key g \major
}