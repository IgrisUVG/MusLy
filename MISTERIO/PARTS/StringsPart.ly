\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Misterio"
  subtitle = "Strings"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  #(set-paper-size "a4")
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
  indent = 10
  \context {
    \Score
    %\remove "Bar_number_engraver"
    \override BarNumber.break-visibility = ##(#t #t #t)
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    \override TimeSignature.break-visibility = ##(#f #t #t)
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
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
        \set Staff.instrumentName = #"Violini I"
        \set Staff.shortInstrumentName = #"V-ni I"
        \vniEinsMusic
      }

      \new Staff = "Staff_violinII" {
        \set Staff.instrumentName = #"Violini II"
        \set Staff.shortInstrumentName = #"V-ni II"
        \vniZweiMusic
      }
    >>
    \new Staff = "Staff_viola" {
      \set Staff.instrumentName = #"Viole"
      \set Staff.shortInstrumentName = #"V-le"
      \vleMusic
    }

    \new StaffGroup = "GrandStaff_bassi" \with {
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_cello" {
        \set Staff.instrumentName = #"Violoncelli"
        \set Staff.shortInstrumentName = #"Vc"
        \vcMusic
      }
      \new Staff = "Staff_bass" {
        \set Staff.instrumentName = #"Contrabassi"
        \set Staff.shortInstrumentName = #"Cb"
        \cbMusic
      }
    >>
  >>
  %\midi {}
}