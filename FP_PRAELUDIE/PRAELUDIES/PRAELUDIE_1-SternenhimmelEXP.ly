\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№1"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

\include "../pianoScripts.ly"
\include "../einsEXP.ly"

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsEins
    \new Dynamics = "DYN" \dynamicEins
    \new Staff = "LH" \linksEins
  >>
}