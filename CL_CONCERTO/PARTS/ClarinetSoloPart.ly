\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Cl. Solo"
  meter = "Allegro non moto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #8
  system-system-spacing #'basic-distance = #14
  last-bottom-spacing #'basic-distance = #16
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "../clarinetSolo.ly"
\include "../dynamicClarinetSolo.ly"
\score {
  <<
    \new Staff
    \transpose b c' 
    \clarinetSoloMusic
    \new Dynamics \dynamicClarinetSolo
  >>
}