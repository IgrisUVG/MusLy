\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Presto"
  subtitle ="Guitar II"
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
  indent =  1\cm
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\include "global.ly"
\include "dynamic.ly"
\include "guitarTwo.ly"
\score {
  <<
    \new Staff \guitarTwo
    \new Dynamics \dynamic
  >>
}