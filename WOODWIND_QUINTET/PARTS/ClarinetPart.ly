\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  subtitle = "Clarinetto"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  score-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #5
  score-system-spacing.basic-distance = #24
  system-system-spacing.basic-distance = #14
  last-bottom-spacing.basic-distance = #16
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  print-all-headers = ##t
}

\layout {
  indent = 10
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "../clarinet.ly"
%\include "../dynamic.ly"
\score {
  <<
    \new Staff \transpose b c' \clarinettoMusicErste
    %\new Dynamics \dynamic
  >>
  \header {
    title = ##f
    subtitle = ##f
    meter = \markup {\fontsize #2 "Adagio"}
    composer = ##f
  }
}
\score {
  <<
    \new Staff \transpose b c' \clarinettoMusicZweite
    \new Dynamics \clarinettoDynamicZweite
  >>
  \header {
    title = ##f
    subtitle = ##f
    meter = \markup {\fontsize #2 "Allegro"}
    composer = ##f
  }
  \layout {
    \context {
      \Staff

    }
  }
}