guitarOne = 
\relative{
  \global
  \override Staff.TimeSignature #'stencil = ##f 
  \time 8/4
  <d'' h'>4 <h a'>8 << { h'8[( a]) } \\ { c,4 } >>
  <g e'>8 <a fis'><e d'> << {<fis a e'>4} \\ {
    \once \override NoteColumn.force-hshift = #1.7
    g4} >>
  r2.
  \time 6/4
  <h' d>4<a c>8 << {d8[( c])}\\{ e,4 }>>
  <d g>8 <c a'><h h'><a e''>4 r
  \time 5/4
  <g, g''>8[( a' g])<e a'>[( c' g])
  \stemUp
  <a, e'' c'>( g') a( h)
  \stemNeutral
  \time 4/4
  d4 c, h a g8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
  \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  g,,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])( a) g
  e[( h' fis]) d[\(( a' e])( fis) d, a'\) d a'\glissando( d)
  e,( g c) e, d( a') g \appoggiatura a\glissando fis e,( h' fis' g)
  \acciaccatura fis\glissando a\noBeam
  \acciaccatura fis'\glissando a <e g><a, fis'>
  <<{ e'8 a\harmonic h\harmonic g\harmonic}\\{<d,, a'>4 s}>>
  a''8 d\harmonic g, h~ <h c> d g e
  <<
    {
      \stemDown g,4 \stemNeutral fis e d c h a <d, a'> s4
    }
    \\
    {
      \stemUp g'16^( d g a')\stemDown fis,( d g c') e,,( d g fis') d,( d g g')
      c,,( d g e') h,( d g d') a,( d g cis) \hideNotes d,,16(\unHideNotes e'[ g d'])~
      d8\glissando[ a']
    }
    \\
    {
      s8. \stemDown a4 \stemUp c fis, g e d cis \hide Flag d16 fis4
    }
  >>
  e'8\harmonic fis\harmonic[ e\harmonic] h\harmonic[ cis\harmonic a\harmonic]
  <<
    {
      fis4 e8 fis e h c! g a4 fis'16 h,( g) e\glissando_( fis) a a' a,\glissando_(
      h) g' c, g
    }
    \\
    {
      gis16( a) g a fis g a h cis( d)
      \once \override NoteColumn.force-hshift = #1.3
      e^( fis)
      \once \override NoteColumn.force-hshift = #1.3
      g a
      \once \override NoteColumn.force-hshift = #1.3
      h c! 
      \once \override NoteColumn.force-hshift = #1.3
      d a d,^( e) s8 g,4 s8 h c
    }
  >>
  \repeat unfold 4 {
    g,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
  \acciaccatura e,\glissando \stemUp g4
  <f f'>8<g g'>[(<f f'>]) \stemNeutral<c c'><d d'><b b'>
  <<{c'16_( d, b' f')}\\{<c, c'>4}>>
  <<{<g' e'>8 es'}\\{s16 \stemUp a,8 s16}\\{\stemDown g16 a es' g}>>
  \stemNeutral
  b,\glissando( c) d f <<{s8. a16}\\{g e\glissando^( f8)}>>
  <g b>4<f a>8<<{b[( a])}\\{c,4}>><b es>8\noBeam<a f'><g g' b><f a' c>4<g g' b>8<a f' c'>
  <<{<b es b'>8 s}\\{b16( c) d^( es)}>> g16\glissando( b) d( es)
  <f, a f'> b c d <es, g es'> a b c <<{des8 s}\\{<f, des'>16 a as g}>> fis f e es
  <<{<d b'>8 s}\\{d16 f g\glissando^( as)}>> g( f) es d\glissando
  f8 a,!16( h) c d es f
  <b, g'>4<g f'>8<<{g'[( f])}\\{as,4}>><es c'>8\noBeam<f d'><c b'>
  <b c'>[( f' g])<c, es'>[( fis g])\stemUp<d a' g'>( g)\stemNeutral
  g,8[( d' g]) a,[( d a']) e h g4 d8 e4 fis8[ e d]
  g8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
  \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  \time 5/4
  <g,, g''>8[( a' g])<e a'>[( c' g])
  \stemUp
  <a, e'' c'>( g') a( h)
  \stemNeutral
  \time 4/4
  \repeat unfold 4 {
    g,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
}