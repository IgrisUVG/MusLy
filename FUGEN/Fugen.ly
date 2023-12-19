\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #12
  score-markup-spacing.basic-distance = #25
  %markup-system-spacing.basic-distance = #28
  system-system-spacing.basic-distance = #22
  %score-system-spacing.basic-distance = #40
  last-bottom-spacing.basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

#(ly:font-config-add-font "fonts/Rediviva.ttf")
#(ly:font-config-add-font "fonts/TheuerdankFraktur.ttf")

%%%%%%%%%%%%%%%%%%%%% INCLUDE %%%%%%%%%%%%%%%%%%%
\include "F-1.ly"
\include "F-2.ly"
\include "F-3.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {
      \fill-line {
        \override #'(font-name . "Theuerdank Fraktur")
        \fontsize #18
        %\bold
        "Fugen"
      }
    }
    %composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \ersteRH
      %\new Dynamics = "Dynamics_pf" \dynamicEins
      \new Staff = "LH" \ersteLH
    >>
    \header {
      title = "1"
      composer = ##f
      breakbefore = ##t
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      \override TextScript.font-name = "Rediviva"
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \zweiteRH
      %\new Dynamics = "Dynamics_pf" \dynamicZwei
      \new Staff = "LH" \zweiteLH
    >>
    \header {
      title = "2"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      \override TextScript.font-name = "Rediviva"
    }
  }
  \pageBreak
%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \dritteRH
      %\new Dynamics = "Dynamics_pf" \dynamicDrei
      \new Staff = "LH" \dritteLH
    >>
    \header {
      title = "3"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #15
        \remove "Bar_number_engraver"
      }
      \override TextScript.font-name = "Rediviva"
    }
  }
  %\pageBreak
  %{
  %%%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsVier
      %\new Dynamics = "Dynamics_pf" \dynamicFour
      \new Staff = "LH" \linksVier
    >>
    \header {
      title = "№ 4"
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
  %}
}
