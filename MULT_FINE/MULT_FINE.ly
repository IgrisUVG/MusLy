\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Fine"
  %meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

%#(set-global-staff-size 16)
\paper {
  indent = 2.5\cm  % space for instrumentName
  short-indent = 1\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 15
}


\layout {
  \context {
    \RemoveEmptyStaffContext
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override VerticalAxisGroup.remove-first = ##t
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "clarinet.ly"
\include "cello.ly"
\include "archi.ly"

\score {
  <<
    \new StaffGroup
    <<
      \new Staff = "Staff_flute" {
        \set Staff.instrumentName = #"Flute"
        \set Staff.shortInstrumentName = #"Fl"
        \fluteMusic
      }
      \new Staff = "Staff_clarinet" {
        \set Staff.instrumentName =
        \markup \right-column { "Clarinet" \line { " in B" } }
        \set Staff.shortInstrumentName =
        \markup \right-column { "Cl" \line { "in B" } }
        \transpose b c' \clarinetMusic
      }
      \new Staff = "Staff_cello" {
        \set Staff.instrumentName = #"Cello"
        \set Staff.shortInstrumentName = #"Vc"
        \celloMusic
      }
      \new GrandStaff = "GrandStaff_violins" \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_violinI" {
          \set Staff.instrumentName = #"Archi I"
          \set Staff.shortInstrumentName = #"A I"
          \archiIMusic
        }
        \new Staff = "Staff_violinII" {
          \set Staff.instrumentName = #"Archi II"
          \set Staff.shortInstrumentName = #"A II"
          \archiIIMusic
        }
      >>
    >>
  >>
  %\midi {}
}