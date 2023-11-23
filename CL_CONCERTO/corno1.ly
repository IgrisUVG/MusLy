\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoOneMusic = \relative es' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  es2.~ es~ es heses~ heses~ heses R2.*3 <c es>2.~( q <ces f>) R2.*9  e2.~ e~ e~ e~ e~ e
  es2( e4 f2.) r2. r2 <b, g'>4~ <b~ g'>2.<b ges'>~ q
  R2.*7 <d b'>2.~ q8 r r2 r2. r4. <b fis'>~ q2. ces->~ ces R2.*2
  <<
    {
      f2.~ f~ f
    }
    \\
    {
      es( f~ f)
    }
  >>
  R2.*9 es4--( d-- des--~ des2) r4 r c--( ces-- b2.) R2.*7 <d fis>2.->( <g b>) R2.*5
  f2.-> e-> c-> g-> fis->~ fis~ fis~ fis~ fis~ fis~ fis R2.*9 r2 h4-> d2-> b!4-> f'4-> e2->
  R2. es!4-.-^ r2 R2.*21 r4 d2-> e-> r4 r d2-> e2.-> es!4-^ r2 R2.*18
  \repeat unfold 8 {a,2.~ a} r4 ges' ges \repeat unfold 20 {ges4 ges ges} ges4 ges ges~ ges2.
  r2. r\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*6
  r2 r8 d-> a'2.->~ a d, R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  R1*8 r4 es2. R1*2 r4 <h f'> q q <b e> q q q <a es'> q q q <as d> q q q
  <g c>-^ r <h d>2<c e><b es><a c>1<g c>2<gis h><a c>1<fis a><g h> R1*14
  <as ces>4<as b>--<as ces>--<des es>--<d! e!>1-><d fis>-><e gis>->~ q
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <es! g!>4-^
}