\version "2.19.15"

\language "deutsch"

\header {
  title = "Wiegenlied № 3"
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
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.padding = #0
    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

\include "W3.ly"

\score {
  \new PianoStaff
  \with {
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #20
  }
  <<
    \new Staff = "RH" \dritteRH
    \new Staff = "LH" \dritteLH
  >>
}