\version "2.19.15"
%\version "2.18.0"
\language "deutsch"

\include "noteHeads.ly"

vniTwoMusic = \relative {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*6 <des'' as'>2.~ q r <c g'>~ <c g'~><ces g'> R2.*13
  <e, h' f'>2. q <es c' ges'><es c' f>
  <es b' es>:32~ q:32~ q:32~ q:32~ q:32~ q:32~ q:32
  <e h' e>:32~ <e h'~ e>:32
  <eis h' eis>:32~ q:32~ <eis~ h' eis~>:32 <eis b'! eis>:32~ q8 r r2
  r2 <ces' ces'>4~ q2.~ q~ q~ q4 r2
  R2.*2 <c es ges>2.( <b d f>~ q) R2.*9 r4 es,8( g b des <a e'>2.:32)
  R2.*8 h2.~( h b! a as!) R2.*19 <d, g>2. <f b>2 <d f>4 <g c>2. R
  \once \hide Stem <g a>4:32\glissando s2 s2. s <e' es'!>8-.-^ r r2
  R2.*4
  <<
    {
      d2.~( d des c ces)
    }
    \\
    {
      s ces( b2 as4 g2 as4~ as2.)
    }
  >>
  <ces es>2.<des ges><e ges> R2.*9 as,2.( b as b h as4)-^ r2 R2.*4
  as2( g4) as2( g4~ g) b2( a2.) R2.*10 
  \repeat unfold 4 {a2.->~ a} r a-.-^ R2.*8
  <<
    {
      \once \hide Stem \parenthesize a,4\glissando s2 s2.*4 
      ces''2 s4
    }
    \\
    {
      s2 s8 \once \hide Stem \parenthesize a,,8\glissando s2.*4 
      b''2 r4
    }
    \\
    {
      \voiceTwo
      s2.*2 s2 s8 \once \hide Stem \parenthesize <a,, c>8\glissando
      s2.*2
      \once \override Accidental.extra-offset = #'(1 . 0)
      \stemDown <ces' f>2 s4
    }
  >>
  R2.*14 r8
  <<
    {
      \voiceThree
      \once \override NoteHead.X-offset = #1.7
      \hide Flag
      \hide Stem
      \once \override Accidental.extra-offset = #'(5.7 . 0)
      fes4\glissando s4. s2. s2 s8.. \hideNotes b,,32
    }
    \\
    {
      \displaceHeads #'(0 0 0 1 -1)
      \hide Flag
      \hide Stem
      \once \override Accidental.extra-offset = #'(0.6 . 0)
      <e' f ges>4:32\glissando s4. s2. s2 s8.. \hideNotes g,,32
    }
  >>
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*3 r2 <fis' gis>4( <eis ais>2<e a>4<dis gis>2.) R2.*3 r4 des8( c b4)
  \repeat unfold 4 {<f' a c>2. <es g b>}
  <f a c>2.
  %\bar "||"
  %\time 3/4
  <es g b>
  \repeat unfold 9 {<f a c>2. <es g b>} <f a c>2.
  \numericTimeSignature
  \time 4/4
  as,2^\markup {\italic Solo} b h4 cis es8 f g as 
  heses as d as b a dis a b g' g as g h, c ges' ges as b c des d ces b
  a as ges fes es d as' a b a g es des4 f8 fis f! e es d des c h b 
  a4 \repeat unfold 4 {c8( d~ d4.) d8( c4)} c8( d~ d4.)
  <<
    {
      \repeat unfold 11 {d8~ d4.} \repeat unfold 7 {des8~ des4.} des8
    }
    \\
    {
      s8 \repeat unfold 5 {h4 h2.} b!4 b2. \repeat unfold 3 {b4 b2.}
    }
  >>
  c4->( a-- c-- <e g>--<fis a>1->)
}