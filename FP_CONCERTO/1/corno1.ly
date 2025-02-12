\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoOneMusic = \relative es' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*14 <b, es>2~ q~ q
  R2*14 des8( ces) r4 g'( es8 f g4-.) b,~ b2~ b2
  R2*5 r4 as'~ as2~ as <es as>-> q-> q->
  q->~( q <es g>8) r r4 R2*2 r4 <f_~ b>^( <f as>8) r r8. des16->
  ges8-> r r4 R2*3 <eses ges>2 R2*3 <es as>2(<des g>
  <ces ges'><c f>)<d f>(<des g><ces as'><des f!>)
  <cis fis>8. q16 q8 r r8. cis16 e8 r r4 <des f>(<es ges><ges ces>
  <f b>2)<g b> r4 r8. c,16 f4.( es8 <es g>2) r4 des as'2~ as
  r4 g b2~ b r4 es, <g b>2~q r8 <g c>(<f b><es as>)
  <<
    {
      b'4.( as8) r4 b~( b2 c) b4-> s^"solo" R2*2
      as2 as b b ces <ges b>2 a g~ g!~ g!
    }
    \\
    {
      f4 es d es es2~ es r4 as-> g4.. b16 g2
      g4.( f8) g4.( f8) as4.( g8) as4.( g8) b4.( as8)
      s2 a g~ g~ g
    }
  >>
  R2*3 es2-- as2~(_"solo" as4 b g2) c,(^"div" des)  R2*35 R2*4
  es2~ es4 des~ des2~ des R2*20 des2~ des4 es ges f as4. ges8
  des2~ des4. ges8 des2 R2 r4 des~ des2 R2*9 r4 c~ c2 R2*2
  <eses as>2 R2*2 <f as>2 R2*14 b,8. b16 d4~( d2 as16) as r8 r4
  R2*8 f'2->~ f~ f R2*8 ges4( f as es des2) R2*7 g4( fis a e d2) f(
  <des ges>~ q) <des as'>~ q g2->~ g R2*6
  \repeat unfold 3 {r4 <ces, es>} \repeat unfold 4 {r4 <b es>}
  \repeat unfold 7 {r4 <b d>} <b d>4<b d> c2~ c~ c
  <c es>~ q q <des as'>~ q <des f>->~ q <des ges>->~ q
  <ces ges'>->~ q <b ges'>-><b as'>-><b ges'>-><ces ges'>->~ q
  <des as'>-><des ges>-><des b'>->~ q<des a'>->~ q <es b'>4-> r
  R2*7 e8. c16 e4-> f8. des16 f4-> ges2->~ ges~ ges
}