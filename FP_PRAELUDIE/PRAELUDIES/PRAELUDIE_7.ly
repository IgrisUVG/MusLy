\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№7"
  %meter = "Allegretto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #24
  system-system-spacing.basic-distance = #24
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #14
    \remove "Bar_number_engraver"
  }
}

\include "../sieben.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsSieben
    \new Staff = "LH" \linksSieben
  >>
}