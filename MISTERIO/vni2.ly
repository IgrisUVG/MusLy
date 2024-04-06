\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniZweiMusic = \relative {
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4
  <<
    {
      b'1~
      \time 3/4
      b2.
    }
    \\
    {
      s1 as2.
    }
  >>
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4
  <<
    {
      b1~
      \time 3/4
      b2.
    }
    \\
    {
      s1 as2.
    }
  >>
  \time 5/4 r1 r4
  \time 3/4 b4\( <f' b>(<es as>)\)
  \time 4/4 R1*7 r2
  \repeat tremolo 16 {g,32~}
  \repeat unfold 6 {
    \repeat tremolo 32 {g32~}
  }
  \repeat tremolo 32 {g32}
  R1*21
  \key des \major
  R1*4
  as8-> des4-- b16( f ges8) ges ges b as es es ges
  f16 ges f es f es des es f as ges f ges es f ges as f ges as b c des c
  b as ges f ges es f ges as f es des es ges f es
  f4 es2 des4~ des c des c des16 b' as ges as es f ges f as ges f ges des ges f
  ges4 as2 ges4~ ges f ges f ges f2 es4~ es f es2 des4 r r2 R1*5
  ges8-> des'4-- b16( f ges8) ges ges b as es es ges f16 ges f es f es des es
  f ges f es f des es f ges es f ges as b ces b 
  as ges f es f des es f ges es des ces des f es f
  \key es \major
  ges4 r r2 R1*5 g8-> c4-- as16( es f8) f f as g d d f es16 f es d es d c d 
  es g f es f d es f g es f g a b c b
  \key b \major
  c4 r r2
  r d8-> g4-- es16( b c8) c c es d a a c
  b16 c b a b a g a b d c b c a b c d b c d es f g f es d c b c a b c
  d g, a b fis a g a b c d es d e fis g
  %\key d \major
  fis4 e2 d4~ d cis d r R1*2
  a8-> d4-- h16( fis g8) g g h
  ais16 cis h ais h gis ais h cis ais h cis dis e fis e
  dis cis h ais h gis ais h cis ais his cisis dis eis fis eis
  dis cis h ais h gis ais his d f es d es c d es
  f d es f g a b a g b a g a f g a b g a b c d es d c b a g f d e fis
  g h a g a fis g a h g a h c d e d c h a g a fis g a h g fis e fis a g fis
  g4 r r2 R1
}