\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\header {
  title = "№ 27"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout{
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "guitar_AN27.ly"
\include "guitar_AN27new.ly"
\include "guitar_AN27clear.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \line { \circle 6"= D" }
      }
    }
  }
  %\guitarAN
  %\guitarANnew
  \guitarANclear
}