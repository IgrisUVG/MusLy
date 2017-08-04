\version "2.18.0"
\language "deutsch"
\include "base.ly"
clarinetTwoMusic = \relative e'' {
  \base
  \override MultiMeasureRest #'expand-limit = #3
  R1*13
  <<
    {
      fis1( g) fis( g) d( h) a(~ a~ a a~ a)
    }
    \\
    {
      a1( h) a( h) h( a) g~ g~ g d~ d
    }
  >>
  R1*59 \repeat unfold 4 {<h e>4<c! f!>}
}