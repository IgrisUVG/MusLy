\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetBassMusic = \relative {
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
  \time 4/4 R1*29
  f,4.( b8 f'4 as8 es f4 es8 b des2 ges as b as) R1
  r2 es4.( as8 es'4 ges8 des es4 des8 as c2) r
  b,4._( es8 b'4 des8 as b4 as8 es ges2)
}