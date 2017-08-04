\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  subtitle = "Flute"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #8
  score-markup-spacing #'basic-distance = #20
  markup-system-spacing #'basic-distance = #5
  score-system-spacing #'basic-distance = #20
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
\include "../flute.ly"
%\include "../dynamic.ly"
\score {
  \new Staff
  <<
    \fluteMusicErste
    %\new Dynamics \dynamic
  >>
  \header {
  	title = ##f
  	subtitle = ##f
  	meter = "Adagio"
  	composer = ##f
  }
}
\pageBreak
\score {
  \new Staff
  <<
    \fluteMusicZweite
    \fluteDynamicZweite
  >>
  \header {
  	title = ##f
  	subtitle = ##f
  	meter = "Allegro"
  	composer = ##f
  }
}
