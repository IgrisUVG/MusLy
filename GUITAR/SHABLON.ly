\version "2.19.15"

\language "deutsch"

\header {
  dedication = "posw"
  title = "Presto"
  subtitle = "podz"
  subsubtitle = "podpodz"
  instrument = "instr"
  composer = "I. G."
  arranger = "arr"
  poet = "poet"
  meter = "4/4"
  piece = "nazva"
  opus = "opus"
  copyright = "copir"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20
  
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key d \major
  \time 4/4
}

classicalGuitar = \relative c' {
  \global
  \compressFullBarRests
  R1*16
  
}

\score {
  \new Staff \with {
    instrumentName = "Chit."
  } { \clef "treble_8" \classicalGuitar }
  \layout { }
}
