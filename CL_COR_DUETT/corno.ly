\version "2.19.15"

\language "deutsch"

cornoMusic = \relative {
  \time 3/4
  %\key c \minor
  g4 c fis es a,2~ a4 b8( f) r4
  \bar "||"
  \time 4/4
  %\key b \minor
  b,1(~ b4 des b' es g1 ges) des~ des r2 c'4( b~ b2 a~ a) c4( b~
  b2 a) as1~ as4 fes( heses as
  fes2 es heses4) fes'( heses as
  fes2 es heses4) es( f heses ges1)
  r4 b,,-- es-- es'~ es2-- as,~ as1-- b--
  r4 des,( b' es g1 ges) des~ des
  r2 c'4( b~ b2 a~ a) c4( b~ b2 a~ a4) a,2-> b4->~ b ces2-> c4->
  des-> d-> es-> e-> f8-> ges( g) as-. a-. b-. ces4-.->
  \bar "||"
  %\key b \major
  \tuplet 3/2 2 {
    r4
    \repeat unfold 7 {h,4-. r as-. r}
    h r as d(~-> 
  }
  d2
  \tuplet 3/2 2 {
    des2 c4~ c h)
    \repeat unfold 3 {h4-. r as-. r}
    ces r as a'!~
  }
  a2~ a2. a,8-.-> a-.-> a4-.-^ \acciaccatura {ges16 f e} es4->
  \tuplet 3/2 2 {r2 ges'4( d b) e( d a) es'(}
  c4) g-- g-- g-- r h,2.\fermata
  \bar "||"
  %\key b \minor
  b1~( b4 des b' es ges1 e!) c~ c r2 b'4( as~ as2 ges~ ges f~
  f) b4( as  
  %\key b \major
  g2 d) f( c) r4 d,( b' f' g1 ges) des~
  %\key d \minor
  des~ des2 des4-- a--
  %\key b \minor
  ges2( des') ces1~ ces~ ces~ ces2 ces4 g
  %\key a \major
  e2 h'
  \bar "||"
  %\key b \major
  c,1 h as g
  %\key f \major
  c h a g c ces a g
}