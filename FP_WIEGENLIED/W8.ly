\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
achteRH = \relative {
  \clef treble
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  r1 gis'4( e h'2) a4( e c'2) h4( fis') a,( g as c h2) d,4( h' b2)
  c,!4( a' as2) des,4( c) g'( fis dis e f2)
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicAcht = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
achteLH = \relative {
  \clef bass
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \repeat unfold 4 {d'8[ cis]}
  \repeat unfold 4 {<h d>[<ais cis>]}
  <a c!>[<gis h>]\repeat unfold 3 {<a c>[<gis h>]}
  <h d>[<ais cis>]<h c>[<a d>]<b c>[<as h>]<g b>[<fis a>]
  <f! as>[<e g>]<f as>[<e g>]<fis a>[<eis gis>]<fis a>[<eis gis>]
  <es g!>[<d fis>]<es g>[<e f>]<dis fis>[<d g>]<cis e>[<d es>]
  <cis e>[<c d>]<h es>[<b des>]<h c>[<a des>]<as h>[<g c>]<as h>[<g b>]
  <fis a>[<g as>]<f a>[<e gis>]<f g>[<dis fis>]<e f>[<es g>]<e f>[<es g>]<d a'>2
}