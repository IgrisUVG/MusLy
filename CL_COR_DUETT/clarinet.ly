\version "2.19.15"

\language "deutsch"

clarinetMusic = \relative {
  \time 3/4
  %\key c \minor
  d4 e h' ges f8 fes es4~ es c'8 des r4
  \bar "||"
  \time 4/4
  \key b \minor
  \repeat unfold 10 {b4 c f c}
  \repeat unfold 2 {heses des ges des}
  heses ces' ges' fes des des, ges des
  heses ces' ges' fes des ces des fes
  \repeat unfold 4 {as8 ges des ges, des as es ges}
  \repeat unfold 10 {ges''8 f c b f es b f}
  ges''8 f c b des b g d ges' f e d des b a ges c as e des' a f d' b
  ges g as a b h c4
  \bar "||"
  \key b \major
  \tuplet 3/2 2 {
    \repeat unfold 6 {f,,4 cis' d, cis'}
    f,( as c d ges f es ces)
    \repeat unfold 4 {f,4 cis' d, cis'}
    f,( as c d ges f es ces)
    f,4 cis' d, cis' f,4 cis' d,
  }
  cis'4 b8 b b4 \acciaccatura {f8 e es} d4
  \tuplet 3/2 2 {e''4-. d,, c''( ces ges as g f fis'}
  e4) as,, as as d, c'2.
  \bar "||"
  \key b \minor
  \tuplet 3/2 4 {
    des8 c des f des f ges f ges as b des
    f c des ges, f b es des f as f ges
    as fes ces as ces, des' c!  as e c as  ges'
    a as e des' h ges ges' e as, h e, as
    a des ges as? b f ges des b f des c
    des b f' des c' b f' des b' es des f,
    ges des a as ges des h' a ges d' des as
    a des, ges as a des ges a d des a ges
    f des as ges f as des f as es f as
    b des f es des as f des as es' des f,
  }
  \key b \major
  \tuplet 3/2 4 {
    es' d b f d f b d f g f b,
    d f b c f, d c b f es d b
    f d f b d f b c d, f b d
    f g b, d f b d f, b c d, f
    g d f b, d b f d b d b f
    d f a d f a d f a d f, e    
  }
  \key d \minor
  \tuplet 3/2 4 {
    g f d a e' d f e a, f b a
    cis, e f b a c cis e f b a c
  }
  \key b \minor
  \tuplet 3/2 4 {
    des es des b ges des b ges des ces b ges
    as ges as des as des ges des ges as ges as
    des as des ges des ges as ges as des as des
  }
  \key d \minor
  \tuplet 3/2 4 {
    d! a f e d f, f' e cis g' f d
    cis a e f g a c cis f g a b
  }
  \key a \major
  \tuplet 3/2 4 {
    cis h e, a gis h, fis' e gis,  h gis e
  }
  \bar "||"
  \key b \major
  \repeat unfold 4 {r8 g, d' es g c g es}
  \key f \major
  \repeat unfold 3 {r8 g, e' g d' c g e}
  r8 g, c e g c d e g g,, d' e g c e g
  c as,, es' as  ces es as ces
  d d,,, g a d g a d g es,, b' f' g b es g
}