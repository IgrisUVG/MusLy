\version "2.18.0"
\language "deutsch"
vniOneMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*9 r4 <es a>( h'8-.) r r4 es8-. r r4
  R2*2 es,2~ es~ es
  R2*13 b'8( as) r4 des8( ces) r4 b( as g-.) r4
  R2*11 r4 es( f g as b c d) r es(\( d c) f4.( es8)\)
  a,( b c b f4) r R2*5
  es'16( ges e f d es ces c b ces! as b g as f ges 
  e f d es des d h c b ces! b as g as ces) es\noBeam (
  d8 des) r8. b16( deses8 ces) r8. g16( b8 as) r4
  r4 d'( des! ces b as) es'4.( des8 h4 a gis8 fis4 e8)
  r4 b'( ges es des8 ces4 b8) r8. b'16 d8 r16 ces
  es8 r16 c f8 r16 es b'8 r r4 r
  \ottava #1
  \set Staff.ottavation = #"8"
  a16( gis a b a b a gis ges f ges ases ges ases ges f es d es fes
  f es des c
  \ottava #0
  es des ces b des ces b as ges' fes es des fes es des ces es des ces b
  ces b as ges fes es des ces b as ges f! es des ces b a b a b a b a b
  a b a b c d es f g es f g as b c d es d es f es d es f es d es f)
  f( es f g) g( f g as) as( g as b) b( a b c) c( b c d)
  d( c d es) es( d es f) f( es f g)
  \ottava #1
  \set Staff.ottavation = #"8"
  g!( f g as) as( g as b) b( a b c)
  \repeat unfold 6 { \repeat tremolo 8 b16 } c2
  \ottava #0 R2*3
  as2~( as~ as es) c( b4. as8) r4 g'4-- as,4.( g8) r4 f'--  R2*35
  \set Staff.beatStructure = #'( 4)
  r4 ges4( f es) as4.( ges8) c,( des es des as2~ as~ as~ as)
  r8 b,( des c g4. as8 des a b f') f4( es) r f( g as c b c des des as
  f ges c b a des) des( c ces! f) f( ges) R2*5 r4 es,( f ges b as ges f
  es des es f b,2) R2*3 b4( ces des es c des d es ces' g b as f2 ges)
  R2*18 r4 c8(ces) r4 es8( d) R2*6 e,,2~( e4 des c b) R2*5
  \ottava #1
  \set Staff.ottavation = #"8"
  b'''2( a4 as g ges) \ottava #0 R2*2 es2~ es
  e~( e4 d des! ces es b as2) R2*5 f'2~( f4 es d c e h a2) R2*5
  f'2~ f g,2~( g4 ges es des) a'( des, des ces) fes( heses, heses as)
  heses'( des, des ces) e( heses heses as)
  \repeat unfold 4 { \repeat tremolo 8 b'16 }
  \repeat unfold 4 { \repeat tremolo 8 ces16 }
  \repeat unfold 8 {
    \repeat tremolo 2 d16
    \repeat tremolo 2 des16
  }
  \repeat unfold 2 { \repeat tremolo 8 c16 }
  \set Staff.beatStructure = #'( 1 4)
  \repeat tremolo 4 c16 c( h c d) d( c d es) 
  \ottava #1
  \set Staff.ottavation = #"8"
  es( d es f) f( es f g) g( f g as) b( c b c b c b as) g( as g f es f es des 
  \ottava #0
  c des c b as b as g f g f es des es des c des c des es) es( des es f)
  ges( f ges as) as( ges as b) b( as b ces) ces( b ces des)
  des( ces des es) es( des es f) f( es f ges)
  \ottava #1
  \set Staff.ottavation = #"8"
  ges( f ges as) as( ges as b) b( as b ces) ces( b ces des) des( ces des es)
  \repeat unfold 9 { \repeat tremolo 8 des16 } es4 \ottava #0 r
  \times 2/3{a,,,4( f ges)\fermata} R2
  \times 2/3{ces4_( as a)\fermata} R2
  \repeat unfold 6 {es''16 fes es d} \repeat unfold 2 {e16 f e dis}
  \repeat unfold 2 {f16 ges f e} \repeat unfold 6 {ges16 as ges f}
}