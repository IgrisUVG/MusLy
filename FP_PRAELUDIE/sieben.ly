\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsSieben = \relative e'' {
  \clef treble
  \key e \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegretto"
  h'4( cis8 \acciaccatura fisis, gis4-> g8 fis4) a8( gis a h->~ h2)
  h4( cis8 \acciaccatura fisis, gis4-> g8 fis4) g8( gis e) e~ e2
  d~( d8 cis d dis g1) as4( a b h~ h cis8 \acciaccatura fisis, gis4-> g8 fis4)
  \stemDown
  g8( gis <cis,, g' e'>) <e gis e'>~ q16[ fis'( e cis c h gis e)]
  \stemNeutral
  h''4( cis8 \acciaccatura fisis, gis4-> g8 fis4) a8( gis a h->~ h2)
  h4( cis8 \acciaccatura fisis, gis4-> g8 fis4) g8( gis e) e~ e4.
  << {cis,8( e1)}\\{g,8 <gis h>1}>> R \bar "||"\break
  \cadenzaOn
  \change Staff = LH
  e,8[( gis dis' fis h e, gis
  \change Staff = RH
  dis' fis h e, gis dis' fis] a2)
  \change Staff = LH
  e,,8[( gis
  \change Staff = RH
  dis' fis cis' e, gis dis' fis] cis'4)\bar "!"\break
  \change Staff = LH
  a,,,,8[( g'' cis!
  \change Staff = RH
  f c'
  \change Staff = LH
  a,
  \change Staff = RH
  g' cis f] c'2)
  g,8[( cis! e] h') fis,![( cis' e] b'2)\bar "!"\break
  \change Staff = LH
  e,,,,8[( h' d g! e h'
  \change Staff = RH
  d g! e h' d] g2)
  \change Staff = LH
  e,,8[( h'
  \change Staff = RH
  d a' e h' d] a'4)\bar "!"\break
  \change Staff = LH
  h,,,,8[( d'! gis c!
  \change Staff = RH
  g'!
  \change Staff = LH
  h,
  \change Staff = RH
  d! gis c] g'!2)
  d,8[( gis h] fis') d,[( gis c] f2.) <h,, g'!>4\bar "!"\break
  \cadenzaOff
  <gis cis e>1
  h''8[ cis e] \acciaccatura fisis, gis[ h g fis] e[ cis h]
  \acciaccatura fisis <gis h>[ g fis] e4 fis8 gis4 a8[ h cis] e,4 fis8
  g e \acciaccatura g gis4 h8[ gis] e[ fis~] fis[ fis e] cis4 e8[ fis g]
  h4 cis8 \acciaccatura fisis, gis4 g8 fis4 a8 gis a h~ h2
  h'4( cis8 \acciaccatura fisis, gis4-> g8 fis4) g8( gis e) e~ e4.
  <g,, cis>8^( <gis! cis! e>1)
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( На \concat { 9 \super ом } этаже )}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
voiceA = \relative e {
  r8 <dis' gis h>4. r8 <h e gis>4. r8 <ais e' fis>4. r8 <a dis fis>4.
  r8 <dis gis h>4. r8 <h e gis>4. r8 <ais e' fis>4. r8 <a dis fis>4.
  r8 <a c d> r4 <f h> r <b e> r4. <a c es>8 r4 r8 <as d> r4 <b es> r8 <a h dis>
  r4 <dis gis h>8 r4. <h e gis>8 r8 r <a e' fis> <e a> <h gis'>~ q4 r
  r8 <dis' gis h>4. r8 <h e gis>4. r8 <ais e' fis>4. r8 <a dis fis>4.
  r8 <dis gis h>4. r8 <h e gis>4. r8 <ais e' fis>4 r4 <a dis fis>4 e8~ <e h e,>1
  s1 s2
  \stemNeutral h'4 s4.
  \change Staff = RH
  \stemUp h'4 s8 s4 s2
  s2 cis4 s2 s8 s2 c4 s1 s2. s2 s4.
  \change Staff = LH
  \stemNeutral
  g,4 s
  \change Staff = RH
  \stemUp
  g'4 s2. s4. a4 s2
  s2 g4 s1 s s2
  \change Staff = LH
  \stemNeutral
  <d,! gis!>4 <e h e,>1
  s1*7
  \stemUp
  r8 <dis' gis h>4. r8 <h e gis>4. r8 <ais e' g>4 r4 <a dis fis>4 <a, e'>8 <e h' e>1
}
voiceB = \relative e, {
  e4. e8( gis4.) e8( fis4.) fis8( h4.) cis8(
  e,4.) e8( gis4.) e8( fis4.) fis8( h4.) cis8(
  d4) as( g) des'( c) ges( f) h(\( b) h c cis
  e,4.\) e8( gis4.) e8( fis4) a8 e~ e4 r
  e4. e8( gis4.) e8( fis4.) fis8( h4.) cis8(
  e,4.) e8( gis4.) e8( fis4.) fis8( h4.) a8
  e4 dis \stemUp d cis c8 d dis e~ e2
  \shiftOn e1 s s s2 s8
  \shiftOn a,1 s s
  \shiftOn e'1 s s
  \shiftOn h1 s s s s2
  \stemNeutral
  \ottava #-1
  \set Staff.ottavation = #"8"
  e,4 fis fisis gis a h his cis e, e' cis h gis! g fis f
  e cis' b a gis e' h a fis fisis gis a
  \ottava #0
  \stemDown
  e'4. e8( gis4.) e8( fis4.) fis8( h4.) s8 s1
}
linksSieben = {
  \clef bass
  \key e \major
  \time 4/4
  <<
    {
      \voiceA
    }
    \\
    {
      \voiceB
    }
  >>
}