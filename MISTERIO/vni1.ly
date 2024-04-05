\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniEinsMusic = \relative {
  \set Score.skipBars = ##t
  <<
    {
      \time 4/4 s1*2
      \time 3/4 s2.
      \time 4/4 f''1(
      \time 3/4 es2 d4)
      \time 4/4 s1*2
      \time 3/4 s2.
      \time 4/4 f1(
      \time 3/4 es2 d4)
      \time 5/4 s1 s4
    }
    \\
    {
      c1~ c~ c2.~ c1~ c2.~ c1~ c~ c2.~ c1~ c2.~ c1~ c4
    }
  >>
  \time 3/4 g'4( b c)
  \time 4/4 R1*5
  f,,2.(^"Solo" g4 a b c d g,1)~
  \repeat tremolo 32 {g32~^"Tutti"}
  \repeat unfold 5 {
    \repeat tremolo 32 {g32~}
  }
  \repeat tremolo 32 {g32}
  R1*21
  \key des \major
  as'8-> des4-- b16( f ges8) ges ges b as es es ges
  f16 ges f es f es des es f as ges f ges es f ges as f ges as b c des c
}