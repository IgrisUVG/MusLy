\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  subtitle = "Flauto"
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
  system-system-spacing.basic-distance = #20
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
    \override BarNumber.break-visibility = ##(#f #t #t)
    %\remove "Bar_number_engraver"
  }
}

\include "..\flute.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "Flauto"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    \new Staff
    \fluteMusic
    \header {
      title = "Erste Teil"
      subtitle = ##f
      composer = ##f
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% DRITTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    \new Staff
    \fluteMusicDrei
    \header {
      title = "Dritte Teil"
      subtitle = ##f
      composer = ##f
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new Staff
    \fluteMusicVier
    \header {
      title = "Vierte Teil"
      subtitle = ##f
      composer = ##f
    }
  }
}