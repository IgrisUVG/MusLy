\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #8
  system-system-spacing #'basic-distance = #18
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
    %\remove "Bar_number_engraver"
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
    title = \markup { \fontsize #2 "ДУЭТЫ" }
    subtitle = "для 2-х кларнетов"
    composer = "А. МОЦАРТ"
    tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
  }

%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% PRIMO
  \score {
    \new StaffGroup <<
      \new Staff \ersteVIa
      \new Staff \zweiteVIa
      %\new Dynamics \leitungVIa
    >>
    \header {
      title = "VI"
      subtitle = ##f
      meter = "Largo maestoso"
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
      \new Staff \ersteVIb
      \new Staff \zweiteVIb
      %\new Dynamics \leitungVIb
    >>
    \header {
      title = ##f
      subtitle = ##f
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
      %\new Dynamics \leitungVIc
    >>
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
