\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude № 3"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #24
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t
}

\include "../EtudDrei.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsThree
    \new Staff = "LH" \linksThree
  >>
}