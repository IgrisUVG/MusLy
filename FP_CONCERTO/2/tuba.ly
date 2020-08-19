\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

tubaMusic = \relative e, {
  \base
  \override MultiMeasureRest.expand-limit = #3
  \clef bass
  R1*83  a,1->~( a2 cis,)
}