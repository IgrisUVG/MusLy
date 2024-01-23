\version "2.19.15"

\language "deutsch"


bass = \relative {
  \clef "bass_8"
  \key d \minor
  \tag #'Partitur {\partial 4 r4}
  \acciaccatura c,8 d2 c8( d c) g( a) h16( cis h) a8 r16 e' a8.~ a4
  d,8. a'16 r8 d~ d4 \acciaccatura e,8 f16 d8.
  a2 a16 e' a h( cis h) a e
  d2 c8( d c) g(
  a) h16( cis h) a8 r16 e' a8.~ a16 \acciaccatura h8 cis16( h) e,
  d8. a'16 r8 d~ d4 \acciaccatura e,8 f16 d8.
  a2 a16 e' a h( cis) e8.
  c,2 d h e,4~ e16 h'8 r16 c2 d
  e,4~ e16 \acciaccatura a8 h8. e8( fis e16) h8.
}