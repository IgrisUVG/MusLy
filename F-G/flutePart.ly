\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "F&G"
  instrument = "Flute"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
  
  footnote-padding = 8
  footnote-footer-padding = 7
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\include "flute.ly"
\include "footnote.ly"

\score {
  \new Staff \fluteMusic
}
