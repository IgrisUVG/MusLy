\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetDreiMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1 r2 h'\p( c1~ c4 a' g fis e2 d)
  e\f( a, d4 cis h\> a~ a2 gis a1)\breathe
  \bar "||"
  \repeat unfold 2 {
    d'2\f( a) g( f~ f e~ e d)
    a'( cis, f g e2. d4 d1)\breathe
  }
  \bar "||"
  c4\f-.\( g'-. d2-- c4-. d-. c( h)\)
  c-.( d-. e8\> f e d c d h4) c8\p( e d c
  d a h c h d c h c h4 a8) g4.( a8 d4 h c8 a4 h8)
  c( d c a h d c g a2) g'~( g8 a g f e f e d
  c4) h8( a g f e d) e( f g a h g f e)
  f( g a h c a g f) g( a h cis\< d h a g)
  a4\f-.\( cis-. d( cis) b-. g-. a2--\)
  f8( b a cis d b a g\> b g a g f4) r\! R1*6
  r2 a4\f-.\( e'-. h2-- a4-. h-. a( gis)\) a-.( h-.
  c8 d c h\> a h gis4 a2\!) fis'8\p(a gis fis
  gis dis e fis e gis fis e) fis( cis dis e dis fis e dis
  e h cis d cis e d cis d a h cis h d cis h)
  cis( gis a h a cis h a h fis gis a gis h a gis a4) r2.
  dis4\f-.\( ais'-. eis2-- dis4-. eis-. dis( cisis)\)
  dis\>-.( eis-. fis8 gis fis eis 
  dis\! eis d4) es8\p( g f es f c d es d f es d 
  es d4 c8) b4.( c8 f4 d es8 c4 b8) b4 f g2~
  g4 es f2~ f4 d es2 f4\f-.\( a-. b( a) g-. es-. f2--\)
  d8( g f a b g f\> es g es f es) f4\p( g~
  g a8 g f e! d c) f4( c~ c8 b c4) f e d e
  f8( g e f d fis e d e h cis d e g fis e
  fis cis d e fis d e fis h,4) r2.
  d'4\f-.\( a'-. e2-- d4-. e-. d( cis)\)
  d-.( e-. fis8 g fis e\> d e c! d c\p e d c
  d a h c h d c h c h4 a8) g4.( a8 d4 h c8 a4 h8)
  c( d c a h d c g a2) g'~( g8 a g f e f e d)
  c4( h8 a g2)
  \bar "|."
}
