\version "2.19.15"
%\version "2.19.11"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  subtitle = "Timpani & Drums"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  %#(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}

\include "../timpani.ly"
\include "../drums.ly"

\score {
  \new StaffGroup = "StaffGroup_drums" <<
    \new Staff = "Staff_timpani" {
      \set Staff.instrumentName = #"Timpani"
      \timpMusic
    }
    \new DrumStaff = "Staff_drums"{
      \set Staff.instrumentName = #"Drums"
      \drumMusic
    }
  >>
}