\version "2.19.11"

\language "deutsch"

\header {
  title = "№6"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #28
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #28
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
    \remove "Bar_number_engraver"
  }
}

\include "../sechs.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsSechs
    \new Dynamics = "DYN" \dynamicSechs
    \new Staff = "LH" \linksSechs
  >>
}