\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№5"
  %meter = "nonPresto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #29
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

\include "../pianoScripts.ly"
\include "../funf.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsFunf
    \new Dynamics = "DYN" \dynamicFunf
    \new Staff = "LH" \linksFunf
  >>
}
