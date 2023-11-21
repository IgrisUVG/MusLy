\version "2.19.15"

\language "deutsch"

%#(set-global-staff-size 18)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #30
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #30
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \StaffGroup
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\header{
  title = "El."
  composer = "I. G"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\include "noteHeads.ly"
\include "MostschaTema.ly"
\include "MostschaEGtOne.ly"
\include "MostschaEGtTwo.ly"
\include "MostschaEGtThree.ly"
\include "MostschaEGtFour.ly"
\include "MostschaBass.ly"


\score {
  \new StaffGroup
  <<
    \new Staff \with {
      instrumentName = "E.Gt.I"
    }
    {
      \removeWithTag #'Part
      \EGtOne
    }

    \new Staff \with {
      instrumentName = "E.Gt.II"
    }
    {
      \removeWithTag #'Part
      \EGtTwo
    }

    \new Staff \with {
      instrumentName = "E.Gt.III"
    }
    {
      \removeWithTag #'Part
      \EGtThree
    }

    \new Staff \with {
      instrumentName = "E.Gt.IIII"
    }
    {
      \removeWithTag #'Part
      \EGtFour
    }

    \new Staff \with {
      instrumentName = "Bass"
    }
    {
      \removeWithTag #'Part
      \Bass
    }
  >>
}