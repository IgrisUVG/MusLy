\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Wiegenlied"
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #28
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

\include "W13.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
     \new Staff = "RH" \dreizehnteRH
     \new Dynamics = "Dynamics_pf" \dynamicDrzehn
     \new Staff = "LH" \dreizehnteLH
  >>
}