\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #5
  system-system-spacing #'basic-distance = #17
  score-system-spacing #'basic-distance = #20
  score-markup-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #15
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
\include "EtudEins.ly"
\include "EtudZwei.ly"
\include "EtudDrei.ly"
\include "EtudVier.ly"
\include "EtudFunf.ly"
\include "EtudSechs.ly"
\include "schaukel.ly"
\include "schneesturm.ly"
\include "EtudHdur.ly"
\include "EtudCesGes.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #4 "Etudes" }
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \globalOne \rechtsOne >>
      %\new Dynamics = "Dynamics_pf" \dynamicOne
      \new Staff = "LH" << \globalOne \linksOne >>
    >>
    \header {
      title = "Etude № 1"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
      ragged-last = ##t
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \globalTwo \rechtsTwo >>
      %\new Dynamics = "Dynamics_pf" \dynamicTwo
      \new Staff = "LH" << \globalTwo \linksTwo >>
    >>
    \header {
      title = "Etude № 2"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsThree
      %\new Dynamics = "Dynamics_pf" \dynamicThree
      \new Staff = "LH" \linksThree
    >>
    \header {
      title = "Etude № 3"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      ragged-last = ##t
    }
  }
  %\pageBreak
%%%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsFour
      %\new Dynamics = "Dynamics_pf" \dynamicFour
      \new Staff = "LH" \linksFour
    >>
    \header {
      title = "Etude № 4"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \globalFive \rechtsFive >>
      \new Dynamics = "Dynamics_pf" \dynamicFive
      \new Staff = "LH" << \globalFive \linksFive >>
    >>
    \header {
      title = "Etude № 5"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        proportionalNotationDuration = #(ly:make-moment 1/8)
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsSechs
      \new Dynamics = "Dynamics_pf" \dynamicSechs
      \new Staff = "LH" \linksSechs
    >>
    \header {
      title = "Etude № 6"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        proportionalNotationDuration = #(ly:make-moment 1/8)
      }
      \context {
        \Dynamics {
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
          #`((basic-distance . 0.5)
             (padding . 0))
        }
      }
      ragged-last = ##t
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%% SCHAUKEL %%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \globalSchau \rechtsSchau >>
      \new Dynamics = "Dynamics_pf" \dynamicSchau
      \new Staff = "LH" << \globalSchau \linksSchau >>
    >>
    \header {
      title = "Etude \"Schaukel\""
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
      %ragged-last = ##t
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%% SCHNEESTURM %%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \globalSchnee \rechtsSchnee >>
      \new Dynamics = "Dynamics_pf" \dynamicSchnee
      \new Staff = "LH" << \globalSchnee \linksSchnee >>
    >>
    \header {
      title = "Etude \"Schneesturm\""
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
      ragged-last = ##t
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%% H-DUR %%%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsHdur
      \new Dynamics = "Dynamics_pf" \dynamicHdur
      \new Staff = "LH" \linksHdur
    >>
    \header {
      title = "Etude H-dur"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
      ragged-last = ##t
    }
  }
  %\pageBreak  
%%%%%%%%%%%%%%%% CES-GES-DUR %%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsCesGes
      \new Staff = "LH" \linksCesGes
    >>
    \header {
      title = "Etude Ces-Ges-dur"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
      %ragged-last = ##t
    }
  }
}