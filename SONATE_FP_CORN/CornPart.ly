\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #14
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "corno1.ly"
\include "dynamicCorno.ly"
\score {
  <<
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Corno"
          \line { "in F" }
        }
      }
    }
    \transpose f c' 
    \cornoOneMusic
    \new Dynamics \dynamicCorno
  >>
}