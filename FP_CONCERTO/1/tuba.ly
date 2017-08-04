\version "2.18.0"
\language "deutsch"
tubaMusic = \relative es {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. <b, b'>16 \times 2/3{<a a'>4 <f f'><ges ges'>\fermata}
  r4 r8. <c c'>16 \times 2/3{<ces! ces'!>4 <as as'><a a'>\fermata}
  R2*14 <es' es'>2~ q~ q
  R2*14 <des des'>8( <ces ces'>) r4
  <<
    {
      <es es'>4_( es'8 d <es, b'>4_.)
    }
    \\
    {
      s4 as8 b s4
    }
  >>
  r4 R2*21 f,8 r r4 R2*14 fis'2( cis b heses g) R2
  ges'2( f es) R2 ges2( fes es) R2 ges2( f! es)
  b'8. g16 b4~_( b8 d es f) f2 es,~ es as~ as
  \times 2/3 {b4 as g} es2~ es f~ f es b es
  a c,( h e,) R2*9  R2*35  R2*51 <fes fes'>2 R2*2
  <des' des'>2 R2*25 b2~-> b~ b R2*20 b2~( b ges~ ges)
  des'~ des R2*23 c2~ c~ c~ c b as des c b as ges-> R2*10
  b'2-> as-> ges-> f-> es4-> r4 R2*9 ges2 as b
}