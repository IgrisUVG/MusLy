\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetFunfMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*3 r2 fis'\p( a1~ a) h2_( d,4 cis h1 cis)\breathe
  \bar "||"
  \repeat unfold 2 {
  	a'1 c2( b4 a g1) f( g4 f2 e4~ e d2 e4~ e f g2 fis1)\breathe
  }
  \bar "||"
  R1*7
  c4\f-.\( g'-. d2-- c4-. d-. c( h)\) c-.( d-. e8 f e d\>
  c d h4) c\p d~ d c2 h4~ h a2 c4~ c h2 d4~( d8 e d h cis e d a
  b2) a'~( a8 b a g f g f\< e d e) a2\f--\( e'4-.
  h2-- a4-. h-. a( gis)\) a-.( h-. cis8 d cis h a\> h gis4)
  a8\p( cis h a h fis gis a gis h a gis a gis4 fis8)
  e4.( fis8 h4 gis) a8( fis4 gis8 a h a f g! h a e f2)
  e'~( e8 f e d c d c h a4 gis8 fis e2) a
  dis'8( fis e dis e h cis d cis e d cis d a h cis
  h d cis h cis gis a h)
  a4\f-.\( e'-. h2-- a4-. h-. a( gis)\)
  a-.( h-. cis8 d cis h\> a h gis4) a8\p( cis h a 
  h fis gis ais gis h ais gis ais gis4 fis8) fis4 r
  h,,8(dis cis h cis gis ais h cis eis dis cis es b c d)
  es( g f es f c d es f a g f g d es f )
  g( b a g a es f g a c b a b f g a)
  b( d c b c g a b c es d c d a b c b4) r2. R1*2
  r2 f4\f-._\( c'-. g2-- f4-. g-. f( e)\)
  f-.( g-. a8 b a g f g e4 f) r2. R1*10
  c4\f-.\( g'-. d2-- c4-. d-. c( h)\)
  c-.( d-. e8 f e d c d h4 c2)
  \bar "|."
}
