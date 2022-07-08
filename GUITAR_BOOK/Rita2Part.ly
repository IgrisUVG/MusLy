\version "2.19.15"

\language "deutsch"

\header {
  title = "R bis"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-markup-spacing.basic-distance = 10
  markup-system-spacing.basic-distance = 23
  top-system-spacing.basic-distance = 25
  system-system-spacing.basic-distance = 23
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 25

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15

  footnote-padding = 4
  footnote-footer-padding = 7
}

\layout {
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "Rita2.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% ШПАРГАЛКА %%%%%%%%%%%%%%%
%{
\markup {
  \null
  \footnote
  \null
  \score {
    \transpose h g {
      \relative {
        \time 9/4
        \magnifyStaff #(magstep -2)
        \override Staff.TimeSignature.stencil = ##f
        \omit Score.BarLine
        \omit Voice.Stem
        \omit Voice.Beam
        h'8 cis dis h' ais fis gis eis cis'4
        \undo \omit Voice.Stem
        \undo \omit Voice.Beam
        \times 2/3 {h8 ais fis}
        \omit Voice.Stem
        gis4
        \undo \omit Voice.Stem
        \times 2/3 {b8 as es}
        \omit Voice.Stem
        g4
      }
    }
    \layout {
      indent = 0
    }
  }
}
%{%}
\score {
  \new Staff \with {
    instrumentName = "Guitar"
  }
  \removeWithTag #'Book
  \ritaZwei
}
