\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Klavierkonzert"
  subtitle = "Satz II"
  subsubtitle = "Brass"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #20
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "..\dynamicBrass.ly"
\include "..\trumpet.ly"
\include "..\corno1.ly"
\include "..\corno2.ly"
\include "..\trombon.ly"
\include "..\tuba.ly"

\score {
  \new StaffGroup = "StaffGroup_brass" <<
    \new Staff = "Staff_trumpet" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Tr"
          \line { "in B" }
        }
      }
      %\transpose b c'
      \trumpetMusic
    }
    \new Dynamics \dynamicTrumpet
    \new StaffGroup = "GrandStaff_corni" \with {
      instrumentName = \markup {
        \right-column {
          "Cor"
          \line { "in F" }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_hornI" {
        %\transpose f c'
        \cornoOneMusic
      }
      \new Staff = "Staff_horn2" {
        %\transpose f c'
        \cornoTwoMusic
      }
    >>
    \new StaffGroup = "GrandStaff_trombon_e_tuba" \with {
      instrumentName = \markup {
        \right-column {
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
      \new Dynamics \dynamicTrumpet
      \new Staff = "Staff_tuba" {
        \tubaMusic
      }
    >>
  >>
}