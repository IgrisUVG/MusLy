guitarTwo = \relative{
  \global
  \override Staff.TimeSignature #'stencil = ##f
  \time 8/4
  g8[( d' g]) a,[( d a']) e h g4 d8 e4 fis8[ e d]
  \time 6/4
  g8[( d' g]) a,[( d a']) e h a16( h) c d(\glissando e) fis g( a)
  \time 5/4
  h4 a8 h( a) e fis d e4
  \time 4/4
  a,16( h c) d\glissando( e) fis g( a) h( c) d e( fis) g a( ais)
  <d, h'>4 <h a'>8 << { h'8[( a]) } \\ { c,4 } >><c e>8\noBeam<a fis'><h d>
  <g e'>4<a c>8<h d>4<e g>8-.<a, c>4
  \once\override StrokeFinger.avoid-slur = #'outside
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.add-stem-support = ##t
  \set strokeFingerOrientations = #'(up down)
  <g-\RH #1 h-\RH #3 >16(
  \override StrokeFinger.avoid-slur = #'inside
  \set strokeFingerOrientations = #'(down)
  h-\RH #2 c) d-\RH #3 e-\RH #2( fis) g-\RH #3 a-\RH#2
  h-\RH #3( g-\RH #2 d-\RH#1) g\glissando( a) e( a c)
  d( c) a\glissando( h) c a h c <h d>4<c e>8<h d>~
  q <e, g><fis a><g h><a c>4 <h d>8 <a c>~ q <d, fis><e g><fis a>
  <<{h8. c16[( h8])}\\{g4.}>><h, g'>8<<{a'8. h16[( a8])}\\{c,4.}>>
  <d fis>8<e g> a\glissando( h) d
  <a fis'>4<fis e'>8 <<{fis'[( e])}\\{g,}>><d h'>
  \noBeam <e c'>^\markup {\tiny \parenthesize \sharp}<h a'>
  <<{<cis e h'>4}\\{
    \once \override NoteColumn.force-hshift = #1.7
    d4}>> r8 d'\harmonic r4 h8\harmonic r
  <d, h'>4 <h a'>8 << { h'8[( a]) } \\ { c,4 } >>
  <g e'>8 <a fis'><e d'><g e'><<{a'8[( g])}\\{h,4}>><fis d'>8[<g e'>]
  <<{g'8[( fis])}\\{a,4}>><e cis'>8
  <\tweak #'duration-log #1 d, \tweak #'duration-log #1 a'>16(
  e'' d a d, a' h e) g( e h g e g d' e)
  <\tweak #'duration-log #1 d,, \tweak #'duration-log #1 a'>_\(
  fis' a d a'( e) d a\) d,_\( a' h g'_(\stemUp fis) d g, e\)\stemNeutral
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      \stemUp<\tweak #'duration-log #1 d, \tweak #'duration-log #1 a'>4      
    }
    \\
    {
      \stemUp
      \acciaccatura d''8\glissando \stemUp fis4      
    }
  >>
  e8 fis[( e]) \appoggiatura a,\glissando h c a
  <<{<g h>4}\\{s8 <d' h'>^>}>><c a'><d h'>\glissando(<c a'>)<c e>-><a fis'>4
  <h d>8<g e'>4 a16( h) c8 <fis, d'>4 \acciaccatura a'8\glissando c
  <d, h'><<{d'4}\\{h8[ g]}>><e c'>8<d fis><<{c'4}\\{a8[ e]}>><d h'>8
  <<{g16( fis) d8}\\{h a}>><fis' d'><d c'><e g><g, e'>4<fis d'>8
  <<{<g h>8 s}\\{g16 h^( c\glissando d)}>> e16( fis) g a h( d) a( d) g, d'( h) g
  e\( c e fis( g)\) a h c d\glissando( e) h fis\glissando( e) g c a
  <g h> cis,( d) c\glissando( h) a g fis
  <<
    {
      g a d8 s4 a16 h e8 s4
    }
    \\
    {
      g,4 s a4 s16 h8 s16
    }
    \\
    {
      \stemDown s16 a8_( h16 c\glissando a) c( d) s8. c16(
      \stemUp d)\glissando h( d e)
    }
  >>
  c16( a) g( e) d( h) g( e)
  \repeat unfold 4 {
    es8[( b' es]) f,[( b f'])(es) c( b[)( f' b]) g,[( c g'])
    \stemDown f, <dis'''\harmonic e\harmonic> \stemNeutral
  }
  <d, h'>8[( g d])<c h'>[\(( a') e]\)<a, fis'>( d) <h g'>4
}