\version "2.19.15"

\language "deutsch"

\header {
  title = "Wiegenlied № 5"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  %score-system-spacing.basic-distance = #40
  %score-markup-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #30
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 9
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing.padding = #3.5
  }
}

\include "W5.ly"

\score {
  %\new StaffGroup
  <<
    \new Staff \with {
        instrumentName = "Voc."
      }
      <<
      	\new Voice = "Ten" {
      		\funfteSong
      }
      \new Lyrics %\lyricsto "Ten" 
      {
        \funfteLyrics
      }
    >>
    %\new Dynamics \dynamicFunf
    \new Staff \with {
        instrumentName = "Guit."
      }
      \funfteGuitar
  >>
}