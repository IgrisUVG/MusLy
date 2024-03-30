\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Ручей (Этюд)"
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override SpacingSpanner.strict-grace-spacing = ##t
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
}

\include "../Quell.ly"

\score {
  \new PianoStaff
  \with {
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff = "upper" \rechtsQuell
    \new Staff = "lower" \linksQuell
  >>
  %\midi {}
}