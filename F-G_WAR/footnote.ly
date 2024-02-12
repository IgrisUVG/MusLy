\version "2.19.15"

\language "deutsch"

\include "scripts.ly"

footnotA = \relative {
  \key e \major
  \time 2/4
  \omit Staff.TimeSignature
  <<
    {
      b''4^\markup{\magnify #0.6 VIII}
    }
    \\
    {
      e,16\rest f-3 c^(-2-\markup {
        \postscript #"1 0.8 moveto 1.8 -0.3 rlineto stroke"
      } b)-2
    }
    \\
    {
      \voiceTwo
      f4
    }
  >>
  \override Fingering.extra-offset = #'(0 . -3.3)
  a16-1_(g-4) f-1 es-4
  \revert Fingering.extra-offset
}

footnotB = \relative {
  \relative {
    \key e \major
    \time 2/4
    \omit Staff.TimeSignature
    %\set fingeringOrientations = #'(up right)
    <cis' ais' fis'>8
    <<
      {
        s8
        \once\override Slur.positions = #'(0 . 1)
        \shape #'((0 . 0) (1 . 0) (0.5 . 0.5) (0 . 0)) Slur
        h''8.( a16
        \stemDown
        <e, h' gis'>8)<c' a'>
      }
      \\
      {
        s8 h\rest <c e>
      }
      \\
      {
        g,\glissando \stemDown dis'4
      }
    >>
  }
}