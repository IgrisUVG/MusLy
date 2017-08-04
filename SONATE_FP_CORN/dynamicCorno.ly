\version "2.18.0"
\language "deutsch"
dynamicCorno = {
  \override Hairpin.to-barline = ##f
  \override TextScript #'staff-padding = #2
  %\override DynamicLineSpanner.staff-padding = #6
  s1*7 s2 s2\sf s2 s4 s4\f s4\sf s2.%-\markup {\italic {poco dim}}
  s2. s4\mp s2. s4\> s2. s4\! s1*4 s1\mf s1*32 s1\sf s2 s4 s8 s8\sf\>
  s2 s2\!
}