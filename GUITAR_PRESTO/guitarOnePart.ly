\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Presto"
  subtitle ="Guitar I"
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
\include "global.ly"
\include "guitarOne.ly"
\score {
  \new Staff \with {
    instrumentName = "Guitar I"
  }{
  \override DynamicLineSpanner.staff-padding = #3
  \guitarOne
  }
}