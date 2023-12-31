\version "2.19.15"

\language "deutsch"

\header {
  title = "Fine"
  subtitle = "Archi"
  %meter = "Lustig"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #20
  left-margin = 20
  right-margin = 20
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    %\Staff \RemoveEmptyStaves
    %\override VerticalAxisGroup.remove-first = ##t
  }
}

\include "archi.ly"
%\include "dynamic.ly"

\score {
  \new StaffGroup <<

    \new Staff {
      \archiIMusic
    }
    
    \new Staff {
      \archiIIMusic
    }
    
    %\new Dynamics
    %\removeWithTag #'Bass
    %\dynamic
  >>
}