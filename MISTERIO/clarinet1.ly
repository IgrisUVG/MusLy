\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetEinsMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4 g''-- b-- c--~
  \time 3/4 c2.
  \time 5/4 r1 r4
  \time 3/4 b,4 f'( es)
  \time 4/4 c8( g' f b g c d,4->) c1_(
  f,2.)( g4 a b c d g,2 es') R1*3
  e,2.-- a4-- e'2-- g4-- d-- e2-- d4-- a--
  \repeat unfold 2 {c2-- \tuplet 3/2 {d4-- e-- b--}}
  a'1-- R1 r2 g( des'1)
  R1*5 b,,4.( es8 b'4 des8 as b4 as8 es ges2 as b c b ces4 b as2)
  c!8( b) des( c) c( b c des) des4( b8 ges ces4 c8 e
  f es des c b as ges f es des c b c2) des( es~ es4 ces as'2~ as4) r r2
  R1*3 \repeat unfold 4 {r2 c, R1}
  R1*43
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetZweiMusic = \relative {
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*13 f''1( e) r2 c( b'1)
  R1*7 f,4.( b8 f'4 as8 es f4 es8 b des c b as
  ges des) es( des) f( es) ges( f) as( ges) b( as) as( ges as b)
  ces( b ges des es ges  as c des c b as ges f es des)
  es4.( as8 es'4 ges8 des es4 des8 as c4 as f des b ges des'2.) r4
  R1*3 \repeat unfold 4 {r2 as R1}
  R1*43
  \key g \major
}