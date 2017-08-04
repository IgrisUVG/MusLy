\version "2.18.0"
\language "deutsch"
vniOneMusic = \relative {
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
}