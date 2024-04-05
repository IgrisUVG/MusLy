\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniEinsMusic = \relative {
  \set Score.skipBars = ##t
  <<
    {
      \time 4/4 s1*2
      \time 3/4 s2.
      \time 4/4 f''1(
      \time 3/4 es2 d4)
      \time 4/4 s1*2
      \time 3/4 s2.
      \time 4/4 f1(
      \time 3/4 es2 d4)
      \time 5/4 s1 s4
    }
    \\
    {
      c1~ c~ c2.~ c1~ c2.~ c1~ c~ c2.~ c1~ c2.~ c1~ c4
    }
  >>
  \time 3/4 g'4( b c)
  \time 4/4 R1*5
  f,,2.(^"Solo" g4 a b c d g,1)~
  \repeat tremolo 32 {g32~^"Tutti"}
  \repeat unfold 5 {
    \repeat tremolo 32 {g32~}
  }
  \repeat tremolo 32 {g32}
  R1*21
  \key des \major
  as'8-> des4-- b16( f ges8) ges ges b as es es ges
  f16 ges f es f es des es f as ges f ges es f ges as f ges as b c des c
  b as ges f ges es f ges as f es des es ges f es
  f4 es2 des4~ des c des c des es f~ f16 as ges f
  ges2 as4~ as16 ges f es f2 ges4~ ges16 f es des
  es2 f4~ f16 es des c des4 c ces b8 as
  b16 des ces b ces as b ces des b ces des es f ges f
  es des ces b ces as b ces des b as ges as ces b as
  b8-> es4-- ces16( ges as8) as as ces b f f as ges16 as ges f ges f es f
  ges4 r r2 R1*7
  des'8-> ges4-- es16( b ces8) ces ces es des as as ces b16 ces b as b as ges as
  \key es \major
  b8-> es4-- c16( g as8) as as c b f f as g16 as g f g f es f
  g b as g as f g as b g as b c d es d c b as g as f g as b g f es f as g f
  g4 f2 es4~ es d es d c d2 es4
  c'8-> f4-- d16( a b8) b b d c g g b a16 b a g a g f g
  \key b \major
  b4 r r2 R1*5
  %\key d \major
  a'8-> d4-- h16( fis g8) g g h a e e g fis16 g fis e fis e d e
  fis a g fis g e fis g a fis g a h cis d cis 
  h a g fis g e fis g a fis e d e g fis e
  fis4 e2 d4~ d r r2
  %\key fis \major
  ais'8-> dis4-- h16( fis gis8) gis gis h ais eis eis gis
  g16 b a g a f g a
  %\key b \major
  b g a b c d es d c es d c d b c d es c d e fis g a g f es d c b g a b
  %\key d \major
  h d cis h cis a h cis d h cis d e fis g fis
  e d cis h cis a h cis d h a g a cis h a
  \key g \major
  g4 r r2
}