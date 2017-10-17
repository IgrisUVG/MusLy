\version "2.18.0"

\language "deutsch"

\header {
  dedication = "posw"
  title = "SCHABLON"
  subtitle = "podz"
  subsubtitle = "podpodz"
  instrument = "instr"
  arranger = "arr"
  poet = "poet"
  meter = "Von Langsam bis Rasch"
  piece = "nazva"
  opus = "opus"
  composer = "X. Z."
  copyright = "copir"
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
  <<
    \new Voice = "mel" \relative d'' {
      \clef treble
      \key d \major
      d1
    }
    \new Lyrics \lyricsto mel {
      reeee
    }

    \new PianoStaff <<
      \new Staff = "upper" \relative d' {
        \clef treble
        \key d \major
        <d fis d'>1
      }
      \new Staff = "lower" \relative d {
        \clef bass
        \key d \major
        <d, a' d>1
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}