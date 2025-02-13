\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "makeOctaves.ly"
\include "base.ly"

trombonMusic = \relative e {
  \base
  \clef bass
  \override MultiMeasureRest.expand-limit = #3
  R1*23 b1\mp~ b! R1*58  <f f'>1->~(<f! f'!>2<e! e'!>)
  R1*19 <fis' g>1
}