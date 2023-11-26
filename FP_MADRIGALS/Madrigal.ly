\version "2.19.15"

\language "deutsch"

\header {
  title = "Madrigals"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #5
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #5
  system-system-spacing #'basic-distance = #15
  score-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #20
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

soprano = \relative {
  gis''2
}

alt = \relative {
  h'2
}

tenor = \relative {
  dis'2
}

bass = \relative c {
  gis'2
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" {
      \clef treble
      \key gis \minor
      <<
        \soprano
        \alt
      >>
    }
    \new Staff = "LH" {
      \clef bass
      \key gis \minor
      <<
        \tenor
        \bass
      >>
    }
  >>
}