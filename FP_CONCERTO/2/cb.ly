\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

cbMusic = \relative e, {
  \base
  \clef bass
  \override MultiMeasureRest #'expand-limit = #3
  R1*13 d1\f~( d2 a d1~ d2 a h1 g a~ a~ a) e'4( d b h es,1\sp fis2) f~(
  f!2. h4 b2 cis~ cis2.) f4( b e,2.) f'( es4 \times 2/3 {d2 cis g'} a1~ a2 h!)
  R1*50 a,,1\sf->(~ a2 cis,!) R1*14
  ais'4_( h dis g gis ais h d)
  r2 e,,~( e1~ e2 d) r fis~( fis4 e'2.~ e2 h fis'2. e4)
}