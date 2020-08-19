\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

dynamicPiano = {
  \override Hairpin.to-barline = ##f
  %\override DynamicLineSpanner.staff-padding = #2
  s1*5 s1\p s1*5 s1-\markup {\italic cresc} s s\f s1*14 s1-\markup {\italic dimin}
}