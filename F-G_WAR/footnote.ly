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
      e,16\rest f^3 c^2^( b)
    }
    \\
    {
      \voiceTwo
      f4
    }
  >>
  \once\override Fingering.extra-offset = #'(0 . -3.3)
  a16-4( g) f
  \once\override Fingering.extra-offset = #'(0 . -3.3)
  es-2
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
        \shape #'((0 . 0) (0.5 . 0) (0 . 0.5) (1 . 0)) Slur
        \once \override TextScript.extra-offset = #'(-0.5 . -1)
        h''8.(^\markup{\magnify #0.6 V} a16)
      }
      \\
      {
        s8 h,\rest <c e>
      }
      \\
      {
        g,\glissando \stemDown
        \once\override Fingering.extra-offset = #'(0.2 . 0)
        dis'4_2
      }
    >>
  }
}