\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #20
  %score-system-spacing #'basic-distance = #20
  %score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\header {
  title = \markup { \fontsize #2 "1" }
  subtitle = "Vierte"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\include "pianoScripts.ly"
\include "global.ly"
\include "quarto.ly"

%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" << \global \rechtsFour >>
    \new Dynamics = "Dynamics_pf" \dynamicFour
    \new Staff = "LH" << \global \linksFour >>
  >>
  \layout {
    \context {
      \Score
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
      \remove "Bar_number_engraver"
    }
    %ragged-last = ##t
  }
}