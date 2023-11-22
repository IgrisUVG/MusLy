\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetEinsMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*4 h'1( d e~ e~ e2 d
  \bar "||"
  a'1) R1*7 e2( d4 c8 h a4) a8 a c2( d1)
  g,4( a8 c d2) e1( a h d)\breathe
  \bar "||"
  \break
  R1*3 
  r2 g,4-.\f\( d'-. a2-- g4-. a-. g( fis)\) g-.( a-.
  h8\> c h a g a f! g) f\p( a g f g d e f 
  e g f e f e4 d8) c4.( d8 g4 e f8 d4 c8) c( d c h
  c a h c d e d c d h c d e f e d e cis d e f\< g f e)
  d4\f-.\( a'-. e2-- d4-. e-. d( cis)\)
  d-.( e-. f8 g f e d\> e cis4 d) r\! R1*3
  e4\f-.\( h'-. fis2-- e4-. fis-. e( dis)\)
  e-.( fis-. gis8 a gis fis\> e fis d! e) d\p( f e d
  e h c d c e d c d c4 h8) a4.( h8 e4 c d8 h4 a8)
  a( cis h a h fis gis a h dis cis h cis gis a h
  cis e d! cis c a h cis d fis e d e h cis d)
  e4\f-.\( gis-. a( gis) fis-. d-. e2--\)
  cis8( fis e gis a fis e d fis\> d e d cis\p eis dis cis
  dis ais h cis h dis cis h cis h ais gis fis4) r
  %\pageBreak
  R1
  r2 b'4\f-.\( f'-. c2-- b4-. c-. b( a)\) b-.( c-.
  d8 es d c b c\> a4 b2.) c4\p a2. b4 g2. f4 d2 r R1*4
  r2 d4\f-.\( a'-. e2-- d4-. e-. d( cis)\) d-.( e-.
  fis8 g fis e\> d e cis4) d8\p( fis e d e h cis d
  cis e d cis d cis4 h8) a4 r2. R1*2
  r2 g'4\f-.\( d'-. a2-- g4-. a-. g( fis)\) g-.( a-.
  h8 c h a\> g a f! g) f\p( a g f g d e f 
  e g f e f e4 d8) c4.( d8 g4 e f8 d4 c8) c2
  \bar "|."
}
