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
  %Фрагмент из новой партитуры
  %r2. des4( as'2. f4 des b'2 c4~ c2 b4 g) r g2( f4 es g2 as4~ as es2 f4~ f2)
  %Фрагмент из старой партитуры
  r2. ges,4( des'2. b4 ges es'2 f4~ f2 es4 c)
  r c2( b4 as c2 des4~ des as2 b4~ b2 
  %as'4 f e!)
  %Продолжение из новой
  es4 c)
  <<
    {
      R1
    }
    \\
    {
      b2( as4 fes)
    }
  >>
  R1*54
  \key g \major
  d'4 e d h d c8( h) a2 e'4 d d8( e) e4 d4.( c8 h2) c4 d d8( e) e4 d2 d
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
  es,2.( f4 g a b c f,2 d'~ d1~ d) R1*23
  <<
    {
      r2 des( c4 as) r2 R1
    }
    \\
    {
      R1 r2 ges( f4 des) r2
    }
  >>
  R1*53
  \key g \major
  h'4 a8( g) g4 g8( fis) g4 g d2 h'4 a8( g) g4 g a2 g2 h4 a8( g) g4 g a2 h2
}