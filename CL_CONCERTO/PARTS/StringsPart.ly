\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Strings"
  meter = "Allegro non moto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    %\RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "../vni1.ly"
\include "../vni2.ly"
\include "../vle.ly"
\include "../vc.ly"
\include "../cb.ly"

\score {
  \new StaffGroup = "StaffGroup_strings" <<
    \new StaffGroup = "GrandStaff_violins" \with {
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_violinI" {
        \set Staff.instrumentName = #"V-ni I"
        \vniOneMusic
      }
      \new Staff = "Staff_violinII" {
        \set Staff.instrumentName = #"V-ni II"
        \vniTwoMusic
      }
    >>
    \new Staff = "Staff_viola" {
      \set Staff.instrumentName = #"V-le"
      \vleMusic
    }
    \new StaffGroup = "GrandStaff_bassi" \with {
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_cello" {
        \set Staff.instrumentName = #"Vc"
        \vcMusic
      }
      \new Staff = "Staff_bass" {
        \set Staff.instrumentName = #"Cb"
        \cbMusic
      }
    >>
  >>
}