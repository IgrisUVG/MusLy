\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

dynamicClarinetSolo = {
  \override Hairpin.to-barline = ##f
  %\override TextScript #'staff-padding = #2
  %\override DynamicLineSpanner.staff-padding = #6
  s2.*8 s2.\p s2.*4 s2.\> s2%-\markup {\italic {poco dim}}
  s8 s8\! s2.*19 
  \override TextScript.extra-offset = #'(2 . 1)
  s2.*7-\markup {\right-align {\italic dolce \dynamic pp}}
  \override DynamicTextSpanner.style = #'none
  \once \crescTextCresc
  s2.*8\< s2.*4\!
  \override TextScript.extra-offset = #'(0 . 4)
  s2.*9-\markup {\dynamic pp} s2.\< s2 s4\! s4 s2\f s2.*3 s2.\> s2 s4\!
  s4 s2\p s2.*4 s2
  \once \dimTextDim
  s4\> s2.*2 s2.\pp
}