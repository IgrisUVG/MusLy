\version "2.19.15"
\language "deutsch"
\paper {
  top-system-spacing #'basic-distance = #15
}
\layout { 
  ragged-right = ##f
  line-width = 115
}
\score {
  \new StaffGroup
  <<
    \new Staff {
      \override Staff.TimeSignature #'stencil = ##f
      \time 3/4
      \partial 4
      \relative {
        \override Staff.BarLine.allow-span-bar = ##f
        <<
          {
            h'4 d2 b4 f' e2
          }
          \\
          {
            d,4 f2 d4 g2.
          }
        >>
        \override Staff.BarLine.allow-span-bar = ##t
        \bar "|."
      }
    }
    \addlyrics { Же -- ла -- ю счасть -- я }
    \new Staff {
      \override Staff.TimeSignature #'stencil = ##f
      \time 3/4
      \clef bass
      \partial 4
      \relative {
        <<
          {
            g4~ g4 f2~ f4 e2
          }
          \\
          {
            h4 d2 b4 c2.
          }
        >>
      }      
    }
  >>
}