\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #5
  score-markup-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #25
  score-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  %ragged-last-bottom = ##f
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 13

  footnote-padding = 8
  footnote-footer-padding = 7
  footnote-separator-markup = \markup \null
}

\layout {
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  %ragged-last = ##t
  %ragged-right = ##f
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "guitar_AN27.ly"
\include "guitar_AN27new.ly"
\include "guitar_AN27clear.ly"
\include "Scand.ly"
\include "Schauspiel.ly"
%%%% VIK
\include "VIK/vikTema.ly"
\include "VIK/vik1.ly"
\include "VIK/vik2.ly"
\include "VIK/vik3.ly"
\include "VIK/vik4.ly"
\include "VIK/vikRubato.ly"
\include "VIK/vik5.ly"
%%%% KIV
\include "Humor.ly"
\include "Piece.ly"
\include "Rita.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #4 "Guitar" }
    %composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%%%% AN %%%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \line { \circle 6"= D" }
      }
    }

    %\guitarAN
    %\guitarANnew
    \guitarANclear

    \header {
      title = "№ 27"
      composer = ##f
      breakbefore = ##t
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
      ragged-last = ##t
    }
  }
  %}
%%%%%%%%%%%%%%%%%% SCHAUSPIEL %%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff
    <<
      \schauspiel

      \new Dynamics \schauspielDynamics
    >>

    \header {
      title = "Schauspiel"
      composer = ##f
      breakbefore = ##t
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%%% VIK %%%%%%%%%%%%%%%%%%%%%%
  \score {
    <<
      \new Staff \with {
        instrumentName = \markup {
          \line { \circle 6"= D" }
        }
      }
      \vikTema

      \new Dynamics \vikTemaDynamics
    >>

    \header {
      title = "VIk"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }

%%%%%%%%%%%%%%% VAR 1 %%%%%%%%%%%%%%%%
  \score {
    \vikErste
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  %\pageBreak
%%%%%%%%%%%%%%% VAR 2 %%%%%%%%%%%%%%%%
  \score {
    \vikZweite
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  %\pageBreak
%%%%%%%%%%%%%%% VAR 3 %%%%%%%%%%%%%%%%
  \score {
    \vikDritte
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
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
              d32 a'''\RH #4 a\RH #3 a\RH #2 fis, a' a a s
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
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
  \score {
    \vikRubato
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      indent = 0
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
%%%%%%%%%%%%%%% VAR 5 %%%%%%%%%%%%%%%%
  \score {
    \removeWithTag #'Part
    \vikFunfte
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
%%%%%%%%%%%%%%%%%%%%% SCAND %%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Guitar"
          \line { \circle 6"= D" }
        }
      }
    }

    \scand

    \header {
      title = "S"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  %}
%%%%%%%%%%%%%%%%%%%%% HUMOR %%%%%%%%%%%%%%%%%%%%%
  %{%}
  \score {
    \new Staff

    \humor

    \header {
      title = "Humoreske"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  %}
%%%%%%%%%%%%%%%%%%%%%%% N %%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff

    \piece

    \header {
      title = "N"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%%%% R %%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff

    \rita

    \header {
      title = "R"
      composer = ##f
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
  }
}