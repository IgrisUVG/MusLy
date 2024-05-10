\version "2.19.15"
%\version "2.19.11"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  subtitle = "5 Tromboni"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #20
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
    %\remove "Bar_number_engraver"
  }
}

\include "..\trombon1.ly"
\include "..\trombon2.ly"

\score {
  \new StaffGroup = "GrandStaff_trombon"
  <<
    \new Staff = "Staff_trombon1" {
      \trombonOneMusic
    }

    \new Staff = "Staff_trombon2" {
      \trombonTwoMusic
    }
  >>
}