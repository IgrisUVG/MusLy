\version "2.18.0"
\language "deutsch"
cornoTwoMusic = \relative e {
  \base
  \override MultiMeasureRest #'expand-limit = #3
  \clef bass
  R1*13 r2 e'~ e1 e,2( e'~ e1) cis2.( d4 h2. d4 fis,2. a4 e1~ e) <d e>->~ q
  R1 b'->\>~ b!\! R1*56 es1->^~( es!2 d)
}