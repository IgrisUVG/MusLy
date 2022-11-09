\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #20
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #25
  score-system-spacing #'basic-distance = #27
  score-markup-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #30
  %%%%%%%%%%%%%%%%%%%%%%%%
  left-margin = 15
  right-margin = 15
  %%%%%%%%%%%%%%%%%%%%%%%%
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 10
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "W1.ly"
\include "W2.ly"
\include "W3.ly"
\include "W4.ly"
\include "W5.ly"
\include "W6.ly"
\include "W7.ly"
\include "W8.ly"
\include "W9.ly"
\include "W10.ly"
\include "W11.ly"
\include "W12.ly"
\include "W13.ly"
\include "W14.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup { \fontsize #8 "Wiegenlieds" }
    %composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
  %%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \ersteRH >>
      %\new Dynamics = "Dynamics_pf" \dynamicEins
      \new Staff = "LH" << \ersteLH >>
    >>
    \header {
      title = "Wiegenlied № 1"
      composer = ##f
      breakbefore = ##t
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
  %%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" << \zweiteRH >>
      %\new Dynamics = "Dynamics_pf" \dynamicZwei
      \new Staff = "LH" << \zweiteLH >>
    >>
    \header {
      title = "Wiegenlied № 2"
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
  %%%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \dritteRH
      %\new Dynamics = "Dynamics_pf" \dynamicDrei
      \new Staff = "LH" \dritteLH
    >>
    \header {
      title = "Wiegenlied № 3"
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
  %%%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \vierteRH
      \new Dynamics = "Dynamics_pf" \dynamicVier
      \new Staff = "LH" \vierteLH
    >>
    \header {
      title = "Wiegenlied"
      subtitle = "Zum Geburtstag V. 1998"
      %meter = "Adagio"
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
  %%%%%%%%%%%%%%%%%%%%% FUNFTE %%%%%%%%%%%%%%%%%%%
  \score {
    %\new StaffGroup
    <<
      \new Staff \with {
        instrumentName = "Voc."
      }
      <<
        \new Voice = "Ten" {
          \funfteSong
        }
        \new Lyrics {
          \funfteLyrics
        }
      >>
      %\new Dynamics \dynamicFunf
      \new Staff \with {
        instrumentName = "Guit."
      }
      \funfteGuitar
    >>
    \header {
      title = "Wiegenlied № 5"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
      \context {
        \Staff
        \override VerticalAxisGroup.default-staff-staff-spacing.padding = #3.5
      }
    }
  }
  \pageBreak
  %%%%%%%%%%%%%%%%%%%%% SECHSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \sechsteRH
      %\new Dynamics = "Dynamics_pf" \dynamicSechs
      \new Staff = "LH" \sechsteLH
    >>
    \header {
      title = "Wiegenlied № 6"
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
  %%%%%%%%%%%%%%%%%%%% SIEBENTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \siebenteRH
      \new Dynamics = "Dynamics_pf" \dynamicSieben
      \new Staff = "LH" \siebenteLH
    >>
    \header {
      title = "Wiegenlied № 7"
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
  %%%%%%%%%%%%%%%%%%%%% ACHTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \achteRH
      %\new Dynamics = "Dynamics_pf" \dynamicAcht
      \new Staff = "LH" \achteLH
    >>
    \header {
      title = "Wiegenlied № 8"
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
  %%%%%%%%%%%%%%%%%%%%% NEUNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \neunteRH
      %\new Dynamics = "Dynamics_pf" \dynamicNeun
      \new Staff = "LH" \neunteLH
    >>
    \header {
      title = "Wiegenlied № 9"
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
  %%%%%%%%%%%%%%%%%%%%% ZEHNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \zehnteRH
      %\new Dynamics = "Dynamics_pf" \dynamicZehn
      \new Staff = "LH" \zehnteLH
    >>
    \header {
      title = "Wiegenlied № 10"
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
  %%%%%%%%%%%%%%%%%%%%% ELFTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \elfteRH
      \new Lyrics \elfteVerseEins
      %\new Dynamics = "Dynamics_pf" \dynamicElf
      \new Staff = "LH" \elfteLH
    >>
    \header {
      title = "Wiegenlied № 11"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      ragged-right = ##f
    }
  }
  \pageBreak
  %%%%%%%%%%%%%%%%%%%%% ZWOLFTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \zwolfteRH
      %\new Dynamics = "Dynamics_pf" \dynamicZwolf
      \new Staff = "LH" \zwolfteLH
    >>
    \header {
      title = "Wiegenlied № 12"
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
  %%%%%%%%%%%%%%%%%% DREIZEHNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \dreizehnteRH
      \new Dynamics = "Dynamics_pf" \dynamicDrzehn
      \new Staff = "LH" \dreizehnteLH
    >>
    \header {
      title = "Wiegenlied № 13"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
    }
  }
  \pageBreak
  %%%%%%%%%%%%%%%%%% FIERZEHNTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \viezehnteRH
      \new Dynamics = "Dynamics_pf" \dynamicVierzehn
      \new Staff = "LH" \viezehnteLH
    >>
    \header {
      title = "Wiegenlied № 14"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
        %proportionalNotationDuration = #(ly:make-moment 1/8)
      }
    }
  }
}