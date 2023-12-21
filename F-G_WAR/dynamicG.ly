\version "2.19.15"

\language "deutsch"

pAndF = \markup {
  \column {
    \line {\number \magnify #0.6 1. \dynamic p}
    \line {\number \magnify #0.6 2. \dynamic f}
  }
}
fAndP = \markup {
  \column {
    \line {\number \magnify #0.6 1. \dynamic f}
    \line {\number \magnify #0.6 2. \dynamic p}
  }
}

dynamic = {
  \once\override TextScript.extra-offset = #'(-4.5 . 3)
  s2*17-\pAndF s2*6\p s8 s4.\< s4. s16\! s16
  \once\override TextScript.extra-offset = #'(-4 . 2)
  s2-\fAndP
  s2*6  s8 s4.\> s2\! s4 s\f s2*12
  \once\override Hairpin.extra-offset = #'(1 . 2)
  s2*3\>
  \once\override DynamicText.extra-offset = #'(-3 . 2.5)
  s2*8\mp 
  \once\override DynamicText.extra-offset = #'(-3 . 2.5)
  s2*7\mf s2*15\f s8 s4.\> s2 s2*4\! s4 s\> s2 s2\! s2*4
  s4
  \once\override Hairpin.extra-offset = #'(0 . 2)
  s\< s2 s4 s\! s2*7 s16 s\> s4. s2*7\! s2\< s2*2\f
  s4
  \once\override TextScript.extra-offset = #'(0 . 3)
  s-\markup {\italic {poco dimin.}} s2*3
  s8
  \once\override Hairpin.extra-offset = #'(0 . 2)
  s4.\<
  \once\override DynamicText.extra-offset = #'(-3 . 3)
  s8\ff s4
  \once\override DynamicText.extra-offset = #'(-3.5 . 3)
  s8\mf s2*7 s4 
  \once\override DynamicText.extra-offset = #'(-2.5 . 2)
  s\sf s2*4 s4
  \once\override Hairpin.extra-offset = #'(0 . 1.5)
  s\> s2 s\!
}