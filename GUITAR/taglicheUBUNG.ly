\version "2.19.15"

\language "deutsch"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #12
  last-bottom-spacing.basic-distance = #15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \time 6/8
  \override Staff.TimeSignature.stencil = ##f
}

#(define RH rightHandFinger)

classicalGuitar = \relative {
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible

  \override Fingering.staff-padding = #'()
  \set strokeFingerOrientations = #'(up)

  \override Glissando.bound-details.right.arrow = ##t
  \override Glissando.arrow-length = #1
  \override Glissando.arrow-width = #0.3

  dis8_1\RH #3 fis_4\RH #2 a_2 c-1 dis-4 fis-2
  g-2 e-4 cis-1 b_2 g_4  e_1
  \bar "||"
  \cadenzaOn
  f_1\glissando s s s s s
  \cadenzaOff
  es''-2 c-4 a-1 ges-2 es-4 c-1
  \bar "||"
  h-1 d-4 f-2 gis-1 h-4 d-2
  \cadenzaOn
  cis-2\glissando s s s s s e,,
  \cadenzaOff
  \bar ":|."
  \break
  c_3\RH #2 es_1\RH #3 fis_4 a-2 c-1 es-4
  e!-4 cis-1 b-2 g_4 e_1 cis_3
  \bar "||"
  \cadenzaOn
  d_3\glissando s s s s s
  \cadenzaOff
  c''-4 a-1 fis-2 es-4 c-1 a-3
  \bar "||"
  gis-3 h-1 d-4 f-2 gis-1 h-4
  \cadenzaOn
  b-4\glissando s s s s s cis,,
  \cadenzaOff
  \bar ":|."
  \break
  \key des \major
  \time 4/4
  as_4 b_1 des_4 f_3 as-1 b-3 des-2 f-1
  as-4 f-1 des-2 b-3 as_1 f_3 des_4 b_1
  \bar ":|.|:"
  as_4 c_3 es_1 ges_4 b-3 c-1 es-4 ges-2
  as-4 ges-2 es-4 c-1 b_3 ges_4 es_1 c_3
  \bar ":|.|:"
  as_4 b_1 des_4 f_3 as-1 ces-4 b-3 f'-1
  d-3 as-1 ces-4 b-3 as_1 f_3 b,_1 as_4
}

\score {
  \new Staff {
    \global
    \clef "treble_8"
    \classicalGuitar
  }
  \layout {
    indent = #0
    ragged-right = ##f
    ragged-last = ##f
  }
}
