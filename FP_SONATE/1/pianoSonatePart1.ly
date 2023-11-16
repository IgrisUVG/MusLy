\version "2.19.15"

\language "deutsch"

\header {
  title = "Piano Sonata"
  subtitle = "I"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #33
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
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
%%%%%%%%%%%% D %%%%%%%%%%%%
\include "dynamic.ly"
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
  %{
  \layout { }
  \midi {
  	\tempo 4 = 200
  }
  %}
}