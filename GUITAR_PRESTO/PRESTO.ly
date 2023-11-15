%\version "2.19.15"
\version "2.18.0"

\language "deutsch"

#(set-global-staff-size 16)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
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
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
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
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = "Guitar I"
    }
    \removeWithTag #'Part
    \guitarOne

    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = "Guitar II"
    }
    \removeWithTag #'Part
    \guitarTwo

    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = "Guitar III"
    }
    \removeWithTag #'Part
    \guitarThree

    \new Dynamics \dynamic

    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = "Bass"
    }
    \removeWithTag #'Part
    \bass
  >>
}