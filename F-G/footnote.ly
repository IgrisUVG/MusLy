\version "2.19.15"

\language "deutsch"

\header {
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\markup { 
  \null 
  \footnote 
  \null 
  \concat { 
    "*" \hspace #1.5
    \score {
      \relative {
      	\key d \major
      	\magnifyStaff #(magstep -2)
      	\override Staff.TimeSignature #'stencil = ##f
      	\override TupletNumber #'transparent = ##t
      	a'2~ \tuplet 3/2 4 {a8 b a b a b a b a}
      	b16 a b a \tuplet 6/4{b a b a b a} b32 a b a b a gis a
      }
      \layout {
        indent = 0
      }
    }
  }
}