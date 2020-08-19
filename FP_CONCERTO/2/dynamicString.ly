\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

dynamicString = {
  \override Hairpin.to-barline = ##f
  s1*5 s4\p s2.^\markup{\italic legato \italic tremolo} s1*4
  s1^\markup {\italic cresc} s1*2 s1\f s1*19 s1*45\ppp
  s1*5^\markup {\italic diminuendo} s1\sf s2 s2\> s1*10\ppp
}

dynamicStringAlt = {
  \override Hairpin.to-barline = ##f
  s1*5 s4\p s2.^\markup{\italic legato \italic tremolo} s1*4
  s1^\markup {\italic cresc} s1*2 s1\f s1*19 s1*45\ppp
  s1*7^\markup {\italic diminuendo} s2 s2\p s1*9
}