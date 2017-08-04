\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "V."
  meter = ""
  composer = ""
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #20
  %score-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    %proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  %indent = #15
  %ragged-right = ##f
  %ragged-last = ##f
}

\include "global.ly"
\include "guitarOne.ly"
\include "guitarTwo.ly"

\score {
  \new StaffGroup = "Guitar" <<
    \new Staff \with {
      instrumentName = \markup {
        \right-column {
          "Guitar I"
          \line { \circle 6"= D" }
        }
      }
    }
    \guitarOne
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Dynamics = "dynamics"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff \with {
      instrumentName = \markup {
        \right-column {
          "Guitar II"
          \line { \circle 6"= D" }
        }
      }
    }
    \guitarTwo
  >>
}