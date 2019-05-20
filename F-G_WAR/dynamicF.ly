\version "2.19.15"

\language "deutsch"

pAndF = \markup {
  \column {
    \line {\number \magnify #0.6 1. \dynamic p}
    \line {\number \magnify #0.6 2. \dynamic f}
  }
}

dynamic = {
  \once\override TextScript.extra-offset = #'(-4 . 2.5)
  s2*16-\pAndF s4 s\p s2*6 s8 
  \once\override Hairpin.extra-offset = #'(0 . 1)
  s4.\< s2
  \once\override TextScript.extra-offset = #'(-2 . 0.7)
  s2-\markup\line {\number \magnify #0.6 2. \dynamic p}
  \once\override TextScript.extra-offset = #'(-0.5 . 2.5)
  s2*6\!-\markup\line{\number \magnify #0.6 1. \dynamic f}
  s8 s4.\> s2\! s s2*11\f s4 s8 s\> s2*3 
  %\once\override DynamicText.extra-offset = #'(-2.5 . 0)
  s2*8\mp s2*7\mf s2*15\f s8 s4.\> s2 s2*4\! s4 s\> s2 s2\! s2*4
  s4 s\< s2 s4 s\! s2*7 s16 s\> s4. s2*7\! s2\< s2*2\f
  s4 
  \once\override TextScript.extra-offset = #'(0 . 3)
  s-\markup {\italic {poco dimin.}} s2*3
  \once\override Hairpin.extra-offset = #'(0 . 1)
  s4\< s8. s32
  \once\override DynamicText.extra-offset = #'(1 . 1)
  s\ff s8
  \once\override DynamicText.extra-offset = #'(-2 . 1)
  s\mf s4 s2*7 s8 s\sf s4 s2*4 s4 s\> s2 s\!
}