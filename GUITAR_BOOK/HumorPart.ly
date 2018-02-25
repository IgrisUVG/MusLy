\version "2.19.15"

\language "deutsch"

\header {
  title = "Humoreske"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-markup-spacing.basic-distance = 15
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 25
  system-system-spacing.basic-distance = 23
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 25

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
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "Humor.ly"
\include "HumorVolta.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new Staff \with {
    instrumentName = "Guitar"
  }
  \humor
  %\humorVolta
}
