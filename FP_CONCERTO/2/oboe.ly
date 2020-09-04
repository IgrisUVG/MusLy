\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

oboeMusic = \relative e'' {
  \base
  \override MultiMeasureRest.expand-limit = #3
  R1*13 e1~ e e~ e fis( g) fis(\( e)~ e d~ d\) R1*59
  es4( d fis, c' gis g2.) cis4^\markup{\italic legato} c
  \repeat unfold 7 {cis! c} d cis! \repeat unfold 7 {d cis}
  \repeat unfold 8 {dis d} \repeat unfold 8 {e dis}
  \repeat unfold 8 {eis e} \repeat unfold 6 {fis eis}
}