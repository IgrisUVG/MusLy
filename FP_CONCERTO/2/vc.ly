\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "base.ly"

vcMusic = \relative e {
  \base
  \clef bass
  \override MultiMeasureRest.expand-limit = #3
  R1*5 d1~ d~ d~ d~ d~ d~ d~ d
  d~ d~ d~ d~ d~ d~ d~ d~ d~ d~ d R1*3
  c1( es2) d~( d2. a'4 as2 h!~ h2.) es4( gis d2.) R1*52
  r2 b~( b!1~ b!2 a) r c,~( c4 h'2.~ h2 cis es2. d4) R1
  r4 c2->( h4) b2->( e,4) r r2 as~( as!1^~
  \once \override TieColumn.tie-configuration = #'((5.0 . 1))
  as!2 g) fis1~ fis~ fis
  r2 e~( e1~ e2 d) r fis,~( fis4 e'2.~ e2 h' fis'2. e4)
}