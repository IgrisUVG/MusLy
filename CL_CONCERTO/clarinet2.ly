\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetTwoMusic = \relative es' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  <g b>2.~ q~ q R2.*6 g2.~ g~ g R2.*3 f'2.~ f~ f~ f~ f~ f~ f~ f~ f~ f~ f~ f
  <es, ges>2( <e g>4 <f as>2.) r2 <b, es>4~ q2.~ q~ q~ q
  R2.*3
  <<
    {
      r2 h''4~ h2. s2.*2
    }
    \\
    {
      s2. eis,~ eis~ eis
    }
  >>
  r2.
  <<
    {
      r8 fis,,8( d' b fis' d b' fis d' b fis' d b' fis d b' fis d b' fis d b' fis d b')
      ges,,( es' ces ges' es ces' ges es' ces ges' es ces' ges es ces' ges es
      c'! as es c' as es c' ges es c ges es d2.~ d)
    }
    \\
    {
      s8 s4 fis,8( d' b fis' d b' fis d' b fis' d b' fis d b' fis d b' fis d b' fis[ d b'])
      ges,,[( es' ces] ges' es ces' ges es' ces ges' es ces' ges es ces' as es c' as es c'
      ges es c ges es c b2.~ b)
    }
  >>
  R2.*7 <gis' cis>2.( <g!~ c!><g b>) cis8(a e cis a e b'2.) R2.*19
  \repeat unfold 3 {r4 g-. c-. g'-. c,-. g-.} <as es'>-. q-. q-. R2. as''4 as as
  <<
    {
      f2.:8 f:8 f:8 g:8 f:8 c2:8 c4->
    }
    \\
    {
      d,2.-> des-> c-> h-> b!-> s
    }
  >>
  R2.*5 <g''! h>4-.-^ r2  R2.*12 <gis, e'>2-> <fis d'>4->~ q q4.-> q8 <as es'>4-> r2 R2.*8
  r4. f->~( f2. fis) <es' a>~ q4 <e h'>8-.-^ r r4  R2.*16 \repeat unfold 4 {<a, e'>2.->~ q}
  r2. <a e'>-.-^ r2. r4 f'( e) R2.*28 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  s2.*19
  \bar "||"
  \numericTimeSignature
  \time 4/4
  <e,! fis>1~ q~ q <es! g> R1 r2. h'4( c2 des4 c ces b heses as g) r2. R1*2
  <as h>1<g c><fis h><g cis><fis c'!>4-^ r g2 <c e><b es><a c>1 g2 <gis h>
  <a c>1<fis a><g h> R1*6 r2 <d c'>( <a' h>4) r2. R1*3 <as b>1
  <b c des>8<as b c><ges as b><es f ges>
  <des es f><c des es><as b c><f ges as>
  <es f ges><f ges as><ges as b><b ces des>
  <ces des es><des es f><f ges as><as b ces>
  <b ces des><ces des es><es fes ges><ges as b>
  <fes ges as><des es fes><b ces des><ges as b>
  <e f! g!><d e f><c d e><h c d><g a h><f g a> q <e h'c>
  <d c' d><e d' e><g e' fis><a fis' g><h c d><c d e><fis g a><a h c>
  <h c>1->~ q
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <des es>4-^
}