\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Brass"
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
  indent = 10
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
    %\remove "Bar_number_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "../trumpet.ly"
\include "../corno1.ly"
\include "../corno2.ly"
\include "../trombon.ly"
\include "../tuba.ly"

\score {
  \new StaffGroup = "StaffGroup_brass" <<
    \new Staff = "Staff_trumpet" {
      \set Staff.instrumentName = #"Tr in  B"
      \transpose b c'
      \trumpetMusic
    }
    \new StaffGroup = "GrandStaff_corni" \with {
      instrumentName = \markup {
        \center-column {
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
    \new StaffGroup = "GrandStaff_trombon_e_tuba" \with {
      instrumentName = \markup {
        \center-column {
          "Trb"
          \line { "e Tb" }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_trombon" {
        \trombonMusic
      }
      \new Staff = "Staff_tuba" {
        \tubaMusic
      }
    >>
  >>
}