\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetOneMusic = \relative es'' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  <es g>2.~ q~ q R2.*6 es2.~ es des R2.*5 f2.~ f~ f~ f~ f~ f~ f~ f~ f~ f
  <es ges>2( <d f>4 <cis e>2.)
  <<
    {
      s2 g4~( g2.~ g ges~ ges~)
    }
    \\
    {
      r4 c,2~( c2. ces~ ces~ ces)
    }
  >>
  R2.*2
  <<
    {
      r4 cis''2~ cis2.~ cis
    }
    \\
    {
      s2 fis,4~ fis2.~ fis
    }
  >>
  <fis cis'>~ q
  <<
    {
      r4. fis,,8( d' b fis' d b' fis d' b fis' d b' fis d b' fis d b' fis d b' fis[ d b'])
      ges,,([ es' ces] ges' es ces' ges es' ces ges' es ces' ges es ces' ges es ces' ges es ces'
      as es c' as es c' ges es c ges es c b2.~ b)
    }
    \\
    {
      s4. s4 fis8( d' b fis' d b' fis d' b fis' d b' fis d b' fis d b' fis d[ b' fis d b'])
      ges,,( es' ces ges' es ces' ges es' ces ges' es ces' ges es ces' ges es ces' ges
      es c'! as es c' as es c ges es c ges f2.~ f)
    }
  >>
  R2.*7 <e'' cis'>2.( <d d'><des es'>) cis'8(a e cis a e b'2.) R2.*10 r2 g'4~ g2. R2.*7
  \repeat unfold 3 {r4 g,-. c-. g'-. c,-. g-.} <c, as'>-. q-. q-. R2. ces''4 ces ces
  <a d>2.:8 <a cis>:8 <as! d>:8 <h d>:8 <b! d>:8 <g c>2:8 <g c>4-> R2.*5
  <dis' fis>4-.-^ r2 R2.*12 <cis, gis'>2-> <h fis'>4->~ q q4.-> q8-><ces as'>4-> r2 R2.*8
  r4 h'2->~( h!2. b!) <c f>~ q4 <e g>8-.-^ r r4 R2.*16
  \repeat unfold 4 {<as,,! g'>2.->~ <as g'>} r2. <as! g'>-.-^
  r2 f'4( e) r2 f4( e) r4 r2.d'8( c4->) r8 r4
  \repeat unfold 22 {ces,4 ces ces} ces ces ces~ ces2. r r\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  s2.*19
  \bar "||"
  \numericTimeSignature
  \time 4/4
  <b es!>1~ q~ q <c f> R1 r4 as'2( g4) r fis( f e es d des c h) r2. R1*2
  cis1 e <cis fis><d g><es as>4-^ r g,2 g'1-> f c2-> d-> e1-> d-> d 
  R1*6 r2 <e d'>( <es! es'>4) r2. R1*3 <es des'>1
  r4 es,8( des es4) ges r f8( es f4) as r ges8( fes ges4) b 
  c!1-> d-> e->~ e
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  es!4-^
}