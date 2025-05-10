\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  subtitle = "Timpani"
%  subsubtitle = "As Es B F"
%  %meter = "Grave"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'relative-includes #t)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #18
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

\include "../timpani.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "Timpani"
    subsubtitle = "As Es B F"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }

  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new Staff
    \timpMusic
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
    \timpMusicDrei
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
    \timpMusicVier
    \header {
      title = "Vierte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
}