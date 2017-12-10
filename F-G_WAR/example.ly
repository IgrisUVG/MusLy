%begin Lily - Example - clef, key and time signature squeezed together, barlines thinner

\version "2.12.2"
\paper {
  indent = 0.0
  ragged-right = ##t
  ragged-last = ##t
}

\score {
  \new Staff \relative c'
  {
    \key f \minor
    f2 a4 c2 a4 bes2 g'4 f8 e e4 d c f e d c b a \bar "|."
  }
  \layout {
    \context {
      \Staff
      \override Clef #'space-alist #'first-note = #'(extra-space . 2)
      \override Clef #'space-alist #'key-signature = #'(minimum-space . 1.0)
      \override Clef #'space-alist #'time-signature = #'(minimum-space . 0.1)
      \override KeySignature #'space-alist #'time-signature = #'(minimum-space . 0.1)
      \override KeySignature #'space-alist #'first-note = #'(extra-space . 2)
      \override TimeSignature #'space-alist #'first-note = #'(extra-space . 0.1)
      \override BarLine #'hair-thickness = #0.3
      \override BarLine #'thick-thickness = #1.7
      %fontSize = #-11
      \override VerticalAxisGroup #'minimum-Y-extent = #'(5 . 5)
      %\override StaffSymbol #'staff-space = #(magstep -11)
      %\override StaffSymbol #'thickness = #(magstep -11)
    }
  }
}

\score {
  \new Staff \relative c'
  {
    \key f \minor
    f2 a4 c2 a4 bes2 g'4 f8 e e4 d c f e d c b a \bar "|."
  }
  \layout {
  }
}
%end Lily -Example