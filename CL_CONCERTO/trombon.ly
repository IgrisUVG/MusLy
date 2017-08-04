\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

trombonMusic = \relative es {
  \clef bass
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  <g, b g'>2.~ q~ q R2.*6 <c g' c>2.~( q <des as' ces>) R2.*11
  <<
    {
      h'2.~ h~ h~ h c2( d4 cis2.)
    }
    \\
    {
      r2 <e, f>4~ q2.~ q~ q <es ges>2( <e g>4 <f as>2.)
    }
  >>
  R2.*2 r4 <ces~ g' b~ es~>2<ces ges' ces es>2.~ q
  R2.*7 <fis, d' b'>2.~ q8 r r2
  <<
    {
      r2 r8 b_~ b2._~ \hideNotes b
    }
    \\
    {
      s2. <fis~ fis'^~> <fis b d fis>
    }
    \\
    {
      \voiceTwo
      s2. r8 d'^~ d2^~ \hideNotes d2.
    }
  >>
  <ges, ces es ges>~ q4 r2 R2.*2 <b b'>2.~ q~ q R2.*22 a2. R2.*15
  \repeat unfold 8 {b,2.~} b R2.*4 <as' d>4-.-^ r2 R2.*20
  <<
    {
      s2. r4 <a a'>-> q-> q2.-> r4 q-> q-> q2.-> <b b'>4-^ r2
    }
    \\
    {
      g2.( ges g! ges f) s
    }
  >>
  R2.*18
  \repeat unfold 8 {
    <<
      {
        <e' g>2.->~ q
      }
      \\
      {
        dis2.-> cis->
      }
    >>
  }
  <<
    {
      <e g>2.->~ q2
    }
    \\
    {
      dis2.-> cis2->
    }
  >>
  r4 R2.*10 r2 <as' es' g>4-.-^ r <c, c'>2->~ q2.~ q~ q 
  R2.*7 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*7
  r8 <cis e gis cis>(->~ q2~ <cis fis a cis>2.)<f! b> R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  \repeat unfold 2 {
    <<
      {
        %\once \override Stem.length = #12
        %\displaceHeads #'(0.9 -0.001)
        \once \override Accidental.extra-offset = #'(.5 . 0)
        <e! des'!>1~
      }
      \\
      {
        \voiceThree
        \once \override NoteHead.X-offset = #.5
        %\once \override Stem.rotation = #'(40 0 0)
        %\once \override Stem.extra-offset = #'(0.2 . -0.2)
        %Z%\once \override Stem.length = #9.5
        %\hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental.extra-offset = #'(4 . 0)
        es!_~
      }   
    >>
  }
  <<
    {
      %\once \override Stem.length = #12
      %\displaceHeads #'(0.9 -0.001)
      \once \override Accidental.extra-offset = #'(.5 . 0)
      <e! des'!>1
    }
    \\
    {
      \voiceThree
      \once \override NoteHead.X-offset = #.5
      %\once \override Stem.rotation = #'(40 0 0)
      %\once \override Stem.extra-offset = #'(0.2 . -0.2)
      %\once \override Stem.length = #9.5
      %\hide Flag
      %\once \override Flag.stencil = ##f
      \once \override Accidental.extra-offset = #'(4 . 0)
      es!
    }   
  >>
  <es! fis a e'> R1*4 r4 <es g c>2(<f as des>4) g1~ g r4 
  <<
    {
      ges-- f-- fes-- es-- d-- des-- c--
      h-- b-- a-- 
      \once \override Accidental.extra-offset = #'(1.3 . 0)
      as-- g-- fis-- f-- e-- es!_^
    }
    \\
    {
      g g g as as as as a a 
      \once \override NoteColumn.force-hshift = #1
      a 
      %\once \override NoteHead.X-offset = #1.9
      %\once \override Stem.extra-offset = #'(1.9 . 0)
      \once \override NoteColumn.force-hshift = #1.5
      \once \override Accidental.extra-offset = #'(2.35 . 0)
      a!
      h h h h c^^
    }
  >>
  r2. R1*8 r4 <e, d' g as>4-^ r2 R1*3 r4
  \repeat unfold 2 {es''2.~ es1~ es4}
  <<
    {
      es2.~ es1~ es4
    }
    \\
    {
      s2. s2 <es, es'>-> s4
    }
  >>
  es'2.~ es1~ es4 <fes, ges><es fes><des es fes>
  <d! g!>1-><e c'>-><fis h>->~ q
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <f! h>4-^
}