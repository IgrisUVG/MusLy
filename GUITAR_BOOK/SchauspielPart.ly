\version "2.19.15"

\language "deutsch"

\header {
  title = "Schauspiel"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-markup-spacing.basic-distance = 15
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 30
  system-system-spacing.basic-distance = 30
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 30

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  %ragged-last = ##t
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "Schauspiel.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    \new Staff \with {
      instrumentName = "Guitar"
    }
    \removeWithTag #'Book
    \schauspiel

    \new Dynamics \schauspielDynamics
  >>
}