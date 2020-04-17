\version "2.19.15"

\language "deutsch"

tema = \relative {
  \clef "treble_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  e,8[ h'] fis'
  %\once \override Glissando.bound-details.left.X = #33
  f4\glissando c'8 g'4
  e,,8 h' fis'\noBeam f4 a,16( b a8) g
}


