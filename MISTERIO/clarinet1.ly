\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetEinsMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4 g''-- b-- c--~
  \time 3/4 c2.
  \time 5/4 r1 r4
  \time 3/4 b,4 f'( es)
  \time 4/4 c8( g' f b g c d,4->) c1_(
  f,2.)( g4 a b c d g,2 es')
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetZweiMusic = \relative {
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
}