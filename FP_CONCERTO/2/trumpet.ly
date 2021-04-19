\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

trumpetMusic = \relative e'' {
  \base
  \override MultiMeasureRest.expand-limit = #3
  R1*27 h!1->\>~ h\! R1*54
  <<
    {
      <e, c'>1->~( q2 <es h'!>)
    }
    \\
    {
      h!1~( h!2 b)
    }
  >>
  R1*19 <d e fis>1
}