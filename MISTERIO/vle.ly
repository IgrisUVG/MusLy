\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vleMusic = \relative {
  \clef alto
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 g'4( f es)
  \time 4/4 R1*8
  \repeat unfold 6 {
    \repeat tremolo 32 {d32~}
  }
  \repeat tremolo 32 {d32}
  R1*21
  \key des \major
  R1*2
  des8-> as'4-- f16( c des8) des des f es b b des c16 des c b c b as b
  c des c b c as b c des b c des es f ges f
  es des c b c as b c des b as ges as c b c
  des f es des es c des es f des es f ges as b as
  ges f es des es c des es f as, ges f ges es' des c
  as f' es des es c des es b ges' f es f des es f
  c b' as ges as f ges as des,8 c16 b c es des es f4 es des des'
  des,8-> ges4-- es16( b ces8) ces ces es des as as ces b ges des f
  ges16 es' des ces b des ces b as ces b as ges f as f
  ges as b ces des es des ces b ces b as b des ces des b4 r r2 R1
  ges8-> ces4-- b16( f ges8) ges ges b as es es ges f16 ges f es f es des es
  f ges f es f des es f ges es f ges as b ces b
  as ges f es f des es f ges es' des ces des f es f
  ges b as ges as f ges as
  \clef treble
  b ges as b ces des es des
  ces b as ges as f ges as b des ces b ces as' ges f
  des b as ges as f ges as
  \clef alto
  es ces b as b ges' as b
  f es des ces des b ces des ges,8 f16 es f8 b16 as
  \key es \major
  b4 r r2 R1*3 b8-> es4-- c16( g as8) as as c b f f as g16 as g f g f es f
  g as g f g es f g as f g as b c d c b as g f g es f g c f, g a b g' f g
  f c b c b f' g f d g, a b c d es d
  \key b \major
  f4 r r2 R1*2 r2 g8-> d'4-- c16( fis, g8) g g b a d, d es
  d16 es d c d c b c d a' g fis g fis e d
  cis d cis h cis a h cis d h cis d e fis g fis
  e d cis h cis a h cis d h a g a cis h cis 
  d fis e d e cis d e fis d e fis g a h a
  g fis e d e cis d e fis a g fis g e d cis
  a fis' e d e cis d e h g' fis e fis d e d
  fis8-> h4-- g16( d e8) e e gis
  fis16 ais gis fis gis eis fis gis ais fis gis ais his cisis dis cisis
  his ais gis fis gis eis fis gis b d c b c a b c
  \clef treble
  d b c d es f g f d8-> g4-- es16( b
  c8) c c es d a a c h16 d cis h cis a h cis d h cis d e fis g fis
  e d cis h cis a h cis d h a g a cis h a
  \key g \major
  h4 a2 g4~ g r r2
  \clef alto
}