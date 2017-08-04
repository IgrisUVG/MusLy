\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude № 1"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #30
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

\include "../EtudEins.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano"
    \new Staff = "RH" <<\globalOne \rechtsOne>>
    \new Staff = "LH" <<\globalOne \linksOne>>
  >>
}