\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "4.5.97"
  %meter = "Rubato"
  subtitle = "Clarinetto in B"
  subsubtitle = "II"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}

\include "clarinet2.ly"

\score {
  \new Staff
  %\transpose c' b
  \clarinetZweiMusic
}