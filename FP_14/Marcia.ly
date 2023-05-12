\version "2.19.15"

\language "deutsch"

\header {
  title = "***"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  score-markup-spacing.basic-distance = #25
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #18
  %score-system-spacing.basic-distance = #40
  last-bottom-spacing.basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "Mrechts.ly"
\include "Mlinks.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsDrei
    \new Dynamics = "Dynamics_pf" \dynamicDrei
    \new Staff = "LH" \linksDrei
  >>
  \header {
    title = ##f
    %meter = "Marcia"
    composer = ##f
  }
  \layout {
    \context {
      \Score
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      \remove "Bar_number_engraver"
    }
  }
}
