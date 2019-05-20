\version "2.19.15"

\language "deutsch"

\header {
  title = "F&G War."
  instrument = "Guitar"
  %meter = "Lustig"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #3
  markup-system-spacing.basic-distance = #22
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #15
  left-margin = 20
  right-margin = 20
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/16)
    %\remove "Bar_number_engraver"
  }
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}

\include "guitar.ly"
\include "dynamicG.ly"
\include "ossia.ly"

\score {
  \new StaffGroup <<

    \new Staff {
      \removeWithTag #'Partitur
      \guitarMusic
    }
    
    \new Dynamics \dynamic

    %\new Staff \ossia

  >>
}
