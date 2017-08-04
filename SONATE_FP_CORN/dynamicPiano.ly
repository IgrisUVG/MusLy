\version "2.18.0"
\language "deutsch"
dynamicPiano = {
  \override Hairpin.to-barline = ##f
  %\override DynamicLineSpanner.staff-padding = #6
  s1*4\f s1*2\ff s1\ff s\ff s1\mp s1*2\mp s2 s2\> s2. s4\! s1*4\ff
}