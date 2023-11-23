\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vcMusic = \relative es {
  \clef bass
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  <b es>2.~ q~ q R2.*6 <g c g'>2.~ q <as des f> R2.*13
  <e' f>2. q <es ges><e f> R2.*3
  <<
    {
      <ges, ces es b'~>2. <ces, es ges b ces es ges b>
    }
    \\
    {
      s4 <es b' ces ges'>2 s2.
    }
    \\
    {
      s2 <ces ges' b es>4 s2.
    }
  >>
  R2.*7 <d' fis>2.~ q8 r r2 R2.*2
  <<
    {
      r4 ces'2~ ces2.~ ces4 r2
    }
    \\
    {
      s2 ces4~ ces2.~ ces4 s2
    }
    \\
    {
      \voiceTwo
      s2. s4 ces2^~ \hideNotes ces4 s2
    }
    \\
    {
      \voiceTwo
      s2. s2 ces,4~ ces2.
    }
  >>
  R2.*2
  <<
    {
      b'2.~ b~ b
    }
    \\
    {
      <es, ges>( <d f>~ q)
    }
  >>
  R2.*10 h'2. R <ges, ges'>2(<f f'>4) R2.*6
  g'4( c d es c4. b8 es4 d4. a8 cis4 a4. h8 des2.) R2.*19
  <<
    {
      g,2.~ g4 f2~ f4 e2
    }
    \\
    {
      h2. d2 b!4 c2.
    }
  >>
  <<
    {
      \voiceThree
      \once \override NoteHead.X-offset = #1.7
      \once \override Stem.rotation = #'(-43 0 0)
      \once \override Stem.extra-offset = #'(-0.5 . -2.7)
      \once \override Stem.length = #6
      \hide Flag
      %\once \override Flag.stencil = ##f
      \once \override Accidental.extra-offset = #'(3.7 . 0)
      h
    }
    \\
    {
      \once \override Stem.length = #15
      %\displaceHeads #'(0 0 0 1 -1)
      <b c e f ges>^>:32
    }
  >>
  R2.*3 <fis' as>2.-> R2.*4
  <<
    {
      s2. es( b' c as)      
    }
    \\
    {
      es2.( f ges g!4 f4. g8 as2.)
    }
  >>
  b <f f'><g! g'!><e e'> R2.*8 <cis fis>2.(<d g><cis fis><d g><e a>
  <es! as!>4)-^ r2 R2.*4
  c2. c~ c4 c2~ c2. R2.*3
  r2 r8 as-+ a-+ d-+ f-+ a-+ as\open\glissando d~ 
  d2 e8-+ f-+ a-+ as-+ r4 g8-+ d-+
  des-+ as4.\open\glissando h,8-. r r4 f'8-+ e-+ b!-+ r r2.
  \repeat unfold 5 {<e f>2.->~ <e! f>} R2.*31
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*19 %\bar "||"
  R1*15
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \numericTimeSignature
  \time 4/4  
  r2. c4(->^\markup {\italic Solo} as1 g' ges2 f4 b, fes'1 
  fes2 es4 as, d1 dis e2)<g as c d>~ q1~ q~ q~ q~ 
  \set doubleSlurs = ##t
  q( <fis a h d>)~ q~ q~ q( <ges as! b! des>)~<ges as b des>~ 
  q2 <f as ces>~ q4 <fes ges as><es ges as><des f ces'>
  <c! g'! c!>1-><d a' d>-> R1*2
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
}