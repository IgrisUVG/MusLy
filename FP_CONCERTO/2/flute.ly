\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

fluteMusic = \relative e' {
  \base
  \override MultiMeasureRest.expand-limit = #3
  g2_( a h fis g a a) a
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "rit."
  a a
  \mark "a tempo"
  R1*8 a'1~ a a~ a h\(( a) a( g)~ g a~ a\) R1*27
  r2^"solo" f(~ f!1~ f!2 e) r2 g,(~ g4 fis'2.~ fis2 gis b2. a4) R1 r4 g2->( fis4)
  f2->( h,4) r r2 es(~ es1~ es2 d) \breathe des1->^~ des!^~ des!
  d4^\markup{\italic legato}e d e \repeat unfold 3 {d! e! d e}
  \repeat unfold 8 {f! fis!} \repeat unfold 4 {g a g! a}
  \repeat unfold 4 {b! h!} c1~ c! gis'->~ gis!
  d!4^\markup{\italic legato} cis! \repeat unfold 7 {d! cis!}
  \repeat unfold 8 {es!4 d} e!4 dis \repeat unfold 7 {e4 dis}
  \repeat unfold 8 {f4 e} fis!4 eis \repeat unfold 7 {fis4 eis}
  \repeat unfold 6 {g4 fis}
}