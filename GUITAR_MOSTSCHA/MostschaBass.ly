\version "2.19.15"

\language "deutsch"

Bass = \relative {
  \clef "bass_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  e,,8 r r e r e'16 e e e e e
  e,8 r r e r a16( b a8) g
  \bar ":|."
  \break
  e8 e r4 r2 e8 e r4 r2
  %\break
  e8 e r4 r2 e8 e r8 dis'16 e dis d h b a g fis f
  \bar "||"
  \break
  \bar ".|:"
  e8-> g'16 c, h8 e,-> b'16 d e e e e e e e,8-> g'16 c, h8 e,-> dis' a16( b a8) g
  \bar ":|."
  \break
  b8 f' c'\noBeam h!4 e,8 b'4 e,8 b f e->~ e4 dis'
  \bar "||"
  \break
  \repeat unfold 4 {
    \repeat unfold 2 {
      e,8 g16( b) \times 2/3 {cis4 d(\glissando e)} a8(\glissando g)
    }
    \break
  }
  e,8 e r4 h''!4.( b8) e,, e r2.
  e8 e r4 h''!4.( b8) e,, e r dis'16 e dis d h b a g fis f
}


