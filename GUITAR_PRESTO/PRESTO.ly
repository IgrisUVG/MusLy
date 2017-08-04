\version "2.18.0"
\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #28
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

\header{
  title = "Presto"
  composer = "I. G"
  tagline = ##f
}

\include "global.ly"
\include "dynamic.ly"
\include "guitarOne.ly"
\include "guitarTwo.ly"
\include "guitarThree.ly"
\include "bass.ly"

\score {
  \new StaffGroup
  <<
    \new Staff \with {
      instrumentName = "Guitar I"
    }
    \guitarOne
    \new Staff \with {
      instrumentName = "Guitar II"
    }
    \guitarTwo
    \new Staff \with {
      instrumentName = "Guitar III"
    }
    \guitarThree
    \new Dynamics \dynamic
    \new Staff \with {
      instrumentName = "Bass"
    }
    \bass
  >>
}