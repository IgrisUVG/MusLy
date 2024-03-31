\version "2.19.15"

\language "deutsch"

\header {
  title = "Колыбельная"
  subtitle = "Zum Geburtstag V. 1998"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #28
  %score-system-spacing.basic-distance = #40
  %score-markup-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #30
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 7
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
}

\include "W4.ly"

\score {
  \new PianoStaff
  <<
    \new Staff = "RH" \vierteRH
    \new Dynamics = "Dynamics_pf" \dynamicVier
    \new Staff = "LH" \vierteLH
  >>
  %\midi {}
}