\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  %meter = "Grave"
%  subtitle = "Clarinetto"
%  subsubtitle = "in B"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'C #t)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    %\override BarNumber.break-visibility = ##(#f #t #t)
    \remove "Bar_number_engraver"
  }
}

%\include "..\scripts.ly"
\include "..\clarinet.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "Clarinetti"
    subsubtitle = "in B"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new Staff
    \transpose b c'
    \clarinetMusic
    \header {
      title = "Erste Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% DRITTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new Staff
    \transpose b c'
    \clarinetMusicDrei
    \header {
      title = "Dritte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
    }
    \layout {
      ragged-last = ##f
    }
  }
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup = "GrandStaff_clarinetto"
    <<
      \new Staff = "Staff_clarinet1" {
        %\transpose b c'
        \clarinetOneMusicVier
      }

      \new Staff = "Staff_clarinet2" {
        %\transpose b c'
        \clarinetTwoMusicVier
      }
    >>
    \header {
      title = "Dritte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
    }
  }
}