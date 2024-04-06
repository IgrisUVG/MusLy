\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vcMusic = \relative {
  \clef bass
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4. b8( c f es d
  \time 3/4 c b g c, f4)
  \time 5/4 r1 r4
  \time 3/4 as,4( g f)
  \time 4/4 b'1->
  es,2.( f4 g a b c f,2 d') R1*4
  \repeat unfold 6 {
    \repeat tremolo 32 {d32~}
  }
  \repeat tremolo 32 {d32}
  R1*21
  \key des \major
  R1*6 des,8-> as'4-- f16( c des8) des des f
  es b b des c16 des c b c b as b c des c b c as b c des b c des es f ges f
  es des c b c as b c des b as ges as c b as
  des8 f16( des as'4.) ces16( f, ges8) as R1*4
  des,8-> ges4-- es16( b ces8) ces ces es
  des as as ces b16 ces b as b as ges as
  b des ces b ces as b ces des b ces des es f ges f
  es des ces b ces as b ces des b as ges as ces b as
  b4 as2 ges4~ ges f ges f ges as b~ b16 des ces b
  ces2 des4~ des16 ces b as b2 ces4~ ces16 b as ges
  as2 b4~ b16 as ges f
  \key es \major
  ges4 r r2 R1 es'8-> b'4-- g16( d es8) es es g
  f c c es d16 es d c d c b c d es d c d b c d es c d es f g as g
  f es d c d b c d es c h a h d c d es f es d b' g as b d, f es d as' es f g
  es f es d es c d es f d es f g a b a g f es d es f g f es d c b f' d' c d
  \key b \major
  \clef tenor
  b f' es d g d es f c a' g f b d, es f
  es c b a f' b, c d b g a b g' a, g a
  f d' c b a es' f g b, fis' g a d, c d a
  b d es f g c, d es d b c d es c d es b d es f es a, b c f g, a b a f g a
  b c d es a,4 g r
  \clef bass
  R1*2 d8-> a'4-- fis16( cis d8) d d fis e h h d cis16 d cis h cis h a h
  cis d cis h cis a h cis d h cis d e fis g fis
  cis' a g fis g h cis d a fis gis ais h cis d cis
  h gis fis eis fis dis eis fis gis eis fis gis ais his cisis his
  ais gis fis eis fis dis eis fis f8-> b4-- g16( d
  es8) es es g fis16 a g fis g e fis g a fis g a b c d c b a g fis g e fis g
  a8-> d4-- h16( fis g8) g g h a e e g fis16 g fis e fis e d e
  \key g \major
  fis g fis e fis d e fis g e fis g a h c h
  a g fis e fis d e fis g e d c d fis e fis
  g h a g a fis g a h g a h c d e d
  c h a g a fis g a h g fis e fis a g fis
  g h a g a fis g a h g a h c d e d c h a g a fis g a g2
}