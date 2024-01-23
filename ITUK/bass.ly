\version "2.19.15"

\language "deutsch"


bass = \relative {
  \clef "bass_8"
  \key d \minor
  \tag #'Partitur {\partial 4 r4}
  \acciaccatura c,8 d2 c8( d c) g( a) h16( cis h) a8 r16 e' a8.~ a4
  %\glissando
  d,8. a'16 r8 d~ d4 \acciaccatura e,8 f16 d8.
  a2 a16 e' a h( cis h) a e
  d2 c8( d c) g(
  a) h16( cis h) a8 r16 e' a8.~ a16 \acciaccatura h8 cis16( h) e,
  d8. a'16 r8 d~ d4 \acciaccatura e,8 f16 d8.
  \tag #'Part {\break}
  a2 a16 e' a h( cis) e8.
  c,2 d h e,4~ e16 h'8 r16 c2 d
  e,4~ e16 \appoggiatura a8 h8. e8( fis e16) h8.
  c4~ c16 g8 r16 d' a'8 d,16~ d8 \appoggiatura a h~ h2 e, c' d
  e4 a,8. h16~ h2
  e4 a,8. h16~ h4 \acciaccatura e8 \tuplet 3/2 {fis-. d h}
  e,2~ e8 \appoggiatura a h4.
  \time 3/4
  e4 a16 e a,8( h4)
  \time 9/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \tag #'Partitur {\grace {s8}}
  fis4 gis8. a16~ a4 \acciaccatura d8 e16-. h'8.
  %\glissando
  fis4. r8 r2 r16 cis8.
  \time 5/4
  fis,4 gis8. ais16~ ais8. e'16 a!( h a) gis \appoggiatura h8 cis4
  \time 4/4
  fis,4 gis8. a16~ a2
  %\glissando
  \tag #'Part {\break}
  \key d \minor
  d,4 a16 e'8( d16) a' d8.~ d16 a \appoggiatura d,8 e16 d
  \tuplet 3/2 {a8 e' \acciaccatura a h(} a16) e a, e
  \acciaccatura h'8 cis16 e8. \tuplet 3/2 {a8 e a,}
  d4 a16 e'8( d16) a' d8.~ d16 a \appoggiatura d,8 e16 d
  \tuplet 3/2 {a8 e' \acciaccatura a h(} a16) e a, e
  \acciaccatura h'8 cis16 e8 a16~ \tuplet 3/2 {a8 e a,~}
  \tuplet 3/2 {a8 d \appoggiatura g a~}
  a16 g \acciaccatura e8 fis?16( e) d4~ d8. f32 c
  f,4~ f16 \acciaccatura b8 c8. f2
  d8-.[ r32 a' d16]~ d8 \acciaccatura e f16 e a4~ a16 f e d
  \acciaccatura g,8 \tuplet 3/2 {a-. e-. a,~} a4~ a16 e8-.
  \acciaccatura g8 a16~ a4
}