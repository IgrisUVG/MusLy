\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  subtitle = "Clarinett in B"
  subsubtitle = "VI"
  %meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #25
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
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

\include "..\clarinet6.ly"

\score {
  \clarinetSechsMusic
}