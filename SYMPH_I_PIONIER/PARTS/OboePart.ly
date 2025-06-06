\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  subtitle = "Oboe"
%  meter = "Grave"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'relative-includes #t)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #15
  last-bottom-spacing.basic-distance = #15
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

\include "..\oboe.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "Oboe"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new Staff
    \oboeMusic
    \header {
      title = "Erste Teil"
      subtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% DRITTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new Staff
    \oboeMusicDrei
    \header {
      title = "Dritte Teil"
      subtitle = ##f
      composer = ##f
    }
    \layout {
      ragged-last = ##f
    }
  }
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff
    \oboeMusicVier
    \header {
      title = "Vierte Teil"
      subtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
}