\version "2.18.0"
\language "deutsch"
\include "noteHeads.ly"
vniTwoMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4
  <<
    {
      b'1~
      \time 3/4
      b2.
    }
    \\
    {
      s1 as2.
    }
  >>
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4
  <<
    {
      b1~
      \time 3/4
      b2.
    }
    \\
    {
      s1 as2.
    }
  >>
  \time 5/4 r1 r4
  \time 3/4 b4\( <f' b>(<es as>)\)
  \time 4/4 R1*7 r2
  \repeat tremolo 16 {g,32~}
  \repeat unfold 6 {
    \repeat tremolo 32 {g32~}
  }
  \repeat tremolo 32 {g32}
}