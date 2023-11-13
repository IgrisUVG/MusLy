\version "2.19.15"

dynamic = {
  \override Hairpin.to-barline = ##f
  s2.*3\f s4 s4\> s8. s16\! s2.*2\p s2\< s8. s16\!
  \tag #'Part {\once \override DynamicText.extra-offset = #'(-2 . 0)}
  \tag #'(Partitur PartII) {\once \override DynamicText.extra-offset = #'(-2.5 . 3)}
  s2.*4\f s8\f s8\sp s2 s4. s4.\p s2.\f s2.*5\mf s2.*4\f
  \once \override TextScript.extra-offset = #'(0 . 10)
  s8\ff^\markup { \italic rit }
  s2
  \tag #'Partitur {s8\mp s2.*5 s8.}
  \tag #'Part { s8 s8\mp s2.*5 s16} s16
  s2 s8 s4\> s4. s4\! s8\pp s4. s16 s8.\p s8
  \once \override TextScript.extra-offset = #'(0 . 12)
  s4.^\markup { \italic rit } s2.*8\f s4. s\> s2.*5\p
  s4. s8. s\< s4. s\f s2.*1 s4.
  \once \override TextScript.extra-offset = #'(0 . 12)
  s4.^\markup { \italic rit } s2.
}