\version "2.19.15"

\language "deutsch"

\header {
  title = "Колыбельная № 8"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  %score-system-spacing.basic-distance = #40
  %score-markup-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 7
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override StaffGrouper.staff-staff-spacing.basic-distance = #11
  }
}

\include "W8.ly"

\score {
  \new PianoStaff
  <<
    \new Staff = "RH" \achteRH
    %\new Dynamics = "Dynamics_pf" \dynamicSieben
    \new Staff = "LH" \achteLH
  >>
  %\midi {}
}