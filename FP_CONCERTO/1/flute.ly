\version "2.18.0"
\language "deutsch"
fluteMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8.
  \ottava #1
  \set Staff.ottavation = #"8"
  b''16
  \times 2/3{a4 f ges\fermata}
  \ottava #0
   r4 r8.
  \ottava #1
  \set Staff.ottavation = #"8"
  c16
  \times 2/3{ces!4 as a\fermata}
  \ottava #0
  R2*6 r4 f,-. r g-. b-. r R2*5 es2~ es~ es
  R2*11
  r4 r8 \acciaccatura <es, b'>8 <es b'>8
  r4 r8 \acciaccatura <fes ces'>8 <fes ces'>8
  r4 r8 \acciaccatura <f c'>8 <f c'>8
  r4 r8 \acciaccatura <ges des'>8 <ges des'>8
  R2*7 b4 r R2*5 r4 es,( f g as b c d es8) r r4 as,2( g4) r
  R2*10
  r4 es' r fes r ges r as
  a,8. f16 a8 r b8. g16 b8 r r4 r8. as16 des8 r r4
  r cis8. a16 cis8 r r4 des8 r r8. b16 es8 r r8. ces16
  f8 r r8. des16 g8 r r4
  \times 4/6 {b,16 b b b b b}  \times 2/3 {a8. ges16 a8}
  r4 r8. es'16 es8 r r8. fes16 fes8 r r4 r8. des16 ges8 r
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 4/6 {
    as16( ges fes es des ces b as ges fes es des
    ces b as ges fes es
  }
  \times 2/3 {des8.) fes16 des8}
  r4 des'( es f ges2) g r32 es( f g as b c d es8) r
  r8. b'16 b4-- c,,32( d es f g as b c d es f g f es d c
  b as g f es d c b as g f es d8 es) f'4( es8) as2
  es'8. c16 es8 r g8. es16 g8 r f,4( g) as2
  r8 d,16( es f32 g as b c d es f g f es d c b as g f8.) d16(
  es32 f g as b c d es f g as b as g f es
  d c b as g f es d c b as g f es d es f4 es) R2 c''( h~ h) R2*2
  es2~ es f~ f es( des4 c) c4.( b8)  R2*35 R2*23
  r4 f f( ges) R2*3 des'2~( des es~ es f~ f des) r4 r8. heses16(
  g as ges fes f ces es c des heses eses des as ces b f ges8) r r4 R2
  r4 r8 f' \times 2/3 {des'4( c8)} r4 R2*3 es2 r4 r8. des16(
  c as ces heses fes ases f ges fes des eses c ces deses as heses ces8) r r4
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  R2 \times 2/3{ces'4. as8 ces4} R2*2 \times 2/3{des4. as8 des4} R2*7
  r4 as-. r b-. des-. r4R2*15 f2( es des d8) r r4 R2*8 des,2~ des4 a'(
  gis fis heses4. as8 c,8 des es des as4) r R2*3 a'2~ a b~( b heses~ heses)
  as~ as R2 r8 f es( d) r4 r8 c b( a) r4 r8 as'! ges( fes) r4 r8 fes'
  \repeat unfold 5 {es8( des) r4} \repeat unfold 4 {f8( es) r4}
  \repeat unfold 8 {des8( ces) r4} 
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  g2~ \startTrillSpan g~ g~ g
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  g~\startTrillSpan g
  \override TrillSpanner.bound-details.left.text = \markup{ 
  				\musicglyph #"scripts.trill" \raise #1.65 \teeny  \natural
  		}
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  f~\startTrillSpan f
  \override TrillSpanner.bound-details.left.text = \markup{ 
  				\musicglyph #"scripts.trill" \raise #1.65 \teeny  \flat
  		}
  f~\startTrillSpan \afterGrace f
  { es16[ f]\stopTrillSpan } ges4-. r R2*15
  \ottava #1 \set Staff.ottavation = #"8" b'2\fermata \ottava #0 R2
  \ottava #1 \set Staff.ottavation = #"8" b2\fermata \ottava #0 R2*6 des,2~( des4 b as ges)
}