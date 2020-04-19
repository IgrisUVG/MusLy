\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #15
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

\header{
  title = ""
  composer = "I. G"
  tagline = ##f
}

\include "noteHeads.ly"
\include "MostschaTema.ly"
\include "MostschaBass.ly"

\score {
  \new Staff \with {
    instrumentName = "Bass"
  }
  {
    \removeWithTag #'Partitur
    \Bass
  }
}