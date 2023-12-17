\version "2.18.0"

\language "deutsch"

\header {
  %title = ""
  subtitle = "Voice"
  %meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #20
  score-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #20
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

\include "../voice.ly"

\score {
  \new Staff \soloVoiceOne
}
\score {
  \new Staff \soloVoiceTwo
}
\score {
  \new Staff \soloVoiceThree
}