\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "V."
  subtitle = "Guitar I"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 15
  %outer-margin = 10
}

\layout {
  indent = 1.3\cm
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}

\include "guitarScript.ly"
\include "global.ly"
\include "guitarOne.ly"

\score {
  \new Staff \with {
    \override InstrumentName.self-alignment-X = #RIGHT
    instrumentName = \markup {
      \line { \circle 6"= D" }
    }
  }
  \removeWithTag #'Partitur
  \guitarOne
}