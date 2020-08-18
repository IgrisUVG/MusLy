\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%\include "base.ly"

clarinetOneMusic = \relative e'' {
  \base
  \override MultiMeasureRest #'expand-limit = #3
  a2( fis4 cis e d cis a cis h a e~ e) d2( e4~ e d2 e4) R1*8
  d'1~ d d~ d cis( d) e(\( d)~ d d'~ d\) R1*11
  r2^"solo" des,(^~ des!1^~ des!2 c) r es,(~ es!4 d'2.~ d2 e fis2. f4)
  R1 r4 es2->( d4) cis2->( g4) r r2 h(~ h1~ h2 b)\breathe a1~ a~ a
  as1(^~ as b~ b h! c~ c!2) cis->(~ cis dis) r4 e2.-> d-> r4
  cis h a g f e d c b as b c d!1~ d!~ d!
  des4^\markup{\italic legato}es \repeat unfold 7 {des es} e!4 f
  \repeat unfold 7 {e f!} fis! gis \repeat unfold 7 {fis gis!}
  %\override Stem.neutral-direction = #up
  \repeat unfold 4 {a b!} h!1~ h \repeat unfold 4 {<f c'>4<fis cis'>}
  \repeat unfold 8 {<gis dis'><a e'>} \repeat unfold 8 {<b f'><h fis'>}
  \repeat unfold 8 {<c g'><cis gis'>} \repeat unfold 8 {<d a'><es b'>}
}