\version "2.19.15"

\language "deutsch"

\header {
  title = "Pioniersymphonie"
  subtitle = "Piano"
  %meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override BarNumber.break-visibility = ##(#f #t #t)
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    %\remove "Bar_number_engraver"
  }
}

%%%%%%%%%%% RH %%%%%%%%%%%%
\include "../rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "../links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%

\score {
  \new PianoStaff
  <<
    \new Staff = "RH" \rechts
    %\new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
    %\new Dynamics = "PED" \pedal
  >>
}