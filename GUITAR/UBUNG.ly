\version "2.19.15"

\language "deutsch"

\header {
  %dedication = "posw"
  %title = "Presto"
  %subtitle = "podz"
  %subsubtitle = "podpodz"
  instrument = "Guitar"
  %composer = "I. G."
  %arranger = "arr"
  %poet = "poet"
  %meter = "4/4"
  %piece = "nazva"
  %opus = "opus"
  %copyright = "copir"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #16
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.style = #'solid
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

global = {
  %\key d \major
  %\time 4/4
  \override Staff.TimeSignature #'stencil = ##f
}

classicalGuitar = \relative c {
  \override Fingering #'staff-padding = #'()
  \textSpannerDown
  %%%%%%%%%% До мажор
  \cadenzaOn
  \stringNumberSpanner "5"
  c-2^\markup{\raise #2 {C-dur}}\startTextSpan d-4\stopTextSpan
  \stringNumberSpanner "4"
  e-1\startTextSpan f-2 g-4\stopTextSpan
  \stringNumberSpanner "3"
  a-1\startTextSpan h-3 c-1 d-3\stopTextSpan
  \stringNumberSpanner "2"
  e-1\startTextSpan f-2 g-4\stopTextSpan
  \stringNumberSpanner "1"
  a-1\startTextSpan h-3 c-4 h-3 a-1\stopTextSpan
  \stringNumberSpanner "2"
  g-4\startTextSpan f-2 e-1\stopTextSpan
  \stringNumberSpanner "3"
  d-3\startTextSpan c-1 h-3 a-1\stopTextSpan
  \stringNumberSpanner "4"
  g-4\startTextSpan f-2 e-1\stopTextSpan
  \stringNumberSpanner "5"
  d-4\startTextSpan c-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ля минор
  \cadenzaOn
  \stringNumberSpanner "5"
  a-0^\markup{\raise #2 {A-moll}}\startTextSpan h-1 c-2 d-4 e-2 fis-4\stopTextSpan
  \stringNumberSpanner "4"
  gis-1\startTextSpan a-2 h-4 c-2 d-4\stopTextSpan
  \stringNumberSpanner "3"
  e-1\startTextSpan fis-3\stopTextSpan
  \stringNumberSpanner "2"
  gis-1\startTextSpan a-1 h-3 c-4\stopTextSpan
  \stringNumberSpanner "1"
  d-1\startTextSpan e-3 fis-1 gis-3 a-4
  \bar ""\break
  g-2 f-4 e-3 d-1\stopTextSpan
  \stringNumberSpanner "2"
  c-4\startTextSpan h-2 a-1\stopTextSpan
  \stringNumberSpanner "3"
  g-3\startTextSpan f-1 e-3 d-1\stopTextSpan
  \stringNumberSpanner "4"
  c-4\startTextSpan h-3 a-1 g-4 f-2 e-1\stopTextSpan
  \stringNumberSpanner "5"
  d-4\startTextSpan c-2 h-1 a-0\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Соль мажор
  \key g \major
  \cadenzaOn
  \stringNumberSpanner "6"
  g-2^\markup{\raise #2 {G-dur}}\startTextSpan a-4\stopTextSpan
  \stringNumberSpanner "5"
  h-1\startTextSpan c-2 d-4\stopTextSpan
  \stringNumberSpanner "4"
  e-1\startTextSpan fis-3 g-4\stopTextSpan
  \stringNumberSpanner "3"
  a-1\startTextSpan h-3 c-1 d-3\stopTextSpan
  \stringNumberSpanner "2"
  e-1\startTextSpan fis-3 g-4\stopTextSpan
  \stringNumberSpanner "1"
  a-1\startTextSpan h-3 c-1 d-3 e-1 fis-3
  \bar ""\break
  g-4 fis-3 e-1 d-4 c-2 h-1\stopTextSpan
  \stringNumberSpanner "2"
  a-4\startTextSpan g-2 fis-1\stopTextSpan
  \stringNumberSpanner "3"
  e-3\startTextSpan d-1\stopTextSpan
  \stringNumberSpanner "4"
  c-4\startTextSpan h-3 a-1\stopTextSpan
  \stringNumberSpanner "5"
  g-4\startTextSpan fis-3 e-1 d-4 c-2 h-1\stopTextSpan
  \stringNumberSpanner "6"
  a-4\startTextSpan g-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ми минор
  \cadenzaOn
  \stringNumberSpanner "6"
  e-0^\markup{\raise #2 {E-moll}}\startTextSpan fis-1 g-2 a-4\stopTextSpan
  \stringNumberSpanner "5"
  h-1\startTextSpan cis-3 dis-3 e-4\stopTextSpan
  \stringNumberSpanner "4"
  fis-1\startTextSpan g-2 a-4 h-2 cis-4\stopTextSpan
  \stringNumberSpanner "3"
  dis-1\startTextSpan e-2 fis-4\stopTextSpan
  \stringNumberSpanner "2"
  g-1\startTextSpan a-3 h-2 cis-4\stopTextSpan
  \stringNumberSpanner "1"
  dis-1\startTextSpan
  \bar ""\break  
  e-2 d-4 c-2 h-1\stopTextSpan
  \stringNumberSpanner "2"
  a-4\startTextSpan g-2 fis-1\stopTextSpan
  \stringNumberSpanner "3"
  e-3\startTextSpan d-1\stopTextSpan
  \stringNumberSpanner "4"
  c-4\startTextSpan h-3 a-1\stopTextSpan
  \stringNumberSpanner "5"
  g-4\startTextSpan fis-3 e-1 d-4 c-2 h-1\stopTextSpan
  \stringNumberSpanner "6"
  a-4\startTextSpan g-2 fis-1 e-0\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ре мажор
  \key d \major
  \cadenzaOn
  \stringNumberSpanner "5"  
  d'-2^\markup{\raise #2 {D-dur}}\startTextSpan e-4\stopTextSpan
  \stringNumberSpanner "4"
  fis-1\startTextSpan g-2 a-4\stopTextSpan
  \stringNumberSpanner "3"
  h-1\startTextSpan cis-3 d-1 e-3\stopTextSpan
  \stringNumberSpanner "2"
  fis-1\startTextSpan g-2 a-4\stopTextSpan
  \stringNumberSpanner "1"
  h-1\startTextSpan cis-3 d-4 cis-3 h-1\stopTextSpan
  \stringNumberSpanner "2"
  a-4\startTextSpan g-2 fis-1\stopTextSpan
  \stringNumberSpanner "3"
  e-3\startTextSpan d-1 cis-3 h-1\stopTextSpan
  \stringNumberSpanner "4"
  a-4\startTextSpan g-2 fis-1\stopTextSpan
  \stringNumberSpanner "5"
  e-4\startTextSpan d-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Си минор
  \cadenzaOn
  \stringNumberSpanner "5"
  h-1^\markup{\raise #2 {H-moll}}\startTextSpan cis-3 d-4\stopTextSpan
  \stringNumberSpanner "4"
  e-1\startTextSpan fis-3 gis-1 ais-3 h-1 cis-3 d-4\stopTextSpan
  \stringNumberSpanner "3"
  e-1\startTextSpan fis-3\stopTextSpan
  \stringNumberSpanner "2"
  gis-1\startTextSpan ais-3 h-1 cis-3 d-4\stopTextSpan
  \stringNumberSpanner "1"
  e-1\startTextSpan fis-3 gis-1 ais-3
  \bar ""\break
  h-4 a-2 g-4 fis-3 e-1\stopTextSpan
  \stringNumberSpanner "2"
  d-4\startTextSpan cis-3 h-1 a-4 g-2 fis-1 e-4 d-2 cis-1\stopTextSpan
  \stringNumberSpanner "3"
  h-3\startTextSpan a-1\stopTextSpan
  \stringNumberSpanner "4"
  g-4\startTextSpan fis-3 e-1\stopTextSpan
  \stringNumberSpanner "5"
  d-4\startTextSpan cis-3 h-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ля мажор
  \key a \major
  \cadenzaOn
  \stringNumberSpanner "5"
  a-0^\markup{\raise #2 {A-dur}}\startTextSpan h-1 cis-3 d-4 e-2 fis-4\stopTextSpan
  \stringNumberSpanner "4"
  gis-1\startTextSpan a-2 h-4\stopTextSpan
  \stringNumberSpanner "3"
  cis-1\startTextSpan d-2 e-4\stopTextSpan
  \stringNumberSpanner "2"
  fis-1\startTextSpan gis-3 a-4\stopTextSpan
  \stringNumberSpanner "1"
  h-1\startTextSpan cis-3 d-1 e-3 fis-1 gis-3
  \bar ""\break
  a-4 gis-3 fis-1 e-4 d-2 cis-1\stopTextSpan
  \stringNumberSpanner "2"
  h-4\startTextSpan a-2 gis-1\stopTextSpan
  \stringNumberSpanner "3"
  fis-3\startTextSpan e-1\stopTextSpan
  \stringNumberSpanner "4"
  d-4\startTextSpan cis-3 h-1\stopTextSpan
  \stringNumberSpanner "5"
  a-4\startTextSpan gis-3 fis-1 e-4 d-2 cis-1\stopTextSpan
  \stringNumberSpanner "6"
  h-4\startTextSpan a-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Фа-диез минор
  \cadenzaOn
  \stringNumberSpanner "6"
  fis-1^\markup{\raise #2 {Fis-moll}}\startTextSpan gis-3 a-4\stopTextSpan
  \stringNumberSpanner "5"
  h-1\startTextSpan cis-3 dis-1 eis-3 fis-4\stopTextSpan
  \stringNumberSpanner "4"
  gis-1\startTextSpan a-2 h-4\stopTextSpan
  \stringNumberSpanner "3"
  cis-1\startTextSpan dis-3\stopTextSpan
  \stringNumberSpanner "2"
  eis-1\startTextSpan fis-1 gis-3 a-4\stopTextSpan
  \stringNumberSpanner "1"
  h-1\startTextSpan cis-3 dis-1 eis-3
  \bar ""\break
  fis-4 e-2 d-4 cis-3 h-1\stopTextSpan
  \stringNumberSpanner "2"
  a-4\startTextSpan gis-3 fis-1\stopTextSpan
  \stringNumberSpanner "3"
  e-3\startTextSpan d-1 cis-3 h-1\stopTextSpan
  \stringNumberSpanner "4"
  a-4\startTextSpan gis-3 fis-1\stopTextSpan
  \stringNumberSpanner "5"
  e-4\startTextSpan d-2 cis-1\stopTextSpan
  \stringNumberSpanner "6"
  h-4\startTextSpan a-4 gis-3 fis-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ми мажор
  \key e \major
  \cadenzaOn
  \stringNumberSpanner "6"
  e-0^\markup{\raise #2 {E-dur}}\startTextSpan fis-1 gis-3 a-4 h-2 cis-4\stopTextSpan
  \stringNumberSpanner "5"
  dis-1\startTextSpan e-2 fis-4\stopTextSpan
  \stringNumberSpanner "4"
  gis-1\startTextSpan a-2 h-4\stopTextSpan
  \stringNumberSpanner "3"
  cis-1\startTextSpan dis-3 e-1 fis-3\stopTextSpan
  \stringNumberSpanner "2"
  gis-1\startTextSpan a-2 h-4\stopTextSpan
  \stringNumberSpanner "1"
  cis-1\startTextSpan dis-3
  \bar ""\break
  e-4 dis-3 cis-1 h-4 a-2 gis-1\stopTextSpan
  \stringNumberSpanner "2"
  fis-4\startTextSpan e-2 dis-1\stopTextSpan
  \stringNumberSpanner "3"
  cis-3\startTextSpan h-1\stopTextSpan
  \stringNumberSpanner "4"
  a-4\startTextSpan gis-3 fis-1\stopTextSpan
  \stringNumberSpanner "5"
  e-4\startTextSpan dis-3 cis-1 h-1\stopTextSpan
  \stringNumberSpanner "6"
  a-4\startTextSpan gis-3 fis-1 e-0\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% До-диез минор
  \cadenzaOn
  \stringNumberSpanner "5"
  cis'-1^\markup{\raise #2 {Cis-moll}}\startTextSpan dis-3 e-4\stopTextSpan
  \stringNumberSpanner "4"
  fis-1\startTextSpan gis-3 ais-1 his-3 cis-4\stopTextSpan
  \stringNumberSpanner "3"
  dis-1\startTextSpan e-2 fis-4\stopTextSpan
  \stringNumberSpanner "2"
  gis-2\startTextSpan ais-4\stopTextSpan
  \stringNumberSpanner "1"
  his-1\startTextSpan cis-2 h-4 a-2 gis-1\stopTextSpan
  \stringNumberSpanner "2"
  fis-4\startTextSpan e-2 dis-1\stopTextSpan
  \stringNumberSpanner "3"
  cis-3\startTextSpan h-1\stopTextSpan
  \stringNumberSpanner "4"
  a-4\startTextSpan gis-3 fis-1\stopTextSpan
  \stringNumberSpanner "5"
  e-4\startTextSpan dis-3 cis-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Си мажор
  \key h \major
  \cadenzaOn
  \stringNumberSpanner "5"
  h-2^\markup{\raise #2 {H-dur}}\startTextSpan cis-4\stopTextSpan
  \stringNumberSpanner "4"
  dis-1\startTextSpan e-2 fis-4 gis-1 ais-3 h-4\stopTextSpan
  \stringNumberSpanner "3"
  cis-1\startTextSpan dis-3 e-1 fis-3\stopTextSpan
  \stringNumberSpanner "2"
  gis-1\startTextSpan ais-3 h-4\stopTextSpan
  \stringNumberSpanner "1"
  cis-1\startTextSpan dis-3 e-1 fis-3 gis-1 ais-3
  \bar ""\break
  h-4 ais-3 gis-1 fis-4 e-2 dis-1\stopTextSpan
  \stringNumberSpanner "2"
  cis-4\startTextSpan h-2 ais-1\stopTextSpan
  \stringNumberSpanner "3"
  gis-3\startTextSpan fis-1\stopTextSpan
  \stringNumberSpanner "4"
  e-4\startTextSpan dis-3 cis-1\stopTextSpan
  \stringNumberSpanner "5"
  h-4\startTextSpan ais-3 gis-1 fis-4 e-2 dis-1\stopTextSpan
  \stringNumberSpanner "6"
  cis-4\startTextSpan h-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Соль-диез минор
  \cadenzaOn
  \stringNumberSpanner "6"
  gis-1^\markup{\raise #2 {Gis-moll}}\startTextSpan ais-3 h-4\stopTextSpan
  \stringNumberSpanner "5"
  cis-1\startTextSpan dis-3 eis-1 fisis-3 gis-4\stopTextSpan
  \stringNumberSpanner "4"
  ais-1\startTextSpan h-3 cis-4\stopTextSpan
  \stringNumberSpanner "3"
  dis-1\startTextSpan eis-3\stopTextSpan
  \stringNumberSpanner "2"
  fisis-1\startTextSpan gis-1 ais-3 h-4\stopTextSpan
  \stringNumberSpanner "1"
  cis-1\startTextSpan dis-3 eis-1 fisis-3
  \bar ""\break
  gis-4 fis-2 e-4 dis-3 cis-1\stopTextSpan
  \stringNumberSpanner "2"
  h-4\startTextSpan ais-3 gis-1\stopTextSpan
  \stringNumberSpanner "3"
  fis-3\startTextSpan e-1 dis-3 cis-1\stopTextSpan
  \stringNumberSpanner "4"
  h-4\startTextSpan ais-3 gis-1\stopTextSpan
  \stringNumberSpanner "5"
  fis-4\startTextSpan e-2 dis-1\stopTextSpan
  \stringNumberSpanner "6"
  cis-4\startTextSpan h-4 ais-3 gis-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Фа-диез мажор
  \key fis \major
  \cadenzaOn
  \stringNumberSpanner "6"
  fis-2^\markup{\raise #2 {Fis-dur}}\startTextSpan gis-4\stopTextSpan
  \stringNumberSpanner "5"
  ais-1\startTextSpan h-2 cis-4\stopTextSpan
  \stringNumberSpanner "4"
  dis-1\startTextSpan eis-3 fis-4\stopTextSpan
  \stringNumberSpanner "3"
  gis-1\startTextSpan ais-3 h-1 cis-3\stopTextSpan
  \stringNumberSpanner "2"
  dis-1\startTextSpan eis-3 fis-4\stopTextSpan
  \stringNumberSpanner "1"
  gis-1\startTextSpan ais-3 h-1 cis-3 dis-1 eis-3
  \bar ""\break
  fis-4 eis-3 dis-1 cis-4 h-2 ais-1\stopTextSpan
  \stringNumberSpanner "2"
  gis-4\startTextSpan fis-2 eis-1\stopTextSpan
  \stringNumberSpanner "3"
  dis-3\startTextSpan cis-1\stopTextSpan
  \stringNumberSpanner "4"
  h-4\startTextSpan ais-3 gis-1\stopTextSpan
  \stringNumberSpanner "5"
  fis-4\startTextSpan eis-3 dis-1 cis-4 h-2 ais-1\stopTextSpan
  \stringNumberSpanner "6"
  gis-4\startTextSpan fis-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ре-диез минор
  \cadenzaOn
  \stringNumberSpanner "5"
  dis'-1^\markup{\raise #2 {Dis-moll}}\startTextSpan eis-3 fis-4\stopTextSpan
  \stringNumberSpanner "4"
  gis-1\startTextSpan ais-3 his-1 cisis-3 dis-4\stopTextSpan
  \stringNumberSpanner "3"
  eis-1\startTextSpan fis-2 gis-4\stopTextSpan
  \stringNumberSpanner "2"
  ais-2\startTextSpan his-4\stopTextSpan
  \stringNumberSpanner "1"
  cisis-1\startTextSpan dis-2 cis-4 h-2 ais-1\stopTextSpan
  \stringNumberSpanner "2"
  gis-4\startTextSpan fis-2 eis-1\stopTextSpan
  \stringNumberSpanner "3"
  dis-3\startTextSpan cis-1\stopTextSpan
  \stringNumberSpanner "4"
  h-4\startTextSpan ais-3 gis-1\stopTextSpan
  \stringNumberSpanner "5"
  fis-4\startTextSpan eis-3 dis-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ре-бемоль мажор
  \key des \major
  \cadenzaOn
  \stringNumberSpanner "5"  
  des-2^\markup{\raise #2 {Des-dur}}\startTextSpan es-4\stopTextSpan
  \stringNumberSpanner "4"
  f-1\startTextSpan ges-2 as-4\stopTextSpan
  \stringNumberSpanner "3"
  b-1\startTextSpan c-3 des-1 es-3\stopTextSpan
  \stringNumberSpanner "2"
  f-1\startTextSpan ges-2 as-4\stopTextSpan
  \stringNumberSpanner "1"
  b-1\startTextSpan c-3 des-4 c-3 b-1\stopTextSpan
  \stringNumberSpanner "2"
  as-4\startTextSpan ges-2 f-1\stopTextSpan
  \stringNumberSpanner "3"
  es-3\startTextSpan des-1 c-3 b-1\stopTextSpan
  \stringNumberSpanner "4"
  as-4\startTextSpan ges-2 f-1\stopTextSpan
  \stringNumberSpanner "5"
  es-4\startTextSpan des-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Си-бемоль минор
  \cadenzaOn
  \stringNumberSpanner "5"
  b-1^\markup{\raise #2 {B-moll}}\startTextSpan c-3 des-4\stopTextSpan
  \stringNumberSpanner "4"
  es-1\startTextSpan f-3 g-1 a-3 b-1 c-3 des-4\stopTextSpan
  \stringNumberSpanner "3"
  es-1\startTextSpan f-3\stopTextSpan
  \stringNumberSpanner "2"
  g-1\startTextSpan a-3 b-1 c-3 des-4\stopTextSpan
  \stringNumberSpanner "1"
  es-1\startTextSpan f-3 g-1 a-3
  \bar ""\break
  b-4 as-2 ges-4 f-3 es-1\stopTextSpan
  \stringNumberSpanner "2"
  des-4\startTextSpan c-3 b-1 as-4 ges-2 f-1 es-4 des-2 c-1\stopTextSpan
  \stringNumberSpanner "3"
  b-3\startTextSpan as-1\stopTextSpan
  \stringNumberSpanner "4"
  ges-4\startTextSpan f-3 es-1\stopTextSpan
  \stringNumberSpanner "5"
  des-4\startTextSpan c-3 b-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ля-бемоль мажор
  \key as \major
  \cadenzaOn
  \stringNumberSpanner "6"
  as-2^\markup{\raise #2 {As-dur}}\startTextSpan b-4\stopTextSpan
  \stringNumberSpanner "5"
  c-1\startTextSpan des-2 es-4\stopTextSpan
  \stringNumberSpanner "4"
  f-1\startTextSpan g-3 as-4\stopTextSpan
  \stringNumberSpanner "3"
  b-1\startTextSpan c-3 des-1 es-3\stopTextSpan
  \stringNumberSpanner "2"
  f-1\startTextSpan g-3 as-4\stopTextSpan
  \stringNumberSpanner "1"
  b-1\startTextSpan c-3 des-1 es-3 f-1 g-3
  \bar ""\break
  as-4 g-3 f-1 es-4 des-2 c-1\stopTextSpan
  \stringNumberSpanner "2"
  b-4\startTextSpan as-2 g-1\stopTextSpan
  \stringNumberSpanner "3"
  f-3\startTextSpan es-1\stopTextSpan
  \stringNumberSpanner "4"
  des-4\startTextSpan c-3 b-1\stopTextSpan
  \stringNumberSpanner "5"
  as-4\startTextSpan g-3 f-1 es-4 des-2 c-1\stopTextSpan
  \stringNumberSpanner "6"
  b-4\startTextSpan as-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Фа минор
  \cadenzaOn
  \stringNumberSpanner "6"
  f-1^\markup{\raise #2 {F-moll}}\startTextSpan g-3 as-4\stopTextSpan
  \stringNumberSpanner "5"
  b-1\startTextSpan c-3 d-1 e-3 f-4\stopTextSpan
  \stringNumberSpanner "4"
  g-1\startTextSpan as-2 b-4\stopTextSpan
  \stringNumberSpanner "3"
  c-1\startTextSpan d-3\stopTextSpan
  \stringNumberSpanner "2"
  e-1\startTextSpan f-1 g-3 as-4\stopTextSpan
  \stringNumberSpanner "1"
  b-1\startTextSpan c-3 d-1 e-3
  \bar ""\break
  f-4 es-2 des-4 c-3 b-1\stopTextSpan
  \stringNumberSpanner "2"
  as-4\startTextSpan g-3 f-1\stopTextSpan
  \stringNumberSpanner "3"
  es-3\startTextSpan des-1 c-3 b-1\stopTextSpan
  \stringNumberSpanner "4"
  as-4\startTextSpan g-3 f-1\stopTextSpan
  \stringNumberSpanner "5"
  es-4\startTextSpan des-2 c-1\stopTextSpan
  \stringNumberSpanner "6"
  b-4\startTextSpan as-4 g-3 f-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ми-бемоль мажор
  \key es \major
  \cadenzaOn
  \stringNumberSpanner "5"  
  es'-2^\markup{\raise #2 {Es-dur}}\startTextSpan f-4\stopTextSpan
  \stringNumberSpanner "4"
  g-1\startTextSpan as-2 b-4\stopTextSpan
  \stringNumberSpanner "3"
  c-1\startTextSpan d-3 es-1 f-3\stopTextSpan
  \stringNumberSpanner "2"
  g-1\startTextSpan as-2 b-4\stopTextSpan
  \stringNumberSpanner "1"
  c-1\startTextSpan d-3 es-4 d-3 c-1\stopTextSpan
  \stringNumberSpanner "2"
  b-4\startTextSpan as-2 f-1\stopTextSpan
  \stringNumberSpanner "3"
  f-3\startTextSpan es-1 d-3 c-1\stopTextSpan
  \stringNumberSpanner "4"
  b-4\startTextSpan as-2 g-1\stopTextSpan
  \stringNumberSpanner "5"
  f-4\startTextSpan es-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% До минор
  \cadenzaOn
  \stringNumberSpanner "5"
  c-1^\markup{\raise #2 {C-moll}}\startTextSpan d-3 es-4\stopTextSpan
  \stringNumberSpanner "4"
  f-1\startTextSpan g-3 a-1 h-3 c-4\stopTextSpan
  \stringNumberSpanner "3"
  d-1\startTextSpan es-2 f-4\stopTextSpan
  \stringNumberSpanner "2"
  g-2\startTextSpan a-4\stopTextSpan
  \stringNumberSpanner "1"
  h-1\startTextSpan c-2 b-4 as-2 g-1\stopTextSpan
  \stringNumberSpanner "2"
  f-4\startTextSpan es-2 d-1\stopTextSpan
  \stringNumberSpanner "3"
  c-3\startTextSpan b-1\stopTextSpan
  \stringNumberSpanner "4"
  as-4\startTextSpan g-3 f-1\stopTextSpan
  \stringNumberSpanner "5"
  es-4\startTextSpan d-3 c-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Си-бемоль мажор
  \key b \major
  \cadenzaOn
  b-1^\markup{\raise #2 {B-dur}} c-3 d-0 es-1 f-3
  \stringNumberSpanner "4"
  g-1\startTextSpan a-3 b-4\stopTextSpan
  \stringNumberSpanner "3"
  c-1\startTextSpan d-3 es-1\stopTextSpan
  \stringNumberSpanner "2"
  f-2\startTextSpan g-4\stopTextSpan
  \stringNumberSpanner "1"
  a-1\startTextSpan b-2 c-4 d-1 es-2 f-4 g-1 a-3
  \bar ""\break
  b-4 a-3 g-1 f-4 es-2 d-1\stopTextSpan
  \stringNumberSpanner "2"
  c-4\startTextSpan b-2 a-1\stopTextSpan
  \stringNumberSpanner "3"
  g-3\startTextSpan f-1\stopTextSpan
  \stringNumberSpanner "4"
  es-4\startTextSpan d-3 c-1\stopTextSpan
  \stringNumberSpanner "5"
  b-4\startTextSpan a-3 g-1 f-4 es-2 d-1\stopTextSpan
  \stringNumberSpanner "6"
  c-4\startTextSpan b-2\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Соль минор
  \cadenzaOn
  \stringNumberSpanner "6"
  g-1^\markup{\raise #2 {G-moll}}\startTextSpan a-3 b-4\stopTextSpan
  \stringNumberSpanner "5"
  c-1\startTextSpan d-3 e-1 fis-3 g-4\stopTextSpan
  \stringNumberSpanner "4"
  a-1\startTextSpan b-2 cis-4\stopTextSpan
  \stringNumberSpanner "3"
  d-1\startTextSpan e-3\stopTextSpan
  \stringNumberSpanner "2"
  fis-1\startTextSpan g-1 a-3 b-4\stopTextSpan
  \stringNumberSpanner "1"
  c-1\startTextSpan d-3 e-1 fis-3
  \bar ""\break
  g-4 f-2 es-4 d-3 c-1\stopTextSpan
  \stringNumberSpanner "2"
  b-4\startTextSpan a-3 g-1\stopTextSpan
  \stringNumberSpanner "3"
  f-3\startTextSpan es-1 d-3 c-1\stopTextSpan
  \stringNumberSpanner "4"
  b-4\startTextSpan a-3 g-1\stopTextSpan
  \stringNumberSpanner "5"
  f-4\startTextSpan es-2 d-1\stopTextSpan
  \stringNumberSpanner "6"
  c-4\startTextSpan b-4 a-3 g-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Фа мажор
  \key f \major
  \cadenzaOn
  \stringNumberSpanner "6"
  f-2^\markup{\raise #2 {F-dur}}\startTextSpan g-4\stopTextSpan
  \stringNumberSpanner "5"
  a-0\startTextSpan b-1 c-3 d-1 e-3 f-4\stopTextSpan
  \stringNumberSpanner "4"
  g-1\startTextSpan a-3 b-4\stopTextSpan
  \stringNumberSpanner "3"
  c-1\startTextSpan d-3\stopTextSpan
  \stringNumberSpanner "2"
  e-1\startTextSpan f-2 g-4\stopTextSpan
  \stringNumberSpanner "1"
  a-1\startTextSpan b-2 c-4 d-1 e-3
  \bar ""\break
  f-4 e-3 d-1 c-4 b-2 a-1\stopTextSpan
  \stringNumberSpanner "2"
  g-4\startTextSpan f-2 e-1\stopTextSpan
  \stringNumberSpanner "3"
  d-3\startTextSpan c-1\stopTextSpan
  \stringNumberSpanner "4"
  b-4\startTextSpan a-3 g-1\stopTextSpan
  \stringNumberSpanner "5"
  f-4\startTextSpan e-3 d-1 c-3 b-1 a-0\stopTextSpan
  \stringNumberSpanner "6"
  g-3\startTextSpan f-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
  %%%%%%%%%% Ре минор
  \cadenzaOn
  \stringNumberSpanner "5"
  d'-1^\markup{\raise #2 {D-moll}}\startTextSpan e-3 f-4\stopTextSpan
  \stringNumberSpanner "4"
  g-1\startTextSpan a-3 h-1 cis-3 d-4\stopTextSpan
  \stringNumberSpanner "3"
  e-1\startTextSpan f-2 g-4\stopTextSpan
  \stringNumberSpanner "2"
  a-2\startTextSpan h-4\stopTextSpan
  \stringNumberSpanner "1"
  cis-1\startTextSpan d-2 c-4 b-2 a-1\stopTextSpan
  \stringNumberSpanner "2"
  g-4\startTextSpan f-2 e-1\stopTextSpan
  \stringNumberSpanner "3"
  d-3\startTextSpan c-1\stopTextSpan
  \stringNumberSpanner "4"
  b-4\startTextSpan a-3 g-1\stopTextSpan
  \stringNumberSpanner "5"
  f-4\startTextSpan e-3 d-1\stopTextSpan
  \bar ":|.|:"\break
  \cadenzaOff
}

\score {
  \new Staff {
    \global
    \clef "treble_8"
    \classicalGuitar 
  }
  \layout {
    indent = #0
    ragged-right = ##f
    ragged-last = ##f
  }
}
