\version "2.19.15"

\language "deutsch"

dynamic = {
  \once\override DynamicText.extra-offset = #'(-3 . 3)
  s2.\f s s4 
  \tag #'Partitur {\once\override DynamicText.extra-offset = #'(0 . 3)}
  \tag #'Part {\once\override DynamicText.extra-offset = #'(-0.5 . 2.5)}
  s2\sf
  \once\override DynamicText.extra-offset = #'(-2.5 . 3)
  s4\p s2. s1*11 s4 s2.-\markup {cresc.} s1*3
  s1*3\f s4 s2.\> s s4\! s1*3\mp s4 s2.\> s s4\! s1\p
  s2 s-\markup {poco cresc.} s1*3 s2. s4\< s1 s2 s4\! s\sf
  s2\f
  \once\override TextScript.extra-offset = #'(0 . 1.5)
  s-\markup {morendo} s1*3
  \tuplet 3/2 2 {s4\p s2.\< s2\> s s4\sf} s2\> s
  \tuplet 3/2 2 {s4 s2\p} s1
  \tuplet 3/2 2 {s4 s2.\< s2\> s s4\sf s2 s4\>}
  s2 s4\! s\ff s2 s\mf s s\> s4 s2.\pp s1
  s1*22 s4 s2.-\markup {poco dim.} s1 s\p s s4
  s2.-\markup {poco a poco cresc.} s1*4 s1\< s1*4\f
  s8 s4\sp s8-\markup {sempre stacc.} s2 s1 s\p
}