\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Märchen"
  subtitle = "№ 1"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "Mrechts.ly"
\include "Mlinks.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsEins
    %\new Dynamics = "Dynamics_pf" \dynamicEins
    \new Staff = "LH" \linksEins
  >>
}