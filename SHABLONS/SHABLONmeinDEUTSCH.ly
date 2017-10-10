\version "2.18.0"

\language "deutsch"

\header {
  title = "SCHABLON"
  meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
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
\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "INSTRUMENT"
        \line { \circle J"= ARSCH" }
      }
    }
  }
  \relative c' {
    \clef treble
    \key ges \major
    \time 4/4
    \override Staff.TimeSignature #'stencil = ##f
    \compressFullBarRests
    R1*80

    c d e f g a h

    \bar ":|."
  }
}