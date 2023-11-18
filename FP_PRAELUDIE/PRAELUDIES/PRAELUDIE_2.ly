\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№2"
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\include "../zwei.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsZwei
    \new Dynamics = "DYN" \dynamicZwei
    \new Staff = "LH" \linksZwei
  >>
}