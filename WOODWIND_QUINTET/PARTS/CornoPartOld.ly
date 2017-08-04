\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  subtitle = "Corno"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  score-markup-spacing #'basic-distance = #20
  markup-system-spacing #'basic-distance = #5
  score-system-spacing #'basic-distance = #24
  system-system-spacing #'basic-distance = #18
  last-bottom-spacing #'basic-distance = #16
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  print-all-headers = ##t
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "../corno.ly"
%\include "../dynamic.ly"
\score {
  <<
    \new Staff 
    \transpose f c' 
    \cornoMusicErste
    %\new Dynamics \dynamic
  >>
  \header {
  	title = ##f
  	subtitle = ##f
  	meter = "Adagio"
  	composer = ##f
  }
}
\score {
  <<
    \new Staff 
    \transpose f c' 
    \cornoMusicZweite
    \new Dynamics \cornoDynamicZweite
  >>
  \header {
  	title = ##f
  	subtitle = ##f
  	meter = "Allegro"
  	composer = ##f
  }
}
