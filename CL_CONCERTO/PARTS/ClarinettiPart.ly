\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Clarinetti"
  subsubtitle = "in B"
  meter = "Allegro non moto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\include "..\clarinet1.ly"
\include "..\clarinet2.ly"

\score {
  \new StaffGroup
  <<
    \transpose b c' 
    \clarinetOneMusic
    \transpose b c' 
    \clarinetTwoMusic
  >>
}