\version "2.19.15"

\language "deutsch"

pAndF = \markup {
  \column {
    \line {\number \magnify #0.6 1. \dynamic p}
    \line {\number \magnify #0.6 2. \dynamic f}
  }
}

dynamic = {
  \once\override TextScript.extra-offset = #'(-2 . 0)
  s2*16-\pAndF s4 s\p s2*6 s8 s4.\< s2
  \once\override TextScript.extra-offset = #'(-2 . -0.7)
  s2-\markup\line {\number \magnify #0.6 2. \dynamic p}
  \once\override TextScript.extra-offset = #'(-0.5 . 1)
  s2*6\!-\markup\line{\number \magnify #0.6 1. \dynamic f}
  s8 s4.\> s2\! s4 s\f s2*11 s4 s8 s\> s2*3 
  \once\override DynamicText.extra-offset = #'(-2.5 . -2.5)
  s2*8\mp s2*7\mf s2\f
}