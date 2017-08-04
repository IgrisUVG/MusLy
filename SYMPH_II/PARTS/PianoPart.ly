\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
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
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    %\remove "Bar_number_engraver"
  }
}
%%%%%%%%%%% RH %%%%%%%%%%%%
\include "../rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "../links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
  
}
%%%%%%%%%% PED %%%%%%%%%%%%
\include "../pedal.ly"
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
    \new Dynamics = "PED" \pedal
  >>
}