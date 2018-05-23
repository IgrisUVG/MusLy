\version "2.18.0"

\language "deutsch"

\header {
  title = "V."
  meter = ""
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #16
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 13
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\include "guitarScript.ly"
\include "global.ly"
\include "guitarOne.ly"

\score {
  \new Staff \with {
    instrumentName = \markup {
      \right-column {
        "Guitar I"
        \line { \circle 6"= D" }
      }
    }
  }
  \guitarOne
}