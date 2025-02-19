\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

fluteMusic = \relative es'' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  <g b>2.~ q~ q R2.*6 <g c>2.~ q <ces des> R2.*6 f,2.~ f~ f~ f~ f~ f~ f~ f~ f
  R2.*2 r4 b,2~ b2.~ b~ b~ b R2.*4
  <<
    {
      r2 \stemDown h'4~ \stemUp h2.~ h
    }
    \\
    {
      s2. r2 h4~ h2.
    }
  >>
  R2.*3 r2 <b fis'>4~ q2. R2.
  <<
    {
      as8( b ces des es4) as,8( b ces des es4)
    }
    \\
    {
      s4 as,8( b ces des es4) as,8( b ces des es2.)
    }
  >>
  <es ges>4-^ r2
  \ottava #1
  \set Staff.ottavation = #"8"
  <d b'>2.~ q
  \ottava #0
  R2.*7 
  \ottava #1
  \set Staff.ottavation = #"8"
  gis2.( a b) 
  \ottava #0
  R 
  \ottava #1
  \set Staff.ottavation = #"8"
  <ges, b'>
  \ottava #0
  R2.*9
  <<
    {
      r4 a2~( a2. as!)
    }
    \\
    {
      s2 d,4~( d2. des)
    }
  >>
  R2.*27 <dis' fis>4-.-^ r2 R2.*5
  <<
    {
      r4 c2~( c2. ces)
    }
    \\
    {
      s2 f,4~( f2. fes)
    }
  >>
  R2.*3 <cis cis'>2. q2-> <h h'>4->~ q q4.-> q8-> <ces ces'>4-> r2 R2.*6
  r4 <des g>8(<es as><f b><ges ces><ases des>4)<des, g>8(<es as><f b><ges ces><ases des>4) r2
  R2.*11 r4 d,2~ d2.~ d R2.*6
  \ottava #1
  \set Staff.ottavation = #"8"
  \repeat unfold 4 {g'2.->~ g}
  \ottava #0
  r2.
  \ottava #1
  \set Staff.ottavation = #"8"
  g-.-^
  \ottava #0
  R2.*3
  <<
    {
      s4. d8( c4->)
    }
    \\
    {
      d8( c4^>) s4.
    }
  >>
  R2.*11
  \ottava #1
  \set Staff.ottavation = #"8"
  h'2
  \ottava #0
  r4 R2.*2 r2 <es,, ges>4~ 
  \repeat unfold 8 {q2.~} q2. R2.*2 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  \set Score.currentBarNumber = 192
  R2.*5
  <dis gis>2. r4 <gis, h>8(<a cis><h d>4~ 
  q8)<gis' cis>_(->~<gis cis~>2<a cis>2.)<b d> R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  \repeat percent 3 {
    \repeat percent 4 {as16 g ges f}
  }
  \repeat percent 4 {b a as g}
  \once\override TrillSpanner #'(bound-details right padding) = #3
  h1~\startTrillSpan h~ h~ h r4\stopTrillSpan <as c>2(<g h>4)
  r <ges b!>(<f a><fes as><es g><d fis><des f><c e><h dis>1)
  <c e><cis fis><d g><es as>4-^ r r2 R1*12 r2 gis'( a4-.) r2. R1*4
  c,8 b as f es des b ges f ges as ces des es ges b
  ces des fes as ges es ces as f! e d c a g e d
  d e fis a c e g a e'1->~ e
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  f4-^
}