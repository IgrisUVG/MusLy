\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing.basic-distance = #10
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  score-system-spacing #'basic-distance = #20
  score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\include "01_ERSTE/pianoScripts.ly"
\include "01_ERSTE/global.ly"
\include "01_ERSTE/primo.ly"
\include "01_ERSTE/secondo.ly"
\include "01_ERSTE/terzo.ly"
\include "01_ERSTE/quarto.ly"
\include "01_ERSTE/quinto.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #3 "1" }
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  %\markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \global \rechtsOne >>
      \new Dynamics = "Dynamics_pf" \dynamicOne
      \new Staff = "LH" << \global \linksOne >>
    >>
    \header {
      title = ##f
      %meter = "Allegro"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12
        \remove "Bar_number_engraver"
      }
      ragged-last = ##t
    }
  }
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \global \rechtsTwo >>
      \new Dynamics = "Dynamics_pf" \dynamicTwo
      \new Staff = "LH" << \global \linksTwo >>
    >>
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12
        \remove "Bar_number_engraver"
      }
      %ragged-last = ##t
    }
  }
%%%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \global \rechtsThree >>
      \new Dynamics = "Dynamics_pf" \dynamicThree
      \new Staff = "LH" << \global \linksThree >>
    >>
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12
        \remove "Bar_number_engraver"
      }
      %ragged-last = ##t
    }
  }
%%%%%%%%%%%%%%%%%%%%% FIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \global \rechtsFour >>
      \new Dynamics = "Dynamics_pf" \dynamicFour
      \new Staff = "LH" << \global \linksFour >>
    >>
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12
        \remove "Bar_number_engraver"
      }
      %ragged-last = ##t
    }
  }
%%%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsFive
      \new Dynamics = "Dynamics_pf" \dynamicFive
      \new Staff = "LH" \linksFive
    >>
    \header {
      title = ##f
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12
        \remove "Bar_number_engraver"
      }
      %ragged-last = ##t
    }
  }
}