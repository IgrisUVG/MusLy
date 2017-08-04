\version "2.19.15"

\language "deutsch"

\header {
  title = "Колыбельная № 7"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #30
  %score-system-spacing #'basic-distance = #40
  %score-markup-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
}

\include "W7.ly"

\score {
  \new PianoStaff
  <<
    \new Staff = "RH" \siebenteRH
    \new Dynamics = "Dynamics_pf" \dynamicSieben
    \new Staff = "LH" \siebenteLH
  >>
}