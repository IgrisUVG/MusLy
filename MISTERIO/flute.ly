\version "2.18.0"
\language "deutsch"
fluteMusic = \relative es'' {
  \time 3/4
  \key es \major
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
  <es ges>4-^ r2 <d b'>2.~ q R2.*7 gis2.( a b) R <ges, b'> R2.*9
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
  R2.*11 r4 d,2~ d2.~ d R2.*6 \repeat unfold 4 {g'2.->~ g} r2. g-.-^ R2.*3
  <<
    {
      s4. d8( c4->)
    }
    \\
    {
      d8( c4^>) s4.
    }
  >>
  R2.*11 h'2 r4 R2.*2 s2 <es,, ges>4~ \repeat unfold 8 {q2.~} q2. R2.*2 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
}