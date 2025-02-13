\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

fagottoMusic = \relative e {
  \base
  \override MultiMeasureRest.expand-limit = #3
  \clef bass
  \repeat unfold 3 {d2( d')} d1( a) R1*12
  cis2.\( d4 h2. d4 fis,2. a4 e1~\)_( e d_~ d) R1*43
  r2^"solo" a(~ a1~ a2 c,) r h(~ h4 cis'2.~ cis2 g' h2. b4)
  R1 r4 g2->( h,4) f2->( e4) r r2 g!(~ g!1~ g!2 fis) f1~ f!~ f!
  es''4( d fis, c' gis g2.) R1*14
  ais,,4_( h dis g gis ais h d) fis1~ fis~ fis fis,
}