\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetInAMusic = \relative {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  es'2.~ es~ es R2.*6 c2.~ c ces R2.*18
  b2.~ b~ b~ b R2.*9 r4 b2~ b2. ces2 b4 ces2 b4~ b des2( ces) r4
  R2.*2 d2.~ d R2.*7 e2.( d es) R a8( as ges2) R2.*28
  d2.-> des-> c-> h-> b!-> R2.*6 e4-.-^ r2 R2.*4 a,2.( des) R2.*6
  cis2-> h4->~ h h4.-> h8-> as4-> r2 R2.*13 d2.( e) R2.*14
  \repeat unfold 8 {as2.~ as} as2. R2.*23 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*5
  fis2.( fis2 g4~ g8) gis(->~ gis2 a2.) b,2. R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  c1~ c~ c c R1*7 f1 e es d c4-^ r r2 R1*6
  \repeat unfold 2 {ais4( h ais2)} R1*4 r2 b( g'4) r2. R1*3 es1
  r4 b8( as b4) des r ces8( b ces4) es r des8( ces des4) f
  g!1-> a-> h->~ h
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  h4-^
}