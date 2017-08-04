\version "2.18.0"
\language "deutsch"
cornoTwoMusic = \relative es {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*14 <es ges>2~ q~ q
  R2*14 
  \clef treble
  des'8( ces) r4 es( c8 d es4-.) r4
  R2*7 r4 as,~ as2~ as <as b>-> q-> q-> q~( q
  <g b>8) r r4 R2 r4 r8. es16-> b'8-> r <b c^~>4_(
  <as c>8) r r4 R2*4
  \clef bass
  <ges ces>2 R2*3 <f ces'>2(<fes b><es heses'>
  <f as>)<f a>( <es b'><fes ces'><des as'>)
  <fis a>8. q16 q8 r16 fis cis8 r r4
  %\clef treble
  r4 <f b>(<ges heses><heses es><b des>2)<b d>
  r4 r8. c16
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      des4.( b8 \stemDown a2)
    }
    \\
    {
     \stemNeutral ges2( f)
    }
  >>
  \clef treble
  r4 des' as'2~ as r4 g b2~ b
  \clef bass
  r4 es, <b es>2~ q r8
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      \stemDown
      \single \hide Flag b8( 
      \stemUp as g) b8 g4 f8~ f g4.~ g2
    }
    \\
    {
      f8( es4) ces2 b~ b
    }
  >>
  <as as'>2 <b b'>-> R2*2
  <<
    {
      c'2 c c c c
    }
    \\
    {
      f,4.( es8) f4.( es8) g4.( f8) g4.( f8) as4.( g8)
    }
  >>
  <f b>2 <e c'><es! c'>(<d h'>~ q) R2*3 es2-- R2*3
  es2( b')  R2*35 R2*4 es,2~ es4 des~ des2~ des R2*28
  r4 des~ des2 R2*9 r4 c~ c2 R2*2 <fes ces'>2 R2*2<as des>2
  R2*16 des,!16-> des-> r8 r4 R2*8 <f b>2->~ q~ q R2*20
  c'4( b d as <ges heses>2~ q) as~ as R2*8
  \repeat unfold 3 {r4 <f heses>} \repeat unfold 4 {r4 <f ges>}
  \repeat unfold 7 {r4 <f as>} <ges as>4<f as>
  <es g>2~ q~ q q~ q <es as><des as'>~ q <des b'>~ q
  <des ges>->~ q <ces ges'>->~ q <des as'>-><des ges>->
  q-> <es as>->~ q <des as'>-><des b'>-><f b>->~ q
  <ges a>->~ q <ges b>4-> r R2*8 f'8. des16 f4-> ges,2->~ ges~ ges
}