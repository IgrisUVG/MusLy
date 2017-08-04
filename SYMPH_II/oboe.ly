\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

oboeMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \set baseMoment = #(ly:make-moment 1 8)
  R1*41 c''1( cis2 d es f8 es16 d b8 c~ c d f\noBeam d4 c8 es4
  e!2~ e8) d16( cis d4) R1*7 es2( ges, g!2. as4 a!2 b) r4 g( ges2 a2.) r4 R1*8
  f8( c' c16 b c8~ c16) a( b c d cis d8) f8(\( e16 d) d8( cis) d4\) r R1*30
  \override TextScript.extra-offset = #'(-3 . -1)
  es16(^\markup {\italic Solo} f ges8 b4) ces8 des,( b'[ as])
  des2( fes16 eses des ces ges4) as16( des, es f b4 ces4. b8 es2) r R1*7
  b,4-- c-- e-- g-- fis-> h,-> cis4.-> dis8-> e-> cis-> dis[-> eis]-> fis2->
  g-> c,!-> des1-> fis,2 r R1*9 r4 cis2.~ cis1 r2. gis''4( fis e dis cis h1 b)
  cis( d) R1*2 des2( b) R1*5 f'4( es2) r4 R1*3 r2 cis,4( d f e) r2 R1*5
  r2 fis'8( e dis4) des-- r2. R1*2 \repeat unfold 4 {r16 f,( as f)}
  \repeat unfold 6 {r16 ges( b ges)} r b( des b) r as( d as)
  r es'( b es) \repeat unfold 3 {r es( c es)} b8 r r2. R1*14
  <f' as>4(<es ges> b2) R1*8 r8 <es, g>\noBeam(<f as><g b><as c><b d><c es><d f>
  <es g>)<as, c>\noBeam(<b d><c es><d f><es g><f as><g b>
  <as c>)<des, f>(<des ges><f as><fis a><h, d>4) q8(
  <cis e><d fis><d g>)<g, c>4 q8( <h d><c es>
  <d f><es g><f as><g b><as c>)<d, f>(<es g><f as>
  <g b><as c><b d><c es><d f>)<g, h>(<g c><h d>
  c)\noBeam<g h><fis a><es g><d fis>\noBeam<c es>(<b d><as c><g b><f as><es g>) r r2
  es8\noBeam g-> r2. R1*3 r2 r8 as( ges4->) R1*15
  \bar "||"
  R1*5 g'!4( f) r2 R1*5
  \bar "||"
  R1*4 r2. <cis eis>4(<ais cis>1
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  <a! c!>2.)<ges b>
  R2.*14 f2.~( f ges es)
  <<
    {
      g( es d g fis g f! fis4) r2
    }
    \\
    {
      d2.(~ d~ d c~ c b h! c )
    }
  >>
  R2.*24
  \cadenzaOn
  a'2.~ a~ a~ a~ a~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  a2 r R1 g'1~ g( ges) R1*4 r4 r8. b16(~ b2 h!1~ h)
  R1 r4 fis,2. R1*8
  \bar "||"
  \cadenzaOn
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1. r4.
  \cadenzaOff
  \bar "||"
  \time 4/2
  R1*10
  \bar "||"
  \time 4/4
  R1*6
  <es b'>1~ q~ q R1*7 <e' fis>1
  R1 \bar "||"
  R1*26
  \bar "|."
}
