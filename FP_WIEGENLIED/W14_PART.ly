\version "2.19.15"

\language "deutsch"

\header {
  title = "Колыбельная №14"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #30
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #40
  system-system-spacing.basic-distance = #35
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
    %\override StaffGrouper.staff-staff-spacing.padding = #0
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #1
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }\context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
}

\include "W14.ly"

\score {
  \new PianoStaff
  \with {
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #20
  }
  <<
    \new Staff = "RH" \viezehnteRH
    \new Staff = "LH" \viezehnteLH
    \new Dynamics = "Dynamics_pf" \dynamicVierzehn
    \new Staff = "B" \viezehnteBass
  >>
}