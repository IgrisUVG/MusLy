\version "2.18.0"
\language "deutsch"
trumpetMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*14 b2~ b~ b
  R2*14 des8( ces) r4 b( as es'-.) r4 R2*3
  r8. f16 f8 r R2*4 r8. f16 f8 r r8. f16 f8 r 
  r8. f16 f8 r r8. f16 f8 r R2 b,2->~ b4.. b16
  b8 r r8. es,16-> as8-> r r4 b8. g16 b4 R2
  c8. as16 c4 des8. b16 des4 c8. as16 c4 R2*10
  r8. d16 d8-- r r8. g16 g8-- r R2*2 r4 r8. a,16
  e'8 r r8. b16 b8-- r r8. ges'16 ges8-- r r8. f16
  f8 r r4
  \times 4/6 {d16 d d d d d}  \times 2/3 {des8. b16 des8}
  r8. f16 f8 r16 a a8 r r8. b,16 b8 r16 es es8 r r8. ges16 ges8 r
  g4 r r r8. b,16 des8 r r4 r r8. es,16 as8 r r4 r r8. b16 es4-> r
  r r8. b16 es4-- r r \times 2/3 {g8. g16 g8} r4 \times 2/3 {g8. g16 g8}
  \times 2/3 {g8. g16 g8} \times 2/3 {g8. g16 g8}
  as2-> b-> r8. b16 b4-- r8. b16 b4-- r8. as16 as4-- r8. as16 as4--
  r8. g16 g4--  r8. g16 g4-- f8. d16 f8 r g8. es16 g8 r16 a a4 r
  c,2( d e) R2*8 r4 f--  R2*71 r4 r8. ges,16 ges8 r r4 R2*9
  r8. heses16 heses8 r r8. heses16 heses8 r ces r r4 R2
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 2/3{ces4. as8 ces4} R2*2 \times 2/3{des4. as8 des4} R2*7
  \override Slur #'transparent = ##t
  r4 r8\acciaccatura f16 f16 r r4 r8 \acciaccatura ges16 ges16 r
  r4 r8 \acciaccatura g16 g16 r r4 r8 \acciaccatura as16 as16 r R2*3
  \override Slur #'transparent = ##f
  f,8. des16 f4~_( f2 \stemUp <ges heses>16)_> q_>\stemNeutral
  r8 r4 R2*8 f2->~ f~ f d'4~ d8. b16-> d2-> r4 r8. ges16 ges4 r R2*19
  ges2 as->~ as R2*13
  \repeat unfold 6 {r4 \times 2/3 {<ges, ges'>8. q16 q8}}
  \repeat unfold 3 {r4 \times 2/3 {<f f'>8. q16 q8}}
  \times 2/3 {<f f'>8. q16 q8} \times 2/3 {<f f'>8. q16 q8}
  es'4..-> es,16-> es2-> g-> as-> g4.-> f8-> c'4..-> f16-> f2->~ f
  b,->~ b des4..-> b16-> b2->_"! не des" es4..-> ces16-> es2-> des4..-> b16->
  \times 2/3 {des4-> ces-> b->} ges4..-> ces16-> b4->( as)
  \times 2/3 {des4-> ces-> b->} ges'2->~ ges8[ des---> b---> ges--->]
  f2->~ f ges->~ ges es4-> r4 R2*4
  b'8. ges16 b4-> ces8. as16 ces4-> b8. ges16 b4-> e8. c16 e4-> f8. des16 f4->
  b8. ges16 b4-> ces8. as16 ces4-> b8. ges16 b4->
}