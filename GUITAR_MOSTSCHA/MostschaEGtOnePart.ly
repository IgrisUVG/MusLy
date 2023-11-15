\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #15
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
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

\header{
  title = "El."
  subtitle = "Guitar I"
  composer = "I. G"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\include "noteHeads.ly"
\include "MostschaTema.ly"
\include "MostschaEGtOne.ly"

\score {
  \new Staff \EGtOne
}