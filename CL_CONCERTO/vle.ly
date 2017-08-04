\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "noteHeads.ly"

vleMusic = \relative es {
  \clef alto
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  <es g b>2.~ q~ q R2.*6 <es' g>2.~ <es g~><des g> R2.*13 h2. h c c R2.*2
  r2 <b,~ es~ g ces~>4 <b es ges ces>2.~ q R2.*7 <b' d>2.~ q8 r r2 r2.
  <<
    {
      r4 ces'2~ \hideNotes ces2. s s
    }
    \\
    {
      s2 <ces, ces'>4~ <ces~ ces'^~>2. <ces~ ces'^~> q4 r2
    }
  >>
  R2.*2 <f,~ c' ges'>2.( <f d' f>~ q) R2.*20 as'2.( g2 f4 e2 f4~ f2.) R2.*8
  cis2.( c! h b! a as!) R2.*5 h2. d2 b!4 f' e2 R2.*3 r2 r8 <fis, as b>\glissando
  <h c d>-.-^ r r2 R2.*4 b4( <c es><d f><ces ges'><b es>4.<as des>8
  <<
    {
      ges'4 f4. c8
    }
    \\
    {
      b2.
    }
  >>
  <c e>4<as c>4.<c d>8<ces fes>2.)
  <<
    {
      as' heses2( as4) des2( c4)
    }
    \\
    {
      <ces, es>2.<des ges><e ges>
    }
  >>
  R2.*9 <ais, d>2.(<h cis><ais d><h cis><c es><ces fis>4)-^ r2 R2.*4
  as2( g4) as2( g4~ g) fis2( f!2.) R2.*10
  \repeat unfold 8 {
    <<
      {
        \once \override Stem.length = #12
        \displaceHeads #'(0.9 -0.001)
        \once \override Accidental.extra-offset = #'(1 . 0)
        <g_~ as!~>2._>
      }
      \\
      {
        \voiceThree
        \once \override NoteHead.X-offset = #2
        \once \override Stem.rotation = #'(40 0 0)
        \once \override Stem.extra-offset = #'(0.2 . -0.2)
        \once \override Stem.length = #9.5
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental.extra-offset = #'(3.7 . 0)
        a~
      }   
    >>
    <<
      {
        \once \override Stem.length = #12
        \displaceHeads #'(0.9 -0.001)
        \once \override Accidental.extra-offset = #'(1 . 0)
        <g as!>
      }
      \\
      {
        \voiceThree
        \once \override NoteHead.X-offset = #2
        \once \override Stem.rotation = #'(40 0 0)
        \once \override Stem.extra-offset = #'(0.2 . -0.2)
        \once \override Stem.length = #9.5
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental.extra-offset = #'(3.7 . 0)
        a!
      }   
    >>
  }  
  a2.->~ \repeat unfold 23 {a2.~} a2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  <<
    {
      \voiceThree
      \once \override NoteHead.X-offset = #1
      \hide Flag
      \hide Stem
      \once \override Accidental.extra-offset = #'(3.7 . 0)
      g'4 s2 s2.*3 s2
      \once \override NoteHead.X-offset = #1.2
      \once \override Accidental.extra-offset = #'(3.3 . 0)
      c,,!4
    }
    \\
    {
      %\displaceHeads #'(0 0 0 1 -1)
      \hide Flag
      \hide Stem
      \once \override Accidental.extra-offset = #'(0.3 . 0)
      <fis' as>4\glissando s2 s2. s s s2
      \once \override Accidental.extra-offset = #'(1.3 . 0)
      <cis, d>4
    }
  >>
  \repeat unfold 2 {
    <<
      {
        %\displaceHeads #'(0 0 0 1 -1)
        \undo \hide Flag
        \undo \hide Stem
        \once \override Stem.length = #11
        \once \override Accidental.extra-offset = #'(1.3 . 0)
        <cis!_~ d~>2.
      }
      \\
      {
        \voiceThree
        \undo \hide Flag
        \undo \hide Stem      
        \once \override NoteHead.X-offset = #1.6
        \once \override Stem.rotation = #'(35 0 0)
        \once \override Stem.extra-offset = #'(0.1 . -0.2)
        \once \override Stem.length = #9.5
        \once \override Accidental.extra-offset = #'(3.5 . 0)
        c!2._~
      }
    >>
  }
  <<
    {
      %\displaceHeads #'(0 0 0 1 -1)
      \undo \hide Flag
      \undo \hide Stem
      \once \override Stem.length = #11
      \once \override Accidental.extra-offset = #'(1.3 . 0)
      <cis! d>2._\markup {
        \with-dimensions #'(0 . 0) #'(0 . 0)
        \override #'(thickness . 2)
        \box
        \with-dimensions #'(-1 . 6) #'(1.5 . 6)
        \null
      }
    }
    \\
    {
      \voiceThree
      \undo \hide Flag
      \undo \hide Stem      
      \once \override NoteHead.X-offset = #1.6
      \once \override Stem.rotation = #'(35 0 0)
      \once \override Stem.extra-offset = #'(0.1 . -0.2)
      \once \override Stem.length = #9.5
      \once \override Accidental.extra-offset = #'(3.5 . 0)
      c!2.
    }
  >>
  R2.*11%\bar "||" 
  R2.*20
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \numericTimeSignature
  \time 4/4
  R1*8
  <d es fes>8 as''!4.~ as2~ as8 \repeat unfold 12 {as4.~ as2~ as8}
  as4.~ as2 g4->( f-- g-- <c d>--<e g>1->)
}