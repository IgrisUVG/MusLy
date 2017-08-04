\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetBassMusic = \relative {
  \clef bass
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  b2.~ b~ b R2.*6 g2.~ g as R2.*7 f'2.~ f~ f~ f~ f~ f~ f~ f R2.*3
  r4 g,2~( g2. ges~ ges) R2.*9 r4. fis~ fis2. as2 ges4 fes2 es4~ es es2~ es r4
  R2.*2 f2.~ f R2.*7 cis'2.( c! b) R a,8( as ges2) R2.*28
  d'2.-> des-> c-> h-> b!-> R2.*6 c'!4-.-^ r2 R2.*4 f,2.( b) R2.*6
  cis,2-> h4->~ h h4.-> h8-> as4-> r2 R2.*13 a'2.( h) R2.*14
  \repeat unfold 8 {f'2.~ f} f2. R2.*23 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*5
  h,2.( a2 h4~ h8) cis->~ cis2~ cis2. f,2( g8 f e2.) R2.*8
  \bar "||"
  \numericTimeSignature
  \time 4/4
  c1~ c~ c c R1*7 g'1 gis a as g4-^ r d2 c1 f, e a4 gis a c d2 c h1
  e2( h) e( h) R1*4 r2 as'( a4) r2. R1*4 r4 f8( es f4) as
  r ges8( f ges4) b r as8( ges as4) ces d!1-> e-> fis->~ fis
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  f!4-^
}