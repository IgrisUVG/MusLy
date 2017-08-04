\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  ragged-last = ##t
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
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
\include "secondo.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    \new PianoStaff \with {
      instrumentName = #"Primo"
    }
    <<
      \new Staff = "RH" \primoRH
      \new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \primoLH
    >>
    \new PianoStaff \with {
      instrumentName = #"Secondo"
    }
    <<
      \new Staff = "RH" \secondoRH
      \new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \secondoLH
    >>
  >>
}