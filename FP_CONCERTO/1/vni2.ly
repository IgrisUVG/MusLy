\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniTwoMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*9 r4 <c, g'>(<e g>8-.) r r4 <g b>8-. r r4
  R2*2 ges,2~ ges~ ges
  R2*13 b8( as) r4 des8( ces) r4 b( as b-.) r4
  R2*9 f2~( f~ f~ f4 g as b c d) r es(\( d c) f4.( es8)\)
  a,( b c b f4) r R2*12 r4 f'( es2 deses4 ces)
  as'2( fis dis4 cis) r f( es ces b4. f8) r4 g_( c b as ges)
  es'2~ es~ \repeat tremolo 8 es16
  \repeat unfold 4 {\repeat tremolo 8 des16}
  \repeat tremolo 8 ges16(
  \repeat tremolo 4 f16 \repeat tremolo 4 es16
  \repeat tremolo 4 d16 \repeat tremolo 4 c16
  \repeat tremolo 8 b16~ b16) g( as b c b c d)
  es( d es f)  f( es f g) g( f g as) as( g as b) b( a b c)
  c( b c d) d( c d es) es( d es f) f( es f g)
  \ottava #1
  \set Staff.ottavation = #"8"
  g!( f g as) as( g as b) b( a b c)
  \repeat unfold 2 { \repeat tremolo 8 b16 }
  \repeat tremolo 8 as16( \repeat tremolo 8 g16
  \repeat tremolo 8 f16 \repeat tremolo 8 es16
  a2)
  \ottava #0 R2*3
  c,2~( c b) r4 f,( g as b c) des4.( c8) r4 b'-- c,4.( b8)
  R2*35
  \set Staff.beatStructure = #'( 4)
  r4 ges'4( f es) as4.( ges8) c,( des es des as2~ as~ as~ as)
  R2 r4 f~( f ges) ges2(\( as) f'( es4) f( ges2)\) f4( des des es des2) c4( b
  a2) es'4( d es2) R2*5 r4 es des2 es~ es as~ as b R2*3 r4 ges,( b as)
  R2 ces4( b) R2 r4 b( ces b) R2*19 r4 c8( ces) r4 es8( d)
  e r es r d r des r c r ces r b r a r as r g r ges r f r e2~( e4 des c b) R2*5
  b''2( a4 as g ges) R2*2 ces2~ ces e,~( e4 d des! ces es b as2)
  R2*5 f'2~( f4 es d c e h a2) R2*3 des,2~ des f'2~ f g2~( g4 ges es des)
  a'( des, des ces) fes( heses, heses as) heses'( des, des ces)
  e( heses heses as) \repeat unfold 4 { \repeat tremolo 8 es'16 }
  \repeat unfold 8 {
    \repeat tremolo 2 f16
    \repeat tremolo 2 e16
  }
  \repeat unfold 4 { \repeat tremolo 8 f16 }
  \set Staff.beatStructure = #'( 1 4)
  es( d es f) f( es f g) g( f g as) as( g as b) b( as b c)c( h c d) d( c d es)
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
  \repeat unfold 2 { \repeat tremolo 8 des16 }
  \repeat tremolo 8 ces16 \repeat tremolo 8 b16 \repeat tremolo 8 as16
  \repeat unfold 2 { \repeat tremolo 8 f16 }
  \repeat unfold 2 { \repeat tremolo 8 ges16 } ges4\ottava #0 r
  \times 2/3{es,,4( d c)\fermata} R2
  \times 2/3{ges'4( fes eses)\fermata} R2
  \repeat unfold 5 {b''16 ges b ces} b16 ges b c
  \repeat unfold 2 {h16 g h c}
  ces!16 as ces des ces16 as ces c \repeat unfold 6 {des16 b des es}
}