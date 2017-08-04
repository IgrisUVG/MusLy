\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #8
  system-system-spacing #'basic-distance = #16
  score-system-spacing #'basic-distance = #20
  score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #16
%%%%%%%%%%%%%%%%%%%%%%%%
  left-margin = 20
  right-margin = 20
%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new StaffGroup <<
      \new Staff \ersteIIa
      \new Staff \zweiteIIa
    >>
    \header {
      title = "II"
      subtitle = ##f
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
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% SECONDO
  \score {
    \new StaffGroup <<
      \new Staff \ersteIIb
      \new Staff \zweiteIIb
    >>
    \header {
      title = ##f
      subtitle = ##f
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
