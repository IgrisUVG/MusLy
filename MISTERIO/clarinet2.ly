\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetDreiMusic = \relative {
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
  \time 4/4 R1*13 c''1( h) r2 h( c'1) R1*16
  f,,,4.( b8 f'4 as8 es f4 es8 b des2)
  R1*2 \repeat unfold 4 {r2 ges, R1}
  R1*43
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetVierMusic = \relative {
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
  \time 4/4 R1*13 g'1~ g r2 e_( f'1) R1*16
  r2 c,4.( g'8 c4 es8 b c4 b8 f as2) r R1 \repeat unfold 4 {r2 f, R1}
  R1*43
  \key g \major
}