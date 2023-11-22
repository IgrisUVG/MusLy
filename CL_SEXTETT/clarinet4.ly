\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetFierMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  d''2\f( g, c4 h a g~\> g fis2 a4 g1 g a)
  r2\p cis( h1 cis)\breathe
  \bar "||"
  \repeat unfold 2 {
  	f2\f( e) d1( c~ c2 b) a1~ a4 e'( d c d2 cis d1)\breathe
  }
  \bar "||"
  g,4\f-.\( h-. c( h) a-. f-. g2--\)
  e8( a g h c a g\> f a f g f) g4\p( a~
  a h8 a g fis e d) g4( d~ d8 c d4) g fis e f
  g8( f e f g4. h8 c1) e8( f e d c d c h a4) g2 a4~
  a h f e~ e c' g f~ f d' a g~( g8 b a g a e f g
  f a g f g f4 e8) d4.( e8 a4 f g8 e4 d8) d4 r R1*6
  r2 e4\f-.\( g-. a( g) f-. d-. e2--\) c8( f e gis
  a f e d f\> d e d cis2) h\p cis1
  a''8( cis h a h fis gis a h d cis h cis gis a h a4) r2. R1
  fis,4\f-._\( cis'-. gis2-- fis4-. gis-. fis( eis)\)
  fis4-.( gis-. ais8 h ais gis\> fis gis eis4) fis8\p( ais gis fis
  gis dis eis fis eis gis fis eis fis f4 es8) es4 r
  c8( es d c d a b c d f es d es b c d es g f es f c d es)
  f( a g f g d es f g b a g a es f g a c b a b f g a)
  b4\f-.\( f'-. c2-- b4-. c-. b( a)\) b4-.( c-. d8 es d\> c
  b c a4) b8\p( d c b c g a b a c b a b a4 g8) f4.( g8
  c4 a b8 g4 f8) f4 r h!4\f-.\( fis'-. cis2-- h4-. cis-.
  h( ais)\) h-.( cis-. d8 e d cis\> h cis a! h)\p
  a4\f-.\( cis-. d( cis) h-. g-. a2--\)
  fis8( h a cis d\> h a g h g a fis) g4\p( a~
  a h8 a g fis e d) g4( d~ d8 c d4) g fis e f
  g8( f e f g4. h8 c1) e8( f e d c d c h a4) g g2
  \bar "|."
}
