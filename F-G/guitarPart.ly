\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "F&G"
  subtitle = "Guitar"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\include "guitar.ly"

\score {
  \new Staff \with {
    instrumentName = \markup {
      { \circle 6"= D" }
    }
  }
  \removeWithTag #'Partitur
  \guitarMusic
}