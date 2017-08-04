\version "2.18.0"
\language "deutsch"
\include "base.ly"
vniOneMusic = \relative es'' {
  \base
  \override MultiMeasureRest #'expand-limit = #3
  R1*5
  <<
    {
      d1~ d~ d~ d~ d~ d~ d~ d
      d~ d~ d~ d~ d~ d~ d~ d~ d~ d~ d
    }
    \\
    {
      a1~ a~ a~ a~  a( h a)~ a
      a~ a~ a~ a~ a( h a)~ a~ a~ a~ a
    }
  >>
  R1*9
  \ottava #1
  \set Staff.ottavation = #"8"
  \repeat unfold 50 {\repeat tremolo 32 <g'' as! c!>32}
  \repeat unfold 4 {
    \repeat unfold 2 {<fis d'>16(<f des'>)}
    \repeat unfold 2 {<es c'>(<e h'>)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {<f des'>16(<e c'>)}
    \repeat unfold 2 {<d h'>(<es b'>)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {<e c'>16(<dis h'>)}
    \repeat unfold 2 {<des b'>(<d a'>)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {<dis h'>16(<d b'>)}
    \repeat unfold 2 {<c a'>(<cis gis'!>)}
  }
}