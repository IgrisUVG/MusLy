\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoTwoMusic = \relative es' {
  %\clef bass
  \time 3/4
  \override MultiMeasureRest #'expand-limit = #2
  \key es \major
  \set Score.skipBars = ##t
  b2.~ b~ b as~ as~ as R2.*3 <es g>2.~( q <des as'>) R2.*8  e'2.~ e~ e~ e~ e~ e~ e
  c2( d4 cis2.) r2. r2 <es,_~ c'>4<es ces'>2.~ q~ q
  R2.*7 <b' fis'>2.~ q8 r r2
  <<
    {
      s2. r4. fis'~ fis2. s2.*2
    }
    \\
    {
      r2 r8 b,~ b2.~ b ces^>~ ces4 r2 R2.*2
    }
  >>
  <as, c>2.(<b d>~ q) R2.*19 r2 d'4~ d2.
  R2.*23 g,4-> f-> c'->~ c2. R2.*5 <g b>4-.-^ r2
  R2.*26 R2.*18 R2.*40  r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*6
  %\clef treble
  r2 r8 d'-> a'2.->~ a d, R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  R1*11
  \clef bass
  r4 <f, as> q q <es g> q q q <es fis> q q q <d f!><d f> q q
  <es fis>-^ r <d f>2<c g'>1<c f>
  <<
    {
      e
    }
    \\
    {
      c2 h
    }
  >>
  <a e'>1<a d><g d'> R1*6 r4 \repeat unfold 3 {es'2.~ es1~ es4}
  es2.~ es1( f4) <fes ges>--<es ges>--<fes ces'>--
  <g! c!>1-><d a'>-><e h'>->~ q
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <f h>4-^
}