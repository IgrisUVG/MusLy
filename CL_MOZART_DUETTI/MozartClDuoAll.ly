\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #18
  score-system-spacing.basic-distance = #20
  score-markup-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20

  left-margin = 20
  right-margin = 20
  
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "CL_MoDu_erste.ly"
\include "CL_MoDu_zweite.ly"
%\include "CL_MoDu_Leitung.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {
      \center-column {
        \fontsize #8 "ДУЭТЫ"
        \line {"      "}
        \line {\fontsize #6 "для двух"}
        \line {"      "}
        \line {\fontsize #6 "кларнетов"}
      }
    }
    tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "I"
      meter = ##f
      composer = ##f
      breakbefore = ##t
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIa
        \new Staff \zweiteIa
      >>
      \header {
        title = ##f
        meter = "Allegro risoluto"
        composer = ##f
      }
      \layout {
        \context {
          \Score
          \override SpacingSpanner.uniform-stretching = ##t
          \override SpacingSpanner.strict-grace-spacing = ##t
        }
        indent = #6
        ragged-last = ##t
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIb
        \new Staff \zweiteIb
      >>
      \header {
        title = ##f
        meter = "Grazioso. Tempo di Minuetto"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
  }
%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "II"
      meter = ##f
      composer = ##f
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIIa
        \new Staff \zweiteIIa
      >>
      \header {
        title = ##f
        meter = "Allegro maestoso"
        composer = ##f
      }
      \layout {
        \context {
          \Score
          %\override SpacingSpanner.uniform-stretching = ##t
          %\override SpacingSpanner.strict-grace-spacing = ##t
          %proportionalNotationDuration = #(ly:make-moment 1/8)
        }
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIIb
        \new Staff \zweiteIIb
      >>
      \header {
        title = ##f
        meter = "Allegretto spiritoso"
        composer = ##f
      }
      \layout {
        \context {
          \Score
          %proportionalNotationDuration = #(ly:make-moment 1/16)
        }
        indent = #0
      }
    }
  }
%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "III"
      meter = ##f
      composer = ##f
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIIIa
        \new Staff \zweiteIIIa
      >>
      \header {
        title = ##f
        meter = "Allegro con spirito"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIIIb
        \new Staff \zweiteIIIb
      >>
      \header {
        title = ##f
        meter = "Allegro non tanto"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
  }
%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "IV"
      meter = ##f
      composer = ##f
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIVa
        \new Staff \zweiteIVa
      >>
      \header {
        title = ##f
        meter = "Allegro risoluto"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteIVb
        \new Staff \zweiteIVb
      >>
      \header {
        title = ##f
        meter = "Allegro non tanto"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
  }
%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "V"
      meter = ##f
      composer = ##f
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVa
        \new Staff \zweiteVa
      >>
      \header {
        title = ##f
        meter = "Allegro moderato e con grazia"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVb
        \new Staff \zweiteVb
      >>
      \header {
        title = ##f
        meter = "Andante grave"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% TERZO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVc
        \new Staff \zweiteVc
      >>
      \header {
        title = ##f
        meter = "Allegretto non tanto"
        composer = ##f
      }
      \layout {
        \context {
          \Score
          %\override SpacingSpanner.strict-grace-spacing = ##t
          %proportionalNotationDuration = #(ly:make-moment 1/16)
        }
        \context {
          \Voice
          \consists "Melody_engraver"
          \override Stem.neutral-direction = #'()
        }
        indent = #6
      }
    }
  }
%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%
  \bookpart {
    \header {
      title = "VI"
      meter = ##f
      composer = ##f
    }
%%%%%%%%%%%%%%%%%%%%% PRIMO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVIa
        \new Staff \zweiteVIa
        %\new Dynamics \leitungVIa
      >>
      \header {
        title = ##f
        meter = "Largo maestoso"
        composer = ##f
      }
      \layout {
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% SECONDO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVIb
        \new Staff \zweiteVIb
        %\new Dynamics \leitungVIb
      >>
      \header {
        title = ##f
        meter = "Allegro"
        composer = ##f
      }
      \layout {
        \context {
          \Score
          %proportionalNotationDuration = #(ly:make-moment 1/16)
        }
        indent = #6
      }
    }
%%%%%%%%%%%%%%%%%%%%% TERZO
    \score {
      \new StaffGroup <<
        \new Staff \ersteVIc
        \new Staff \zweiteVIc
      >>
      \header {
        title = ##f
        meter = \markup {
          \column {
            \line { РОНДО }
            \line { Allegro con moto }
          }
        }
        composer = ##f
      }
      \layout {
        \context {
          \Score
          %\override SpacingSpanner.strict-grace-spacing = ##t
          %proportionalNotationDuration = #(ly:make-moment 1/16)
        }
        \context {
          \Voice
          \consists "Melody_engraver"
          \override Stem.neutral-direction = #'()
        }
        indent = #6
      }
    }
  }
}
