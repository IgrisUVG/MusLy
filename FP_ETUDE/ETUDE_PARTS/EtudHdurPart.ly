\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude H-dur"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

\include "../EtudHdur.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsHdur
    \new Dynamics = "Dynamics_pf" \dynamicHdur
    \new Staff = "LH" \linksHdur
  >>
}