\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #8
  system-system-spacing #'basic-distance = #14
  score-system-spacing #'basic-distance = #20
  score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #16
  left-margin = 20
  right-margin = 20
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\include "CL_MoDu_erste.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #2 "ДУЭТЫ" }
    subtitle = "для 2-х кларнетов"
    composer = "А. МОЦАРТ"
    tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
  }

%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff {
      \removeWithTag #'SpacingSection
      \ersteIa
    }
    \header {
      title = "I"
      subtitle = ##f
      meter = "Allegro risoluto"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteIb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Grazioso. Tempo di Minuetto"
      composer = ##f
    }
  }

%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff \ersteIIa
    \header {
      title = "II"
      subtitle = ##f
      meter = "Allegro maestoso"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteIIb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegretto spiritoso"
      composer = ##f
    }
  }

%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff {
      \removeWithTag #'SpacingSection
      \ersteIIIa
    }
    \header {
      title = "III"
      subtitle = ##f
      meter = "Allegro con spirito"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteIIIb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegro non tanto"
      composer = ##f
    }
  }

%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff \ersteIVa
    \header {
      title = "IV"
      subtitle = ##f
      meter = "Allegro risoluto"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteIVb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegro non tanto"
      composer = ##f
    }
  }

%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff {
      \removeWithTag #'SpacingSection
      \ersteVa
      }
    \header {
      title = "V"
      subtitle = ##f
      meter = "Allegro moderato e con grazia"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteVb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Andante grave"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% TERZO
  \score {
    \new Staff {
      \removeWithTag #'SpacingSection
      \ersteVc
    }
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegretto non tanto"
      composer = ##f
    }
  }

%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new Staff \ersteVIa
    \header {
      title = "VI"
      subtitle = ##f
      meter = "Largo maestoso"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \ersteVIb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegro"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% TERZO
  \score {
    \new Staff \ersteVIc
    \header {
      title = ##f
      subtitle = ##f
      meter = \markup {
        \column {
          \line { РОНДО }
          \line { Allegro con moto }
        }
      }
      composer = ##f
    }
  }

}