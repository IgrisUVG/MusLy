\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  %meter = "Grave"
%  subtitle = "2 Corni"
%  subsubtitle = "in F"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'relative-includes #t)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
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
    \override BarNumber.break-visibility = ##(#f #t #t)
    %\remove "Bar_number_engraver"
  }
}

\include "../corno1.ly"
\include "../corno2.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "2 Corni"
    subsubtitle = "in f"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }

  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new StaffGroup = "GrandStaff_corni"
    <<
      \new Staff = "Staff_hornI" {
        \transpose f c'
        \cornoOneMusic
      }
      \new Staff = "Staff_horn2" {
        \transpose f c'
        \cornoTwoMusic
      }
    >>
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
    \new StaffGroup = "GrandStaff_corni"
    <<
      \new Staff = "Staff_hornI" {
        \transpose f c'
        \cornoOneMusicDrei
      }
      \new Staff = "Staff_horn2" {
        \transpose f c'
        \cornoTwoMusicDrei
      }
    >>
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
    \new StaffGroup = "GrandStaff_corni"
    <<
      \new Staff = "Staff_hornI" {
        %\transpose f c'
        \cornoOneMusicVier
      }
      \new Staff = "Staff_horn2" {
        %\transpose f c'
        \cornoTwoMusicVier
      }
    >>
    \header {
      title = "Vierte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
}