\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  score-system-spacing #'basic-distance = #20
  score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  %ragged-last-bottom = ##f
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 13
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  %ragged-last = ##t
  ragged-right = ##f
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "guitarScript.ly"
\include "guitar_AN27.ly"
\include "Scand.ly"
%\include "Schauspiel.ly"
\include "Humor.ly"

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
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Guitar"
          \line { \circle 6"= D" }
        }
      }
    }

    \guitarAN

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
    }
  }
%%%%%%%%%%%%%%%%%% SCHAUSPIEL %%%%%%%%%%%%%%%%%%%
  %{
  \score {
    \new Staff \with {
      instrumentName = "Guitar"
    }

    %\schauspiel

    \header {
      title = "Schauspiel"
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
%%%%%%%%%%%%%%%%%%%%% SCAND %%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%% HUMOR %%%%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff \with {
      instrumentName = "Guitar"
    }

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
}