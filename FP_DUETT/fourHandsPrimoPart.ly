\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  subtitle = "Primo"
  meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)

\paper {
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #18
  last-bottom-spacing #'basic-distance = #20
  left-margin = 25
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
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% INCLUDE %%%%%%%%%
\include "primo.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \primoRH
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \primoLH
  >>
}