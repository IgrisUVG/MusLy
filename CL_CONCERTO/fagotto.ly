\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

fagottoMusic = \relative es {
  \clef bass
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  es2.~ es~ es R2.*6 es2.~ es f R2.*6 f'2.~ f~ f~ f~ f~ f~ f~ f~ f R2.*3
  r2 es,4~ es2.~ es~ es R2.*7 fis,2.~ fis8 r r2 r2 d'4~ d2. es es~ es4 des2( ces) r4
  R2. b~ b~ b d, es( b'~ b2 ges4~ ges2.) es'~( es2 c4) cis2.( c! b) R2.*2 d,2. R2.*6
  g'2.( d es e f) R2.*16 d2.-> des-> c-> h-> b!-> R2.*6 cis,4-.-^ r2 R2.*11
  cis2. cis2 r4 R2.*7 g'2.( ges g! ges f as4) r2 R2.*18
  \repeat unfold 8 {dis2.-> cis->} dis2. R
  \repeat unfold 18 {des,2.~} des c2 r4 R2.*2 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*5
  e'2.( d2 g4~ g8) gis(->~ gis2 fis2.) b,! R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  fis1~ fis~ fis g R1*7 g1 c fis, h c4-^ r r2 R1*8 r4 e2.~ e!1~ 
  e!4 e2.~ e!1~ e!4 es'!2.~ es1~ es4 es2.~ es1~ es4 es2.~ es1
  ges8 f es c as ges es c b c des f ges as ces es
  fes, ges b des ces as fes des h a g f d e a g fis g h c fis g c e 
  gis1->~ gis
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  as4-^
}