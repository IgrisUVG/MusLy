\version "2.19.15"

\language "deutsch"

\header {
  title = "F&G War."
  meter = "Lustig"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #14
    \remove "Bar_number_engraver"
  }
}

\include "flute.ly"
\include "guitar.ly"
\include "chordsSheet.ly"

\score {
  \new StaffGroup<<

    \new Staff
    \with {
      instrumentName = "Fl."
    }
    \fluteMusic

    \new Staff
    \with {
      instrumentName = "Guit."
    }
    \guitarMusic
    %\new Dynamics \hSheet

  >>
}
