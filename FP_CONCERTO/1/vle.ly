\version "2.18.0"
\language "deutsch"
vleMusic = \relative es' {
  \clef alto
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*9 r4 <ges a>(<g h>8-.) r r4 <f es'>8-. r r4
  R2*2 es2~ es~ es
  R2*14 des8( ces) r4 b( c8 d es4-.) r4 R2*4
  f2 R2*2 ces8.( b16) r4 R2 r4 ces8.( b16)
  r4 ces-- r8 as4( ges8 f2) R2*3 r4 as( g f es des' b as)
  eses'2->( ces4) r4 R2*11 g'4( es fes2) f!( gis4. cis8
  cis4 e,) r b'( heses ges f des) r8 c4( b8) R2
  \clef treble
  r8. c'16 f8 r16 es b'8 r r4
  \clef alto
  r8. c,,16 f8 r16 es
  \repeat unfold 8 {\repeat tremolo 8 b'16}
  \repeat tremolo 4 b16( \repeat tremolo 4 as16
  \repeat tremolo 4 g16 \repeat tremolo 4 f16)
  es8[( b f' g]) \times 2/3 {as4( g8)} b4~( b4. c8 g2~ g!)
  b,( c d es f g as4. g8) c2 R2*4 b2( c4. b8) b4.( as8)
  r4 b4-- as4.( g8) f2--~ f~ f  R2*35
  \set Staff.beatStructure = #'( 4)
  r4 des( ges2 b) des4( ces b2~ b ges f) R2
  r8 c( es des as4. b8 es2 f) r8 b( as ges f ges as ges a b c b
  as! ges f4 des2) as( c f as ges)  R2*5 b2~ b des4 ces b as
  ges2~ ges des R2*4 es2~( es~ es~ es~ es d es) R2*20
  g8 r ges r f r fes r es r eses r des r c r ces r b r a r as r
  e'2~( e4 des c b) R2*5 r4 b'( a as e8 f ges f) R2*2
  ges2~ ges g,~ g es~ es R2*6 as2~ as e~ e R2*2
  f2~( f ges~ ges) as~ as r4 fis'( c2) f( ges es ces f~ f)
  es( ces f)
  \repeat unfold 8 {
    \repeat tremolo 2 ges16
    \repeat tremolo 2 f16
  }
  \repeat unfold 4 { \repeat tremolo 8 as16 }
  \repeat unfold 4 { \repeat tremolo 8 ces16 }
  \repeat unfold 5 { \repeat tremolo 8 g16 }
  \repeat unfold 3 { \repeat tremolo 8 as16 }
  \repeat unfold 2 { \repeat tremolo 8 b16 }
  b2-> b,-> ges->~ ges
  \times 2/3 {b4---> as---> ges--->} es'4-> des->
  des2->( ces) es-> ges-> b->~ b4. des,8-> b'4.-> f8->
  a2->~ a4. des,8-> ges4-> r
  \times 2/3{b,4( as ges)_\fermata} R2
  \times 2/3{b4( des des)\fermata} R2*4
  e8. c16 e4-> f8. des16 f4-> ges2~-> ges~ ges
}