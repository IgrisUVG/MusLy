\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№4"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #30
  top-markup-spacing.basic-distance = #25
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #30
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

\include "../fier.ly"

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "RH" \rechtsFier
    \new Staff = "LH" \linksFier
  >>
}