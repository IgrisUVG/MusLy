dynamic = 
%\relative
{
  s2.*3\f s4 s4\> s8. s16\! s2.*2\p s2\< s8. s16\!
  %\once \override DynamicText.extra-offset = #'(-2.5 . 4)
  \once \override DynamicText.extra-offset = #'(-2.5 . 0)
  s2.*4\f s8\f s8\sp s2 s4. s4.\p s2.\f s2.*5\mf s2.*4\f
  s8\ff s2^\markup { \italic rit } s8\mp s2.*5 s8. s16^\markup { \italic rit }
  s2 s2.*2 s16 s8.\p s8 s4. s2.*9\f s2.*10\p
}