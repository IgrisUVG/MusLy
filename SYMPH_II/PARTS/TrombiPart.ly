\version "2.19.15"
%\version "2.19.11"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  subtitle = "5 Trombi"
  subsubtitle = "in B"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #22
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
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
    %\remove "Bar_number_engraver"
  }
}
\include "..\trumpet1.ly"
\include "..\trumpet2.ly"
\score {
  \new StaffGroup = "GrandStaff_clarinetto"
  <<
    \new Staff = "Staff_trumpet1" {
      \transpose b c'
      \trumpetOneMusic
    }

    \new Staff = "Staff_trumpet2" {
      \transpose b c'
      \trumpetTwoMusic
    }
  >>
}