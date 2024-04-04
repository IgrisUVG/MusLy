\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cornoEinsMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 f'1->~ f4
  \time 3/4 es2.->
  \time 4/4 R1*13
  \repeat unfold 2 {\tuplet 3/2 {a4-- h-- g--}} a1  
  R1*10
  r2. ges,4( des'2. b4 ges es'2 f4~ f2 es4 c)
  r c2( b4 as c2 des4~ des as2 b4~ b2 as'4 f
  e!)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cornoZweiMusic = \relative {
  %\clef bass
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 b1->~ b4
  \time 3/4 b2.->
  \time 4/4 R1*4
  es,2.( f4 g a b c f,2 d'~ d1~ d) R1*16
  r2. des4( as'2. f4 des b'2 c4~ c2 b4 g)
  r g2( f4 es g2 as4~ as es2 f4~ f2)
}