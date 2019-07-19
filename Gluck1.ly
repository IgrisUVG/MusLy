\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a6landscape")
  top-system-spacing.basic-distance = #25
}

\header {
  tagline = ##f
}

\layout {
  indent = #5
  ragged-right = ##f
  % line-width = 115
}

\score {
  \new StaffGroup
  <<
    \new Staff {
      \override Staff.TimeSignature #'stencil = ##f
      \time 3/4
      \partial 4
      \relative {
        h'4 d2 b4 f' e2 \bar "|."
      }
    }
    \addlyrics { Же -- ла -- ю счасть -- я }
  >>
}