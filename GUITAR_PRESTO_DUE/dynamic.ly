\version "2.19.15"

dynamic = {
  %\override DynamicLineSpanner.staff-padding = #3
  %\override TextScript.staff-padding = #1
  \override Hairpin.to-barline = ##f
  s2.*3\f s4 s4\> s8. s16\! s2.*2\p s2\< s8. s16\!
  \tag #'Part {\once \override DynamicText.extra-offset = #'(-2 . 0)}
  \tag #'(Partitur PartI) {\once \override DynamicText.extra-offset = #'(-2.5 . 3)}
  s2.*4\f s8\f s8\sp s2 s4. s4.\p s2.\f s2.*5\mf s2.*4\f
  \once \override TextScript.extra-offset = #'(0 . 10)
  s8\ff^\markup { \italic rit }
  s2
  \tag #'Partitur {s8\mp s2.*5 s8.}
  \tag #'Part { s8 s8\mp s2.*5 s16} s16
  s2 s8
  \tag #'PartII {\once \override Hairpin.extra-offset = #'(0 . 2)}
  s4\> s4. s4\!
  \tag #'PartII {\override DynamicText.extra-offset = #'(0 . 2)}
  s8\pp s4
  \tag #'PartI {
    s8 s16
    \override DynamicText.extra-offset = #'(0 . 2)
    s8.\p s8
    \once \override Hairpin.extra-offset = #'(0 . 2)
    \once \override TextScript.extra-offset = #'(0 . 12)
    s4.^\markup { \italic rit }\>
  }
  \tag #'PartII {
    \override DynamicText.extra-offset = #'(0 . 2)
    s8\mp
    \once \override Hairpin.extra-offset = #'(0 . 2)
    s4.\>
    \once \override TextScript.extra-offset = #'(0 . 12)
    s4^\markup { \italic rit } s8\p
  }
  \tag #'PartI {
    \revert DynamicText.extra-offset
    s2.*8\f
  }
  \tag #'PartII {
    \once \override TextScript.extra-offset = #'(-2 . 0)
    s2.*8-\markup {\dynamic f \normal-text marc}
  }
  \revert DynamicText.extra-offset
  s4. s\> s2.*5\p
  \tag #'PartI {s4. s8. s\< s4.}
  \tag #'PartII {s4. s\< s}
  s\f s2.*1 s4.
  \once \override TextScript.extra-offset = #'(0 . 12)
  s4.^\markup { \italic rit } s2.
}