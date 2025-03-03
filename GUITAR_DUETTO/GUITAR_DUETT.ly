\version "2.19.15"

\language "deutsch"

\header {
  title = "V."
  meter = ""
  composer = "I. G"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-markup-spacing.basic-distance = #25
  markup-system-spacing.basic-distance = #15
  score-markup-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #20
  %score-system-spacing.basic-distance = #15
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 15
  outer-margin = 10
}

\layout {
  \context {
    \Score
    %proportionalNotationDuration = #(ly:make-moment 1/20)
    %\override SpacingSpanner.uniform-stretching = ##t
    %\remove "Bar_number_engraver"
  }
  \context {
    \Staff %\RemoveEmptyStaves
    %\override VerticalAxisGroup.remove-first = ##t
    \override Fingering.stencil = ##f
    \override StringNumber.stencil = ##f
    \override StrokeFinger.stencil = ##f
    \override TextScript.stencil = ##f
    \override TextSpanner.stencil = ##f
  }
  indent = #15
  ragged-right = ##f
  ragged-last = ##f
}

\include "guitarScript.ly"
\include "global.ly"
\include "guitarOne.ly"
\include "guitarTwo.ly"

\score {
  \new StaffGroup = "Guitar" <<
    \new Staff \with {
      instrumentName = \markup {
        \right-column {
          "Guitar I"
          \line { \circle 6"= D" }
        }
      }
    }
    \removeWithTag #'Part
    \guitarOne
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Dynamics = "dynamics"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff \with {
      instrumentName = \markup {
        \right-column {
          "Guitar II"
          \line { \circle 6"= D" }
        }
      }
    }
    \removeWithTag #'Part
    \guitarTwo
  >>
  %\layout { }
  %\midi {
  %  \tempo 4 = 140
  %}
}