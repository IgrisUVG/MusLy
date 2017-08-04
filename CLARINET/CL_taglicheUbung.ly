\version "2.19.15"

\language "deutsch"

\header {
  %title = "SCHABLON"
  %meter = "Von Langsam bis Rasch"
  composer = "П. МИМАР"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #18
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "CL_tU_erste.ly"
\include "CL_tU_zweite.ly"

\book {
  \score {
    \erste
  }
  \score {
    \zweite
  }
}