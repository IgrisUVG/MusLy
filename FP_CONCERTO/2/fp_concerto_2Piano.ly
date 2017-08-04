\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = ""
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    %\remove "Bar_number_engraver"
  }
}
%%%%%%%%%%% RH %%%%%%%%%%%%
\include "rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%
\include "dynamicPiano.ly"
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamicPiano
    \new Staff = "LH" \links
  >>
}