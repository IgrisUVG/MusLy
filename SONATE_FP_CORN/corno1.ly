\version "2.18.0"
\language "deutsch"
cornoOneMusic = \relative e' {
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
  R1*4 r4. e8-- h'2-> cis8-- d-- fis-- f-- c-- e--
  b4~-> b2 ces-> des-> g->~ g\fermata r4 fis--
  b,1->^~  b!2.~ \times 2/3 {b8 b-> b->} b!1->^~ b! R1*4
  dis2.-- e,4( dis'1--) d!2( as) d,2.( f8 c' h2 fis des1~) des!2 es4 fis,
  f'! g2.~ g1~ g4 d-- g-- c-- d2.-> f,4-- d'1-> c-> g-> R1
  r4 f( as des es1) as->\tuplet 3/2 4 {es8( g d es b es as, es' g, as c f,} b1)
  dis,2.( fisis4 h1->) fis!-> dis2.( fis4 eis1) h'-> h,~ h2 cis es-> fis4-> g->
  h-> fis'-> \times 2/3 {g4-> f-> es->} r4 es,--
  \tuplet 3/2 2 {r4 fis-- ais-- d-- r dis,--} r4 a'--~ a8 b-- d( es)
  \times 2/3 {a4-- as-- g--} fis2.->\fermata r4 r2 r4 r8 d,->~ d1 R1*2\break
  f1 r4. fis8 cis'4-> fis-> h,4._( b16 as es4.) des8( ges1)
  ais4( h fis'2) gis,-- h4-- c-- es-- r fis2--->
  \tuplet 3/2 2 {r4 f!-- e-- es-- d-- des--} c4-- r f2--->
  \tuplet 3/2 2 {r4 e-- es-- d-- des-- c--} \bar "||"
  \time 3/2 h1.^~ h~ h2 r1 R1.*8 e1. fis  e1 h2 cis1 fis2 e1 h2 cis1 fis2 e1 h2 cis1 fis2
  e1.~ e~ e~ e cis2.( h4 a2 h1.) e~ e~ e fis h,^~ h^~ h~ h2 r1 \bar "||"
  \time 4/4
  R1*4 ais2. h,4( ais'2.) h,4( a'!2 es a,1)
  \time 7/8
  %\repeat unfold 9 {R8*7}
  R8*7*9
  cis'2-> d,4.-> cis'2-> d,4.-> c'!4.-> fis,2-> c2->~ c4.
}