\version "2.19.15"

\language "deutsch"

\header {
  title = "F&G War."
  instrument = "Guitar"
  meter = "Lustig"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #24
  last-bottom-spacing.basic-distance = #25
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

\include "guitar.ly"

\score {
	\removeWithTag #'changeSpacingSpanner
  \guitarMusic
}
