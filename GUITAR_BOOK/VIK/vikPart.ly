\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15

  footnote-padding = 8
  footnote-footer-padding = 7
  footnote-separator-markup = \markup \null
}

\header {
  title = "VIk"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout{
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../guitarScript.ly"
\include "vikTema.ly"
\include "vik1.ly"
\include "vik2.ly"
\include "vik3.ly"
\include "vik4.ly"
\include "vikRubato.ly"
\include "vik5.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Guitar"
          \line { \circle 6"= D" }
        }
      }
    }
    \vikTema

    \new Dynamics \vikTemaDynamics
  >>
}

%%%%%%%%%%%%%%% VAR 1 %%%%%%%%%%%%%%%%
\score {
  \vikErste
}
\pageBreak
%%%%%%%%%%%%%%% VAR 2 %%%%%%%%%%%%%%%%
\score {
  \vikZweite
}
%\pageBreak
%%%%%%%%%%%%%%% VAR 3 %%%%%%%%%%%%%%%%
\score {
  \vikDritte
}
%\pageBreak
%%%%%%%%%%%%%%% VAR 4 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% СНОСКА %%%%%%%%%%%%%%%%
%{%}
\markup {
  \null
  \footnote
  \null
  \concat {
    "*" \hspace #1.5
    \score {
      \relative {
        \key d \major
        \magnifyStaff #(magstep -2)
        \override Staff.TimeSignature.stencil = ##f
        \override TupletNumber.transparent = ##t
        <<
          {
            \set subdivideBeams = ##t
            \set baseMoment = #(ly:make-moment 1/8)
            \set beatStructure = #'(2 2 2 2)
            \override Fingering.staff-padding = #'()
            \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
            \override TupletNumber.stencil = ##f
            \tuplet 10/8 4 {
              d32 a'''\RH #2 a\RH #4 a\RH #3 a\RH #2 fis, a' a a a
            }
            s
          }
          \\
          {
            \shape #'((0 . 0) (1 . 0) (2 . 0) (3 . 0)) Slur
            d,,,8([ \set stemRightBeamCount = #1 fis'16
            \hideNotes \set stemLeftBeamCount = #1 g16)]
          }
        >>
      }
      \layout {
        indent = 0
      }
    }
  }
}
%{%}
\score {
  \vikVierte
}
\pageBreak
\score {
  \vikRubato
  \layout {
    indent = 0
  }
}
%%%%%%%%%%%%%%% VAR 5 %%%%%%%%%%%%%%%%
\score {
  \removeWithTag #'Book
  \vikFunfte
}