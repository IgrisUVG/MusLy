\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

oboeMusic = \relative es'' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  <b es>2.~ q~ q R2.*6 <g' c>2.~ q <as ces> R2.*6 f2.~ f~ f~ f~ f~ f~ f~ f~ f
  R2.*2 r4 g,2~( g2.~ g ges~ ges) R2.*7 <b' d>2.~ q8 r r2 r2. r2 <fis d'>4~ q2.
  R2. r2 as4( ges2 des4 c2.~ c) <b' f'>~ q  R2.*7 gis2.( a b) R <ges, b'> R2.*39
  <gis h>4-.-^ r2 R2.*6 r2 b'4~b2. R2.*3 <gis, e'>2. q2-> <fis d'>4->~ q q4.-> q8 <as es'>4-> r2
  R2.*20 r4 d2~ d2.~ d R2.*6 \repeat unfold 4 {a'2.->~ a} r2. a-.-^ R2.*13
  h2.~ h~ h2 r4
  <<
    {
      s2 as4( g) s2 s2.*2 \stemDown des4( deses b~ b heses as'~) as2.~
      \stemUp as~ as~ as~ as~ as
    }
    \\
    {
      as4( g) s s heses2 s2.*5 f2.( fes des g,~ g)
    }
  >>
   R2.*2 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*5
  h2.( <d! fis>2<d g>4~ q8)<cis e>(->~<cis~ e>2<cis fis>2.)
  <d f!> R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  \repeat percent 3 {
    \repeat percent 4 {as16 g ges f}
  }
  \repeat percent 4 {b a as g}
  h2 r R1*3
  r4 c2( h4) r b!_( a as g fis f e dis1) e es! f fis4-^ r r2 R1*6
  \repeat unfold 2 {c'4( h f'2)} R1*10
  es8  des c as c b ges es des es f as b ces es ges
  es fes as ces des b f des c h a g a g e d 
  c d e fis a c e g h1->~ h
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  h4-^
}