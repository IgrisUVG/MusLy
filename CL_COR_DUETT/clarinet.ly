\version "2.19.15"

\language "deutsch"

clarinetMusic = \relative {
  \time 3/4
  d4( e h' ges f8 fes es4~ es) c'8( des) r4
  \bar "||"
  \time 4/4
  b4
  \once\override TextScript.extra-offset = #'(-1 . 0)
  c-\markup {\italic legato} f c
  \repeat unfold 9 {b4 c f c}
  \repeat unfold 2 {heses des ges des}
  heses ces'( ges' fes des) des,( ges des
  heses) ces'( ges' fes des) ces( des fes)
  \repeat unfold 4 {as8( ges des ges, des as es ges)}
  \repeat unfold 10 {ges''8( f c b f es b f)}
  ges''8( f c b) des( b g d!) ges'( f e d) des( b a ges) c( as e) des'( a f) d'( b
  ges) g( as) a-. b-. h-. c4-.->
  \bar "||"
  \tag #'Part {\pageBreak}
  \tuplet 3/2 2 {
    \repeat unfold 6 {f,,4-. cis'-. d,-. cis'-.}
    f,-. as( c d ges f es ces)
    \repeat unfold 4 {f,4-. cis'-. d,-. cis'-.}
    f,-. as( c d ges f es ces)
    f,4-. cis'-. d,-. cis'-. f,4-. cis'-. d,-.
  }
  cis'4-. b8-.-> b-.-> b4-.-^ \acciaccatura {f16 e es} d4->
  \once\override TupletBracket.direction = #UP
  \tuplet 3/2 2 {\acciaccatura es''8 fes8-. r d,,4-. c''( ces ges) as( g f) ges'(}
  e4) as,,-- as-- as-- d,8-- r c'2.\fermata
  \bar "||"
  \tuplet 3/2 4 {
    des8( c des) f( des f) ges( f ges) as( b des)
    f( c des)-\markup {\italic sim}
    \override TupletNumber.transparent = ##t
    ges,( f) b( es des f as f ges)
    as( fes ces as ces,) des'( ces  as fes ces as)  ges'(
    heses as fes) des'( ces ges) ges'( fes as,) ces( fes, as)
    a!( des ges a b) f ges( des b f des c
    des b f' des c' b f' des b' es des f,)
    ges( des heses as ges des) ces'( heses ges) eses'( des as)
    heses des,( ges as heses des ges heses eses des a ges
    f des as ges f as) des( f as) es( f as
    b) des( f) es( des as) f( des as) es'( des f,)
  }
  \tuplet 3/2 4 {
    es'( d! b f d f b d f g f) b,(
    d f b c) f,( d c b f es d b
    f d f b d f b c) d,( f b d
    f g) b,( d f b d) f,( b c) d,( f
    g) d( f b, d b f d b d b f)
    d( f a d f a d f a d) f,( e    
  }
  \tuplet 3/2 4 {
    g f d a) e'( d f e a, f) b( a
    des, e f b a c des e f b a c
  }
  \tuplet 3/2 4 {
    des) es( des b ges des b ges des ces b ges)
    as( ges as des as des ges des ges as ges as
    des as des ges des ges as ges as des as des)
  }
  \tuplet 3/2 4 {
    d!( a! f e d f, f' e cis g' f d
    cis a e f g a his cis f g a his
  }
  \tuplet 3/2 4 {
    cis h e,) a( gis h,) fis'( e gis,)  h( gis e)
  }
  \bar "||"
  \repeat unfold 4 {r8 g,( d' es g c g es)}
  \repeat unfold 3 {r8 g,( e' g d' c g e)}
  r8 g,( c e g c d e g)\noBeam g,,( d' e g c e g
  c)\noBeam as,,( es' as  ces es as ces
  d)\noBeam d,,,( g a d g a d g)\noBeam es,,( b' f' g b es g
  \bar "||"
  \break
  \tag #'Part {\break}
  h-.)\noBeam d,,-. d-. d-. d2:8
  \bar ".|:"
  d2:8 d2:8
  \bar ":|."
  d8 d d
  \repeat unfold 4 {\acciaccatura {b'16 e} a8-.->\noBeam d,, d} d
  \repeat unfold 5 {\acciaccatura {b'16 e} a8-.->\noBeam d,, d} d
  \repeat unfold 3 {\acciaccatura {b'16 e} a8-.->\noBeam d,, d}
  \acciaccatura {b'16 e} a8-.->\noBeam d,,\noBeam d'->~ d2
  \acciaccatura dis8 e-. h4.~ h2 d8( e f) f f f( e d)
  d( fis4.~ fis8)\glissando h-^ d,,-.[ d-.] d2:8 d2:8
  d8-. d-. d-. d---> d-. d-. e---> d-.
  f---> e4---> a8---> d,-. d-. e---> d--->
  d-. d-. d-. d---> d-. d-. fis---> e--->
  fis---> a---> d,-. d-. d-. h'---> a---> fis--->
  e---> d-. d-. d-. d-. d-. e---> d-.
  fis---> a---> fis---> h->~ h d,-. d-. fis-.
  h,-.->
}