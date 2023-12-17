\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  %title = ""
  subtitle = "Piano"
  %meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #24
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #20
  score-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #24
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
%    \override StaffGrouper.staff-staff-spacing.basic-distance = 
%    #'((basic-distance . 12)
%       (minimum-distance . 8)
%       (padding . 0)
%       (stretchability . 0))
    \remove "Bar_number_engraver"
  }
}

#(ly:set-option 'relative-includes #t)
%%%%%%%%%%% RH %%%%%%%%%%%%
\include "../rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "../links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsOne
    \new Staff = "LH" \linksOne
  >>
}
\pageBreak
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsTwo
    \new Staff = "LH" \linksTwo
  >>
}
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsThree
    \new Staff = "LH" \linksThree
  >>
}