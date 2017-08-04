\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Clarinetto solo"
  subsubtitle = "e Contrabassi"
  meter = "Allegro non moto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #8
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\include "..\clarinetSolo.ly"
\include "..\dynamicClarinetSolo.ly"
\include "..\cb.ly"
%\include "..\clarinetSoloPresto.ly"
%\include "..\cbPresto.ly"
\score {
  \new StaffGroup
  <<
    \new Staff
    \transpose b c'
    \clarinetSoloMusic
    \new Dynamics \dynamicClarinetSolo
    \new Staff = "Staff_bass"
    \cbMusic
  >>
}