\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "../base.ly"

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
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\include "..\clarinet1.ly"
\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
       "Clarinet"
        \line { "in B" \smaller \flat }
      }
    }
  }
  \transpose b c' 
  \clarinetOneMusic
}