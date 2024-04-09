\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Misterio"
  subtitle = "Brass"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  #(set-paper-size "a4")
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
  indent = 10
  \context {
    \RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Bar_number_engraver"
    \override VerticalAxisGroup.remove-first = ##t
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    %\RemoveEmptyStaves
    %\override VerticalAxisGroup.remove-first = ##t
    %\RemoveAllEmptyStaves
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "../trumpet.ly"
\include "../corno.ly"
\include "../trombon.ly"
\include "../tuba.ly"

\score {
  \new StaffGroup = "StaffGroup_brass" <<
    \new StaffGroup = "GrandStaff_trombi" \with {
      instrumentName = \markup {
        \right-column {
          "4 Trombi"
          \line { "in B" \smaller \flat }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Tb"
          \line { "in B" \smaller \flat }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_trumpet1" {
        \transpose b c'
        \trumpetEinsMusic
      }
      \new Staff = "Staff_trumpet2" {
        \transpose b c'
        \trumpetZweiMusic
      }
    >>
    \new StaffGroup = "GrandStaff_corni" \with {
      instrumentName = \markup {
        \right-column {
          "4 Corni"
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
        \cornoEinsMusic
      }
      \new Staff = "Staff_horn2" {
        \transpose f c'
        \cornoZweiMusic
      }
    >>
    \new StaffGroup = "GrandStaff_trombon" \with {
      instrumentName = \markup {
        \right-column {
          "Tromboni"
          \line {"e Tuba"}
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
        \trombonMusic
      }

      \new Staff = "Staff_trombon2" {
        \tubaMusic
      }
    >>
  >>
}