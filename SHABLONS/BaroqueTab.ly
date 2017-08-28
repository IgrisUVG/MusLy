\version "2.19.15"

\header {
  tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  line-width = 180
  left-margin = 15
  bottom-margin = 25
  top-margin = 25
}

%#(set-global-staff-size 20)
\score {
  \new TabStaff{
  	\hide Score.SystemStartBar
    \repeat unfold 8 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \TabStaff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
