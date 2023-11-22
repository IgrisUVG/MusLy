\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetSechsMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*2 a'2\f( d, g4\> fis e d~ d c2 e4\! d1)
  e2\p( a, e1 fis)\breathe
  \bar "||"
  \break
  d'2( c) b1( c) b( c b2 c a1 d)\breathe
  \break
  d2( c) b1( c) b( c b2 c a1 h)\breathe
  \bar "||"
  \break
  R1*7
  g4\f-.\( h-. c( h) a-. f-. g2--\)
  e8( a g h c a g f a f\> g f e4) r\! a1 e f
  a8( g f g a4. cis8 d1) f8( g f e d e d cis
  d\< cis4.) e4\f-.\( gis-. a( gis) fis-. d-.
  e2--\) cis8( fis e gis a fis e\> d fis d e d)
  e4\p( fis2 gis8 fis e dis cis h) e4( h~
  h8 a h4) e dis cis d e8( d c d e4. g8 a2~
  a) c8( d c h a h a g f4) e~ e2 dis e1~
  e2 fis8( a gis fis gis e fis gis a cis h a
  h gis a h cis e d cis d h cis d e gis fis e
  fis d e fis gis h a gis a4) r2. R1*3
  r2 f4\f-.\( a-. b( a) g-. es-. f2--\) d8( g f a
  b g f\> es g es f es d2.\p) es4 c2. d4 b2. a4 b2 r
  R1*2 r2 c,4\f-.\( e!-. f( e) d-. b-. c2--\) a8( d c e
  f d c b d b c b a4) r2. R1*2
  f2\f-- c'-- g1-- f2-- g-- f( e) f-- g--
  a4( b a g f g e2 f1)
  g4\f-.\( h-. c( h) a-. f-. g2--\)
  e8( a g h c a g f a f g f e2)
  \bar "|."
}
