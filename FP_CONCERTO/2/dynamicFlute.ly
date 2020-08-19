\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

dynamicFlute = {
  \override Hairpin.to-barline = ##f
  s1\pp s1*12 s1\f s1*37 s2 s2\< s2. s4\> s2. s4\!
  s2 s4.\pp s8\< s1 s2 s4.\! s8\> s1 s1\!
  s4 s2\pp\> s8 s8\! s2\pp\> s8 s8\! s4 s2 s2\< s2. s4\> s2. s8 s8\!
  s1*2\pp\> s2 s2\!  s1*2\ppp
  s1*11^\markup{\italic poco \italic cresc}
  s2 s2^\markup{\italic dim} s1*2 s1\sf s4 s2.\> s1*10\ppp
}