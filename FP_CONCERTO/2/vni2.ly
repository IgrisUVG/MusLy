\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

vniTwoMusic = \relative e' {
  \base
  \override MultiMeasureRest.expand-limit = #3
  R1*5
  <<
    {
      fis1( g fis g fis g e g) fis( g fis g fis g e g)~ g~ g~ g
    }
    \\
    {
      e1~ e~ e~ e( d)~ d~ d~ d
      e~ e~ e~ e( d)~ d~ d~ d~ d~ d~ d
    }
  >>
  R1*2 r2 b'\p~ b!1-\markup{\italic poco \italic dim}
  cis4( c es e fis f) r fis( a gis b h cis a c h
  b d des f)
  \repeat unfold 50 {<e, fis! cis'!>1}
  \ottava #1
  \set Staff.ottavation = #"8"
  \repeat unfold 4 {
    \repeat unfold 2 {a'16( b)}
    \repeat unfold 2 {g( gis)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {as16( a)}
    \repeat unfold 2 {fis( g)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {g16( gis)}
    \repeat unfold 2 {f( fis)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {fis16( g)}
    \repeat unfold 2 {e( eis)}
  }
  \repeat unfold 8 {
    \repeat unfold 2 {f16( fis)}
    \repeat unfold 2 {dis( e)}
  }
  \repeat unfold 2 {e16( f)}
  d!( e) d( e)
  \repeat unfold 7 {
    \repeat unfold 2 {e16( f)}
    \repeat unfold 2 {d( e)}
  }
  \repeat unfold 6 {
    dis16( e) d( e)
    \repeat unfold 2 {cis( d)}
  }
}