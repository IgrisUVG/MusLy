\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  %meter = "Rubato"
  subtitle = "6 Clarinetti"
  subsubtitle = "in B"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
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
\include "clarinet1.ly"
\include "clarinet2.ly"
\include "clarinet3.ly"
\include "clarinet4.ly"
\include "clarinet5.ly"
\include "clarinet6.ly"
\score {
  \new StaffGroup = "GrandStaff_clarinetto"
  <<
    \new Staff = "Staff_clarinet1" {
      \transpose c' b
      \clarinetEinsMusic
    }

    \new Staff = "Staff_clarinet2" {
      \transpose c' b
      \clarinetZweiMusic
    }
    \new Staff = "Staff_clarinet3" {
      \transpose c' b
      \clarinetDreiMusic
    }

    \new Staff = "Staff_clarinet4" {
      \transpose c' b
      \clarinetFierMusic
    }
    \new Staff = "Staff_clarinet5" {
      \transpose c' b
      \clarinetFunfMusic
    }

    \new Staff = "Staff_clarinet6" {
      \transpose c' b
      \clarinetSechsMusic
    }
  >>
}