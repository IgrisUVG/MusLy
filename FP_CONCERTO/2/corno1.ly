\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoOneMusic = \relative e' {
  \base
  \override MultiMeasureRest.expand-limit = #3
  r4\pp fis,( g a) r g( a h) r a( h cis) d1( h) R1*6  
  \clef bass
  e,1-\markup {\italic cresc}( g) a2\f( fis g a~ a) fis( g a) cis2.( d4 h2. d4 fis,2. a4 e1~ e) <g a>->~ q
  R1*4 es1-> R1*54
  \clef treble
  b''1->~( b!2 a)
  R1*16
  <d,, fis>1~ q~ q
}