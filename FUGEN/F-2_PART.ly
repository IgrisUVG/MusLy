\version "2.19.15"

\language "deutsch"

\header {
  title = "Fuge 2"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #10
  score-markup-spacing.basic-distance = #25
  %markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  %score-system-spacing.basic-distance = #40  
  last-bottom-spacing.basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 7
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.padding = #0
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
  }
}

#(ly:font-config-add-font "gothicg_.ttf")

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "F-2.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \zweiteRH
    \new Staff = "LH" \zweiteLH
  >>
}