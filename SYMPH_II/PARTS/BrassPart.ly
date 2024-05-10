\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a4")
  indent = 1.2\cm
  short-indent = 0.5\cm
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 10
}

\layout {
  \context {
    %\RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
    %\remove "Bar_number_engraver"
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "../trumpet1.ly"
\include "../trumpet2.ly"
\include "../corno1.ly"
\include "../corno2.ly"
\include "../trombon1.ly"
\include "../trombon2.ly"
\include "../tuba.ly"

\score {
  \new StaffGroup = "StaffGroup_brass" <<
    \new StaffGroup = "GrandStaff_trombi" \with {
      instrumentName = \markup {
        \right-column {
          "5 Trombi"
          \line { "in B" }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Tb"
          \line { "in B" }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_trumpet1" {
        \transpose b c'
        \trumpetOneMusic
      }
      \new Staff = "Staff_trumpet2" {
        \transpose b c'
        \trumpetTwoMusic
      }
    >>
    \new StaffGroup = "GrandStaff_corni" \with {
      instrumentName = \markup {
        \right-column {
          "5 Corni"
          \line { "in F" }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Cor"
          \line { "in F" }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
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
    \new StaffGroup = "GrandStaff_trombon" \with {
      instrumentName = \markup {
        \right-column {
          "5 Tromboni"
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Trb"
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_trombon1" {
        \trombonOneMusic
      }

      \new Staff = "Staff_trombon2" {
        \trombonTwoMusic
      }
    >>
    \new Staff = "Staff_basso" {
      \set Staff.instrumentName = #"Basso"
      \set Staff.shortInstrumentName = #"B"
      \tubaMusic
    }
  >>
}