\version "2.18.0"

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
  tagline = "proga"
}

\paper {
  #(set-paper-size "a4")
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
