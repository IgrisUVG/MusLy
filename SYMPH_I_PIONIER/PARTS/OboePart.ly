\version "2.19.15"

\language "deutsch"

\header {
  title = "Pioniersymphonie"
  subtitle = "Oboe"
  meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
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

\include "..\oboe.ly"

\score {
  \new Staff
  \oboeMusic
}