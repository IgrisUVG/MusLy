\version "2.19.15"

\language "deutsch"

\header {
  title = "МАЛЕНЬКИЙ"
  %instrument = "Guitar"
  tagline = \markup {\char ##x00A9 "Уши ван Гога"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  %system-system-spacing #'basic-distance = #20
  %score-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  indent = #0
  ragged-right = ##f
  ragged-last = ##f
}

\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords
        cis1*8:m \bar ".|:"\break
        e1:m a:m
        e:m a:m
        e:m a:m
        e:m a:m
        c1*2 e1*2:m\bar "||"\break
        cis1*8:m \bar ":|."\break
        \mark "Припев"
        c1 a:m h:7 e:m
        c1 a:m h:7 e:m\bar "|."
      }
    }
    \new DrumStaff \with{
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
    }{
      \override Staff.Clef #'stencil = ##f 
      s1*8 s s1*4
      s1*8
      s1*8    
    }

  >>
}
