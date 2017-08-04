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

\include "CL_MoDu_zweite.ly"

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
      \zweiteIa
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
    \new Staff \zweiteIb
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
    \new Staff \zweiteIIa
    \header {
      title = "II"
      subtitle = ##f
      meter = "Allegro meastoso"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \zweiteIIb
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
      \zweiteIIIa
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
    \new Staff \zweiteIIIb
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
    \new Staff \zweiteIVa
    \header {
      title = "IV"
      subtitle = ##f
      meter = "Allegro risoluto"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \zweiteIVb
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
    \new Staff \zweiteVa
    \header {
      title = "V"
      subtitle = ##f
      meter = "Allegro moderato e con grazia"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \zweiteVb
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
      \zweiteVc
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
    \new Staff \zweiteVIa
    \header {
      title = "VI"
      subtitle = ##f
      meter = "Largo maestoso"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new Staff \zweiteVIb
    \header {
      title = ##f
      subtitle = ##f
      meter = "Allegro"
      composer = ##f
    }
  }
%%%%%%%%%%%%%%%%%%%%% TERZO
  \score {
    \new Staff \zweiteVIc
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