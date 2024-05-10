\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  subtitle = "5 Clarinetti"
  subsubtitle = "in B"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #21
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    %\remove "Bar_number_engraver"
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}

\include "..\clarinet1.ly"
\include "..\clarinet2.ly"

\score {
  \new StaffGroup = "GrandStaff_clarinetto"
  <<
    \new Staff = "Staff_clarinet1" {
      \transpose b c'
      \clarinetOneMusic
    }

    \new Staff = "Staff_clarinet2" {
      \transpose b c'
      \clarinetTwoMusic
    }
  >>
}