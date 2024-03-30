\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude № 5"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #26
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.padding = #0
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    proportionalNotationDuration = #(ly:make-moment 1/8)
  }
}

\include "../EtudFunf.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff
  <<
    \new Staff = "RH" <<\globalFive \rechtsFive>>
    \new Dynamics = "Dynamics_pf" \dynamicFive
    \new Staff = "LH" <<\globalFive \linksFive>>
  >>
  %\midi {}
}