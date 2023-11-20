\version "2.19.15"

\language "deutsch"

\header {
  title = "Метель (этюд)"
  %meter = "Presto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #20
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
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t
}

\include "../schneesturm.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" << \globalSchnee \rechtsSchnee >>
    \new Dynamics = "Dynamics_pf" \dynamicSchnee
    \new Staff = "LH" << \globalSchnee \linksSchnee >>
  >>
}