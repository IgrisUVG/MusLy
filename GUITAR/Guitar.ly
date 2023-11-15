\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = ""
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  %top-markup-spacing.basic-distance = #8
  %markup-markup-spacing.basic-distance = #25
  %markup-system-spacing.basic-distance = #15
  %score-markup-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #15
  score-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  indent = #10
  %ragged-right = ##f
  %ragged-last = ##f
}

\score {
  %\sourcefileline 1096
  \new StaffGroup <<
    \new Staff \relative{
      d'''!8 dis, as' <e g> <es ges>[ r <cis e>( <d f>)]
      \bar ":|."
    }
    \new Staff \relative{
      <b des>8[ <b des!> r b'(] a) <c, es>  g'( as)
    }
  >>
}
\score {
  \relative {
    \key a \major
    \time 3/4
    <<
      {
        r4 cis'' dis e2.~ e4 fis gis a2.~ a4 h a gis2. fis <e,, e''>
      }
      \\
      {
        s2. gis'4\rest <a cis> q s2. cis4\rest <cis e> q s2.
        \repeat unfold 2{a4\rest <a dis> q} s <gis h> q
      }
      \\
      {
        \voiceTwo
        \dotsUp
        s2. a, e' fis cis h s s
      }
    >>
    \bar "||"
  }
}
\score {
  \relative{
    \key a \major
    \time 3/4
    <<
      {
        s2.*2 cis'''2. h~ h4 <his, dis> <cis e>8 r
        s2. dis e~ e4 dis e \acciaccatura fis8 gis2 fis8 e\glissando
        cis2. h~ h4 ais h cis cisis dis <e,, gis' e'>2. r2.
        e'4 fis!\glissando a h cis\glissando e
        cis'2. h~ h4 <his, dis> <cis e>8 r
        s2. dis e~ e4 dis e \acciaccatura fis8 gis2 fis8 e
        d2. cis~ cis4 his cis dis2. eis fis~ fis e
      }
      \\
      {
        <fis, cis' e a>4 e' fis gis a h
        \repeat unfold 2 {cis,4\rest <d gis> q} cis\rest s2
        a'4^\prall gis \stemUp\acciaccatura e8 \stemDown fis4
        fis,4\rest <a cis> q gis\rest <g cis> q s2. a4\rest <a dis> gis\rest
        s <e gis> q d\rest <e gis> q s e2 s4 fis2
        s4 f e d c h s2. s \repeat unfold 2 {cis'4\rest <d gis> q} cis\rest s2
        a'4^\prall gis \stemUp\acciaccatura e8 \stemDown fis4
        fis,4\rest <a cis> q fis\rest <g cis> q s2. a4\rest <fis his> gis\rest
        s <e gis> q d\rest <e gis> q s2. fis4\rest <fis his> q gis\rest <gis h!><gis h>
        a\rest <e a cis> q a\rest <fis a dis> q gis\rest <gis h> q
      }
      \\
      {
        \voiceTwo
        s2.*13 s2 a4
      }
      \\
      {
        \voiceTwo
        \dotsUp
        s2.*2 e2. s a, d a cis d h
        \stemUp e, \stemDown s fis h s2.*2
        a2. r e'2. s a, d a cis d gis, cis s
        \stemUp fis, \stemDown gis cis fis, h e,
      }
    >>
    \bar "||"
  }
}