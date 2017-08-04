\version "2.18.0"
\language "deutsch"
fagottoMusic = \relative es' {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*6 r4 c-. r a-. es-. r R2*5 es2~ es~ es
  R2*14 des'8( ces) r4
  R2*16 r4 b(es,8) r r4 r b'~ b r R2*7
  es2( eses deses b) as ges f R2
  r8. b16 g8. es16 ces8. as16 fes8 r16 fes'
  as8 r r8. des,16 fis8 r r4 R2 b ces des d8 r r4
  c8. a16 c8 r a8. ges16 a8 r ges8. es16 ges8 r
  es8. des16 es8 r des'8. b16 des8 r b8. g16 b8 r
  g8. e16 g8 r e8. des16 e8 r des8. ces16 des8 r
  b8. ges16 b8 r es,2 r4 r8. b''16 es4-- r
  es,4.-- b'8-- ces2 b as as8. es16 as8 r
  es8. es16 es8 r es2 f as8( g as4)
  c,4.( d8 es2) f8. d16 f8 r g8. es16 g8 r
  a8. e16 a8 r c,2( g e) R2*2
  r4 es''( as,2) r4 f'( b,2~ b4. as8) as4.( b8) b2
   R2*35 R2*23 r4 b( es,2) R2*3 ges2~( ges
   es~ es des~ des b) R2 r4 des~ des2 R2*5 as'4 r
   R2 es2 R2 r4 c~ c2 R2*2
   \set tupletSpannerDuration = #(ly:make-moment 2 4)
   \times 2/3{ces'4. as8 ces4} R2*2 \times 2/3{des4. as8 des4}
   R2*7 r4 g,-. r fes-. b,-. es_( b a b ces) R2*13 f2( a b d8) r r4
   R2*9 a,2~( a des,~ des f) R2*3 d'2~ d b~( b ges~ ges)
   des~ des R2*11 \repeat unfold 4 {\times 2/3{ces'4 ces ces}}
   \repeat unfold 8 {\times 2/3{b4 b b}} g2~ g~ g~ g R2*17
   b2-> as-> ges-> f-> es4-> r R2*9
   \set Staff.beatStructure = #'( 4)
   ges8 des' ges( as) des( ces) f, des ges, des' ges b
}