\version "2.19.15"
%\version "2.19.11"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  subtitle = "5 Corni"
  subsubtitle = "in F"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
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
\include "../corno1.ly"
\include "../corno2.ly"
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
}