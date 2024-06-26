\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Misterio"
  subtitle = "Fagotti"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #15
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
    \override BarNumber.break-visibility = ##(#t #t #t)
    \RemoveEmptyStaves
    \override TimeSignature.break-visibility = ##(#f #t #t)
    %\override VerticalAxisGroup.remove-first = ##t
  }
}

\include "../fagotto.ly"

\score {
  \new StaffGroup
  <<
    \new Staff \fagottoMusic
    \new Staff \contraFagottoMusic
  >>
  %\midi {}
}