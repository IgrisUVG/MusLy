\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #15
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
  title = ""
  composer = "I. G"
  tagline = ##f
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
      instrumentName = "E.Gt."
    }
    {
      \EGtOne
    }

    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \EGtTwo
    }

    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \EGtThree
    }

    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \EGtFour
    }

    \new Staff \with {
      instrumentName = "Bass"
    }
    {
      \Bass
    }
  >>
}