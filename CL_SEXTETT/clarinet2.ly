\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetZweiMusic = \relative {
  \clef treble
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  R1 d''( g, c2 h a g~ g fis g) e~( e1~ e2 fis
  \bar "||"
  a1) R1*7
  \break
  e'4( d8 c h g e4 c) d8( g e2 d1)
  c8( d f g a2) h1( a h cis)\breathe
  \bar "||"
  \break
  R1*3
  r2 d4-.\f\( fis-. g( fis) e-. c-. d2--\) h8( e d fis
  g\> e d c e c d h) c4\p( d2 e8 d c h a g c4 g~
  g8 f g4) c h a h c g'( f) e d a'( g) f e b'(
  a) g f8( e d cis) d4( e2 f8 e d c! b a d4 a~ 
  a8 g a4 d cis b2 a4) r R1*3
  h4\f-.\( dis-. e( dis) cis-. a-. h2--\)
  gis8( cis h dis e cis h a\> cis a h gis) a4\p( h~
  h c!8 h a g! f e a4 e~ e8 d e4) a g f gis a2 h 
  cis gis'8( h a gis a e fis gis fis a gis fis
  gis d e fis e gis fis e fis cis d e d fis e d
  e h cis d cis e d cis d a h cis d s cis h a4) r2.
  %\pageBreak
  ais4\f-.\( cis-. dis( cis) h-. gis-. ais2--\)
  fis8( h ais cisis dis h ais gis\> h gis b as) b4\p( c~
  c d8 c b a g f b4 f~ f8 es f4) b a g a b a b2~ 
  b4 g a2~ a4 f g2 f r R1*4
  r2 a4\f-.\( c-. d( c) b-. g-. a2--\) fis8( h a cis
  d h a g h\> g a g fis4) r2.\! R1*4
  r2 d'4\f-.\( fis-. g( fis) e-. c-. d2--\) h8( e d fis
  g\> e d c e c d h) c4\p( d2 e8 d c h a g c4 g~
  g8 f g4) c h a h c2
  \bar "|."
}
