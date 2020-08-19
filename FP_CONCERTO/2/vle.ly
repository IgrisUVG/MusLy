\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

vleMusic = \relative e' {
  \base
  \clef alto
  \override MultiMeasureRest #'expand-limit = #3
  R1*5
  <<
    {
      d1( cis d cis h a)~ a~ a d( cis d cis h a)~ a~ a
    }
    \\
    {
      a1~ a~ a~ a~ a( g e g) a~ a~ a~ a~ a( g e g)
    }
  >>
  a2.( d4 g fis e cis h!1)~ h~ h2 c~ c!1 h~ h~ h2 d4( cis
  e f b a g gis fis e f es c) r
  \repeat unfold 50 {f!2-- f--} R1*2 r2 b~( b!1~ b!2 a) r
  c,~( c4 h'2.~ h2 cis es2. d4) R1 r4 c2->( h4) b2->( e,4) r
  r2 as~( as!1^~
  \once \override TieColumn #'tie-configuration = #'((6.0 . 1))
  as!2 g) fis1~ fis~ fis fis~ fis~ fis
}