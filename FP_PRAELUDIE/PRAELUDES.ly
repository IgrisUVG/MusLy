\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #30
  top-markup-spacing.basic-distance = #25
  score-markup-spacing.basic-distance = #25
  %markup-system-spacing.basic-distance = #28
  system-system-spacing.basic-distance = #26
  %score-system-spacing.basic-distance = #44
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
  %left-margin = 15
  %right-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "pianoScripts.ly"
\include "einsEXP.ly"
\include "zwei.ly"
\include "drei.ly"
\include "dreiBis.ly"
\include "fier.ly"
\include "funf.ly"
\include "sechs.ly"
\include "sieben.ly"
\include "acht.ly"
\include "neun.ly"
\include "zehn.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #8 "Praeludes" }
    %composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsEins
      \new Dynamics = "Dynamics_pf" \dynamicEins
      \new Staff = "LH" \linksEins
    >>
    \header {
      title = "№ 1"
      %meter = "Allegro"
      composer = ##f
      breakbefore = ##t
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #16
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsZwei
      \new Dynamics = "Dynamics_pf" \dynamicZwei
      \new Staff = "LH" \linksZwei
    >>
    \header {
      title = "№ 2"
      %meter = "Lento"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsDrei
      \new Dynamics = "Dynamics_pf" \dynamicDrei
      \new Staff = "LH" \linksDrei
    >>
    \header {
      title = "№ 3"
      %meter = "Lento"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%% DRITTE BIS %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "RH" \rechtsDreiBis
      \new Dynamics = "Dynamics_pf" \dynamicDreiBis
      \new Staff = "LH" \linksDreiBis
    >>
    \header {
      title = "№ 3bis"
      %meter = "Allegretto"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      ragged-last = ##t
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% FIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "RH" \rechtsFier
      %\new Dynamics = "Dynamics_pf" \dynamicFour
      \new Staff = "LH" \linksFier
    >>
    \header {
      title = "№ 4"
      %meter = "Adagio"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsFunf
      \new Dynamics = "Dynamics_pf" \dynamicFunf
      \new Staff = "LH" \linksFunf
    >>
    \header {
      title = "№ 5"
      %meter = "nonPresto"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsSechs
      \new Dynamics = "Dynamics_pf" \dynamicSechs
      \new Staff = "LH" \linksSechs
    >>
    \header {
      title = "№ 6"
      %meter = "Adagio"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #16
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% SIEBENTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsSieben
      %\new Dynamics = "Dynamics_pf" \
      \new Staff = "LH" \linksSieben
    >>
    \header {
      title = "№ 7"
      %meter = "Allegretto"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #14
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%% ACHTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "RH" \rechtsAcht
      \new Dynamics = "Dynamics_pf" \dynamicAcht
      \new Staff = "LH" \linksAcht
    >>
    \header {
      title = "№ 8"
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
%%%%%%%%%%%%%%%%%%%%% NEUNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsNeun
      %\new Dynamics = "Dynamics_pf" \dynamicFour
      \new Staff = "LH" \linksNeun
    >>
    \header {
      title = "№ 9"
      %meter = "Adagio"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #18
        \remove "Bar_number_engraver"
      }
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% ZEHNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsZehn
      \new Dynamics = "Dynamics_pf" \dynamicZehn
      \new Staff = "LH" \linksZehn
    >>
    \header {
      title = "№ 10"
      %meter = "Allegro"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
    }
  }
}
