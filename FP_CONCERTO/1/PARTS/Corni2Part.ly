\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Klavierkonzert"
  subtitle = "Satz I"
  subsubtitle = "Corni in F II"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    %\override BarNumber.break-visibility = ##(#f #t #t)
    \remove "Bar_number_engraver"
  }
}

\include "../corno2.ly"

\score {
  \new Staff
  \transpose f c'
  \cornoTwoMusic
}