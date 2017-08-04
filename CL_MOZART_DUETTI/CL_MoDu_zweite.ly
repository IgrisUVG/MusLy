\version "2.19.15"

\language "deutsch"

\include "changePitch.ly"

zweiteIa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  %\override Score.SpacingSpanner.uniform-stretching = ##t
  %\override Score.SpacingSpanner.strict-grace-spacing = ##t
  \tuplet 3/2 4 {
    f'8\f( c a)
    \once\override TupletNumber #'transparent = ##t
    c-. f-. a-.
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b	a b a g a g f g f e f	e
    d e f g g a b c b a b a	g a g f g f
  }
  \tuplet 3/2 4 {
    e8( f g)
    \once\override TupletNumber #'transparent = ##t
    c,-. d-. e-.
  }
  f8 r
  \tuplet 3/2 4 {
    a8-. c-. es-. d( c b) g-. c-. b-.
    \override TupletNumber #'transparent = ##t
    a( c f) es-. d-. c-. d( c b) g-. c-. b-.
    a( c f) es-. d-. c-.
  }
  c8 r b r a r b r f r e r
  \once\override Slur.positions = #'(2.5 . 1)
  f2\f( \acciaccatura {f'16 g} a4. g8) f4-. e-. d-. c-.
  b2(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {d16 e fis} g4. f8) e4-. d-. c-. b-.
  a r b'4.(-\markup {\italic dolce} e,8) g( f) r4 b4.( e,8)
  g( f) r4 g8( f e d) c\trill h16( c) f8 c b4 a8_\trill g16( a)
  g4 r r2 h'2.\ff h8\trill a16( h) c4 g r2 d'2. h,,8\trill a16( h)
  \tuplet 3/2 4 {
    \override TupletNumber #'transparent = ##f
    c8\f e g c e g f e d c h a
  }
  \changePitch {c8-. c16( c)}{
    g a g f g f e f e d e d
  }
  \changePitch {c4 c8. c16}{
    c r dis' e r e, f r e' f r fis,
    g r fis' g r gis,	a r gis' a r a,
    h r ais' h r h,
  }
  c8-. r
  \times 2/3 {f-. d-. c-.} h-. r \times 2/3 {e-. c-. h-.} a-. r
  \times 2/3 {d-. h-. a-.} g-. r
  \tuplet 3/2 4 {
    c-. a-. g-.
    fis( a h) c-. h-. a-. fis( a h) c( d c)
  }
  h r
  \tuplet 3/2 4 {
    g'( f d) h( g f) d( h g)
  }
  c4 r r2 f4 r r2 g4 r g r
  c'8-. r h-. r a-. r g-. r f-. r e-. r d-. r cis-. r
  d \acciaccatura e d16 cis d8-. f-. e8.( g16) f8.( d16)
  \tuplet 3/2 4 {
    e8( f g) d-. e-. f-. c( d e)
    \override TupletNumber #'transparent = ##t
    h-. c-. d-.
    a( h c) g-. a-. h-. f( g a) e-. f-. g-.
  }
  f-. r d-. r g-. r g,-. r
  \repeat unfold 2 {
    \override TupletNumber #'transparent = ##f
    \tuplet 3/2 4 {
      c'8( d c) h( a g)
    }
    fis4( f) e8-. r d-. r c-. r h-. r
  }
  c r e'\trill d16( e) f8 r h, r
  c r e8.(\trill f32 g) f8 r d8.( g16)
  \tuplet 3/2 4 {
    e8( d c
    \override TupletNumber #'transparent = ##t
    b! c b) a( b a f g f)
    e( d c b! c b a b a h c h)
  }
  c4 c8.\f c16 c4 r
  \bar ":|.|:" \break
  \override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    c'8\f e d c( h a)
  }
  \changePitch {c8-. c16( c)}{
    g a g f g f	e f e d e d c d c h c h
    a h c d d e f g f e f e	d e d c d c
  }
  \tuplet 3/2 4 {
    h8( c d) g,-. a-. h-.
  }
  c-. r d-. r e-. r f-. r g-. r b-. r a-. r g-. r
  \once\override Slur.positions = #'(3 . 1)
  f2( \acciaccatura {f'16 g} a4. g8) f4-. e-. d-. c-.
  b2(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {d16 e fis} g4.\ff f8) e4 d c b
  a8-.-\markup {\italic dolce} r b-. r c-. r d-. r
  es-. r g-. r f-. r es-. r
  \changePitch {c8-. c16( c)}{
    d b c d d es f g f es f es d es d c d c b c b a b a
  }
  \tupletDown
  \override TupletBracket.staff-padding = #'()
  \override TupletNumber.staff-padding = #'()
  \tuplet 3/2 4 {
    \once \override Slur.positions = #'(1 . 1)
    g8(\< a b h c d)\!
  }
  es-. f16( es) d8-. es16( d) c8-. d16( c) b8-. c16( b)
  \tupletNeutral
  \tuplet 3/2 4{
    a8( b c) f,( g a)
  }
  b r
  \override TupletNumber #'transparent = ##t
  \tuplet 3/2 4 {
    d( es d) c( d c) f-. es-.c-.
  }
  b r
  \tuplet 3/2 4 {
    b( c b) a( b a) d-. c-. a-.
  }
  g r
  \tuplet 3/2 4 {
    g( as g) f( g f) b-. a-. f-.
  }
  es4 r r cis'
  \tuplet 3/2 4 {
    d8-. a'( g fis) c'( b a) g-. f-. es-. d-. c-.
  }
  b4.( a8) g4 r8 gis
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    a( cis e) g( f e) b'( a g) f( g e)
  }
  \changePitch {c8-. c16( c)}{
    f g f e f e d e d c d c b c b a b a g a g f g f
    e cis' d e e f g a g f g f e f e d e d
  }
  \tuplet 3/2 4 {
    cis8( e f) g-. f-. e-.
  }
  \changePitch {c8-. c16( c)}{
    d e d c d c b c b a b a
    g a g f g f e f e d e d
    c d c b c b a b a g a g
  }
  \once\override Slur.positions = #'(1.5 . 1)
  f2( \acciaccatura {f''16 g} a4.\ff g8) f4-. e-. d-. c-.
  b2( \acciaccatura {e16 f} g4.\ff f8) e4-. d-. c-. b-.
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    a8 f' es d c b a g f es d c
  }
  b4 r r h( c) r g' r e r c r f r r2
  a8( f) b-. f-. c'( f,) d'-. f,-. a( c) a-. f-. e( g) e-. c-.
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    f,( a c) f( a c) b( a g) f( e d)
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b a b a g a g
  }
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    f'8( a c) f( a c) b( a g) f( e d)
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b a b a g a g
  }
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    f,8( a c) f( a c) b( a g) f( e d)
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b a b a g a g
  }
  \changePitch {c4 c8. c16}{
    f r gis' a r a, b r a' b r h, c r h'-.
    c-. r cis,-. d-. r cis'-. d-. r d,-.
    e-. r dis'-. e-. r e,-.
  }
  f8-. r \times 2/3 {b'-. g-. f-.} e-. r \times 2/3 {a-. f-. e-.}
  d-. r \times 2/3 {g-. e-. d-.} c-. r \times 2/3 {f-. d-. c-.}
  b4.( c16 b a4) g8_\trill f16( g) f'8-. r e-. r d-. r c-. r
  b-. r a-. r g-. r fis-. r
  \tuplet 3/2 4 {
    \once\override Slur.positions = #'(1 . 1)
    g( b c d c b) a( b c) b-. a-. g-.
    a( b c) g-. a-. b-. f( g a) e-. f-. g-.
    d( e f) c-. d-. e-. b( c d) a-. b-. c-.
  }
  b4 r c r  f,8 r a''4( b g) f8 r a,8.( c16) b8 r g r
  \tuplet 3/2 4 {
    f'( g f es f es) d( es d c d c)
    a( g f) es( f es) d( es d) b( c b)
  }
  a r
  \tuplet 3/2 4 {
    f''-.\f e-. d-. c-. b-. a-. g-. f-. e-.
    f-. a( c) f-. e-. d-. c-. b-. a-. g-. f-. e-.
  }
  f4 c8. c16 a4 r
  \bar ":|."
}
zweiteIb = \relative {
  \clef treble
  \key f \major
  \time 3/4
  f'2(\p c4) d-. f-. d-. b2.( c8)\noBeam g'( f e d c)
  b4( d c) b d b c2( b4) a8 a'( b c d e)
  f2( c4) d-. f-.d-. b( g' f) e8( c) c'-. g-. e-. c-.
  b4(\< d c)\! b( g' b,) a2 c8( b) a-. f-. f-. f-. g-. g-.
  a( f a f b g) fis( a) d,4 r b'8( c b a g f) e( g c b a g)
  f2( es4) d2( c4) b2( h4) c8-. c( h c d e) f2( cis4)
  d-. f-. d-. b2.( c8-.) g'( f e d c) b4( d c) b-. d-. b-.
  c2. f8 r r4 r a( a' g) fis( g a) g8( fis g a g f)
  e( c h c d e) f2( es4) d8( f d f c f) b,2( h4) c r r
  a( c b) a8( f g a b c)d4( b) g'8( f) e( d c cis d a)
  b4( d c) b8. d16 g8-. r b,-. r a2( \acciaccatura c8 b4)
  a8 r f'4(\mf e) e(-\markup {\italic dolce} d c) c( b a)
  a8\trill g16( a) b8-. b-. g-. g-. a r f4( e) e( d c)
  c( b a) a8.(\trill g32 a) b8 r g r f4 r r R2.
  b8( d f d as' f) g( es g b a! c) b( d) b-. f-. d-. b-.
  es2. b8( f') as-. f-.as-. f-. g,( g') f-. es-. d-. c-.
  b8 r f''2(-\markup {\italic espressivo} fis8) g( f es d c)
  b4. b16(\trill a32 b) c8-. d-. es r \acciaccatura f es(d es f)
  d-. r f2( fis16)( g a g f es g es d c es c)
  b4. b16(\trill a32 b) c8-. d-. f( es) d-. c-. b-. a-.
  b4 b, r f8(\f f') f-. f-. f-. f-. f,( es') es-. es-. es-. es-.
  d4 r r b r r f8( f') f-. f-. f-. f-. f,( es') es-. es-. es-. es-.
  d4-. f-. a,-. b-. d-. f-. b8 r a16( b c d es f g es)
  d8 r r4 r R2.
  \once\override TextScript.extra-offset = #'(2 . 2)
  b,8(\p-\markup {\italic dolce} d f d as' f)
  g( b g b a! c)( b4) r d,( es8) r c r f r d( f as f as f)
  as( g) f-. es-. d-. c-. b4 r \acciaccatura c'8 b\f a16 g
  fis8-. a-. d,-. fis-. a-. fis-. g4 r8 d'16(\ff c b a g f)
  e!8( g c, e g e) f4 r r f2.(\p e4) r r f2.( e4) r r R2.
  f2 c4 d-. f-. d-. b2.( c8)\noBeam g'( f e d c) b4( d c)
  b-. d-. b-. c2( b4) a f r a'( a' g) fis g8( a b a)
  b( a g fis g f) e( g f a g e) f2( es4) d8( f d f c f)
  b,2( h4) c r r a( c b) a8( c a f g a) b( c b a g f)
  e-. c16( d) e8-. f-. g-. a-. b4( d c) b-. g'-. b,-.
  a( c) e, f a\f f e g c, f a f e g c, f f' f, e g' b
  a r f16( e d c) h4( d f) h,( d f~)
  \stemUp
  f8 f, f f f f
  \stemNeutral
  e16( f e d c4) r R2.
  \changePitch {c8. c16}{
    a'([-\markup {\italic dolce} b c a b g)]
  }
  f4 r r
  \changePitch {c8. c16}{
    e'([ c g' e b' g)]
  }
  a8 r r4 c,,16(\f d e f) g( a b c d e f g a f c a) b4 b, r
  %\break
  \repeat unfold 3 {f16( c' a c)}
  \repeat unfold 3 {e,16( c' g c)}
  %\break
  f,8 r f'4(-\markup {\italic dolce} e) e( d c) c( b a)
  a8._\trill g32( a) b8-. r g-. r f r f''4( e) e( d c) c( b a)
  a8_\trill g16( a) b8-. r g-. r a( c a c\p b c)
  \repeat unfold 2 {a( c a c b c)} b( c b c b c) a4 r r
  \bar "|."
}
zweiteIIa = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  c'2. g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-. g, r r2
  r r8 c,(^\markup {\italic dolce} d e)
  \acciaccatura g f(\trill e16 f) g8-. f-. e4 r
  r2 r8 c'( d e) \acciaccatura g f(\trill e16 f) g8-. f-. e8-. r f,-. r
  e-. r f-. r g-. r g,-. r
  c2. g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-.
  g, r r e'8.(\p f16) g4-. g-. g-. g-.
  h,2( c8) r e8.( f16) g4-. g-. g-. g-. h2
  \changePitch {c16( c8) c16}{
    d c r h a r fis g r a f r dis e r g h, r
  }
  e,,8( g) c-. g-. e( g) c-. h-. a-. a'-. a-. a-. a-. a-. a-. a-.
  \repeat unfold 3 {fis( a) c-. a-.} fis( a) d,-. fis-. g4 r h r
  c r e, r c e'8.-> d16 c4-. cis-. d8 r
  \shape #'((-0.5 . 0) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
  d16(\( e fis g) fis( e d e) fis( g a fis)\)
  g2 cis,( d8) r d16( e fis g) fis( e d e) fis( g a fis) g2 cis,( d4) d,8. d16 d4 r
  d'2~ d8 e16( d c8) h-. g'-. r fis-. r e-. r d8.( g16)
  g2( fis8) a16(\cresc g fis g a h)\!
  \changePitch {c8-. c16( c)}{
    c c h a a g fis fis e d d c
  }
  h2~ h8 c16( h a8) g-. e'-. r d-. r c-. r h-. r
  \once\override Slur.positions = #'(1 . 1)
  a( h c d c h a g) fis4 r d' r
  \repeat unfold 2 {g,4-. d-. fis-. d-.} g8-. g-. a-. a-. h-. d-. g,-. h-.
  r c e c r e, g e c4 r r2 r8 h'( a fis g h c cis) d4 r d,( d'8 c)
  h16(\mf d g h) a( g fis g) a( fis d a) c'( a fis c)
  h16( d g h) a( g fis g) a( fis d a) c'( a fis c)
  h( d c h) c( d e fis) g(\trill fis g a) h8 r
  e,16(\trill dis e fis) g8 r c,16(\trill h c d) e8-. r
  r e(\cresc fis g gis a h c) c( d,) d4.\! c8( a fis)
  g8 r a r h r a r g r g r h, r h r c( e) c-. e-. d( g) d-. fis-.
  g2.\f d8.( g16) h8 r g8.( h16) d4 g
  d8 r g8(\trill-\markup {\italic dolce} fis16 g) a4.( fis8)
  g,2. d8.( g16) h8 r g8.( h16) d4-. g-.
  d8 r g8(\trill-\markup {\italic dolce} fis16 g) a8-. a-. fis-. fis-.
  h( g) g-. g-. a( fis) fis-. fis-.
  \once\override TextScript.extra-offset = #'(2.5 . 2.5)
  g4(\p-\markup {\italic dolce} f e fis) g( f e fis) g g,8.\f g16 g4 r
  \bar ":|."
  \break
  r2 g2~\f g4 d8.( g16) b2~ b4 g8.( b16) es8-. r d-. r cis-. r b-. r a-. r g-. r
  r f-.\p a-.d-. r e,-. h'!-. d-. r a-. cis-. e-. r a,-. cis-.d-. g,2( f8) r e r
  d2.\f a8.( d16) f2. d8.( f16) a4 f8.( a16) d8-. r f-. r e,,1
  e''2(\> dis4)\! r d!2(\> cis4)\! r r8 cis-. e-. cis-. r d-. a-. c-.
  r h-. d-. g-. r c,-. e-. g-. c2(\> h4)\! r b2(\> a4)\! r gis2\f gis4. gis8
  gis2( e4) gis-. h r r2 r4 f,8-. r d-. r c-. r h2~ h4 r
  r f'8.( e16) d4-. c-. h2~ h4 r r d'8-. r d,-. r as'-. r g2~ g8 r h8.(\p c16)
  d8 r d,8.( e16) f8 r h,8.( c16) d8 r r4 r r8 g,16(\ff a32 h)
  c2. g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-.
  g, r r e'8.(-\markup {\italic dolce} f16) g8-. r g-. r g-. r g-. r
  h,2( c8) r e8.( f16) g8-. r g-. r g-. r g-. r
  h2(\> d16 c)\! r8 h16( a) r8
  fis16( g) r8 a16( f) r8 dis16( e) r8 \acciaccatura g f( e16 d)
  c( e g f) e(^\markup {\italic dolce} c g e) c4 r
  r8 g'(-.-\markup {\italic dolce} a-. h-. c-. d-. es-. e)-.
  f\trill e16( f) g8-. f-. es4-. r r8 c-. d-. e!-. f-. g-. as-. a-.
  b\trill a16( b) c8-. b-. as4 r r8 c,,-. es-. g-. c-. es-. c-. b-.
  a16( c h c) d( c h c) d,( c' h c) d( c h c)
  h4\f \repeat unfold 7 {g,16( h d h)} \repeat unfold 8 {a( c d c)}
  h( d g h) d( h g d) h4 r \repeat unfold 2 {g'8( h d h)} c2. e8.( c16)
  g2. d8.( h16) a8\f d16( e fis g a h c h a g fis g a fis
  g4) r8 fis( g4) r8 c( h4) g8. g16 g4 r
  \bar "||"
  g'2~ g8 a16( g f8) e-. c'-. r h-. r a-. r g8.( c16)
  c2(\> h8)\! g,16( a h c d e) f( g a g f e d c h c d c h a g f
  e8) r e'4~ e8 f16( e r8) c-. a'-. r g-. r f-. r e-. r
  d2~ d8 r g,16( a h c) d4 r g, r \repeat unfold 2 {g'( e) r8 f-. d-. h-.}
  g'4( e8) r f4( d8) r c-. c-. d-. d-. e r g-. e-. f-. r a-. f-. d-. r f-. a,-.
  f4 r r2 r8 f'( d c) h-. r g-. r c4 r c, r \repeat unfold 3 {g16( h d h)} g8-. g'-.
  g'2(\> fis4)\! r f!2(\> e4)\! r
  \once\override Slur.positions = #'(1 . 1)
  d8(\> a' f d)\! c-. r h-. r
  r e-. cis-. a-. r d-. a-. fis-. r d'-. h-. g-. r c g e
  \repeat unfold 2 {f4 r r8 b(\cresc a g)}
  \repeat unfold 2 {f-. a-. g-. a-.} f4 r r r8 fis
  g4 r r8 g-. c-. e-. g,( h) d-. f-. g, h d g,
  e2.\f e8.( g16) c4 g8.( c16) e4-. c'-.%g-.		?
  e,8-. r-\markup {\italic dolce} c\trill h16( c) d8-. d-. h-. h-.
  c2.\f g8.( c16) e4-. c8.( e16) g4-. c-.
  g8 r e\trill-\markup {\italic dolce} d16( e) f8-. f-. d-. d-.
  e4( c8.) c16 d4( h8.) h16
  \override Slur.positions = #'(1 . 1)
  c4(\p b a h) c( b a h)
  c8( e) c-. g-. e( e') c-. g-. e4 c8. g16 e4 r
  \bar "||"
  \time 6/8
}

zweiteIIb = \relative {
  \clef treble
  \key c \major
  \time 6/8
  \override TupletBracket.bracket-visibility = ##f
  \partial 8 r8
  c'4 r8 r c'( cis) d4 r8 r4 h8-. c!4 r8 a4 r8 c4.( h8) g'-. f-.
  e4-. r8 r c( cis) d4 r8 r f-. h,-. c!4 e,8-. f4-. d8-. e4-. g8-. e-. r g-.
  g(\mf c) g-. f4( e8) f-. g-. gis-. a-. r d,-.
  e( g) c,-. \acciaccatura d c h-. c-. e4.( d4) g8
  g( c g) f4( e8) f-. g-. gis-. a-. r d,-. e( g) c,-. d( f) h,-.
  c4 r8-\markup {\italic dolce} c'-.d-.e-. f8.( g16 f8) f-. f-. f-.
  e-. g-. f-. e-. d-.c-. h2.( c4) r8 c-. d-. e-.
  \once\override Slur.positions = #'(1 . 1)
  f2.( e4) r8 r4 r8
  e,4. g4( h8) c(\f e) g,-. c-. e,-. g-. c,4.( e) g4 r8 r4 r8
  e4-. r8 d4-. r8 c4 r8 h-. d-. g-. c( e) g,-. c-. e,-. g-. c,4.( e) g4 r8 r4 r8
  e4-. r8 d4-. r8 c4 r8 h'-. d-. f-. e-. e-. e-. e-. r r R2.
  e8-.\mf a-. c,-.e-. a,-. c-. e,4 r8 r4 r8 a'8-.\f c-. e,-. a-. c,-. e-.
  a,( c) c-. b( c) c-. a( c) c-. g( c) c-. fis,( h) h-. fis( h a)
  gis4( h8) e( dis d) c4._( \acciaccatura c8 h a h) a4 r8 r4 r8
  \once\override Slur.positions = #'(1 . 1)
  e'4.( \acciaccatura e8 d c d) c4 r8 r4 c8 f4. e8( f e) d4. c8( d c)
  h( d f) a,4( gis8) a-. a-. a-. a-. a-. a-. a( b a) a-. a-. a-.
  b-. b-. b-. b-. b-. b-. b( c b) b-. b-. b-. a-. a-. a-. a-. a-. a-.
  a4( g8 f4 fis8) g-.\f g'-. h,-. d-. g,-. h-. c4 r8 r4 e8(
  d)\f g-. h,-. d-. g,-. f'-. e4 r8 r4 c8( h) d-. g,-. h-. d,-. g-.
  h,4 r8 r4 g''8\ff g( c) g-. f4( e8) d4~ d32 e d c h8 r g'\ff
  g( c) g-. f4( e8) f4 f,8-. g4-. gis8-. a4-. a8-. h4-. h8-.
  c,16( e g e g e) g( e g e g e) c( f a f a f) a( f a f a f)
  c( e g e g e) g( e g e g e) fis( a c a c a) c( a c a c a)
  g( h d h d h) d( h d h d h) a( c d c d c) a8-. d,-. fis-. g4 r8 r4 r8
  \changePitch {c8-. c-. c-. c4( c8)}{
    h d h a g d' f d c h d, f d c h
  }
  h-. d-. h-. g-. h-. d-. f4( d8) h16( d) g-. a-. h-. c-. d4-. r8 r4 cis8\p
  d4( cis8 d4 cis8) d2.~ d4( dis8 e4) h8 c4 r8 r c( cis) d4 r8 r f-. h,-.
  c4-. r8 a4 r8 c4.( h8) d-. f-. e4 r8 r c( cis) d4-. r8 r f-. h,-. c4 r8 g4 r8
  e4 r8 r-\markup {\italic dolce} g'-. g-. g8.( a16 g8) g-. a-. h-.
  \once\override Slur.positions = #'(1 . 1)
  c4.( g4) e8-. \acciaccatura g f( e) f-. d-. g-. f-. dis4.( e8) g-. g-.
  g8.( a16 g8) g-. a-. h-. c-. e-. g,-. c-. e,-. g-.
  c,4( d32 c h c e4)( d8) c-.\f e-. g,-. c-. e,-. g-.
  c,4 r8 r4 g''8-.-\markup {\italic dolce} g( c) g-. f4( e8) cis4.( d4) c8
  h4( gis8) a4( c8) f,4.( g!8) r g'-. g( c) g-. f4( e8) cis4.( d4) h8
  gis4.( a) f4-. r8 g!4-. r8
  \changePitch {c16( c) c-. c-. c-. c-.}{
    c\f d e d c h a g f e d c
  }
  h4 r8 r g'-. f-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    e g c d e d c h a g f e
  }
  d8-. h-. g-. f'4.( e4) r8 r4 r8 e'4(\p^\markup {\italic dolce} c8) g4( b8)
  a4 r8 r4 r8 g2.\mf c,8-. c'-. c-. c-. c-. c-.
  \acciaccatura {d16 c h} c8( e) g, g-. g-. g-.
  \acciaccatura {f16 e dis} e8( c') e,-. e-. e-. e-.
  \repeat unfold 2 {c( g) e'-.} c4 r8 c''4.~\f c8 g-.e-.c-.g-.e-. c4-. r8 r4 r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET DREI %%%%%%%%%%%%%%%%%%%%
zweiteIIIa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \repeat unfold 2 {a8( c f c)} b( c a c) a( c f c) b( f' d b) a( f' a f)
  e( g c, e) f( c a f) \repeat unfold 4 {b-. d-.} c-. b'-. g-. b-. c, b' g b
  a f c f a e f d e( g) c,-. e-. f-. a-. c-. es,-.
  d( g) b-. g-. d( g) b,-. d-. \repeat unfold 2 {c( b') g-. b-.}
  c,( a') f-. a-. c,( g') e-. g-. f( c') a-. c-. b,( f') d-. f-.
  a,( c) f-. c-. g( e') g-. e-. f( c') a-. c-. b,( f') d-. f-.
  a,4-. r r8 c( c') b-. a4 r r2 r8 f f f c r c r
  f4~( f16 g f e f g a b c d e f) g( a b e,) f4 r c(
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  d8.)[ \acciaccatura {e16 d c d} e f8-. f-.]
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \unset Score.proportionalNotationDuration
  }
  \once\override Slur.positions = #'(1 . 1)
  f4( \acciaccatura g8 f e16 d)
  c4_( \acciaccatura c8 b a16 b a4) r g2~ g8 d'16( c h a g f)
  e( g c e) g8-. r g,16( c e g) c8-. r
  \acciaccatura g f( e16 d) \acciaccatura e8 d( c16 h)
  \acciaccatura c8 h( a16 g)
  \once\override Slur.positions = #'(1 . 1)
  f( d g f) e( g c e) g8-. r g,16( c e g) c8-. r
  f,,16( a d f)
  \once\override Slur.positions = #'(1 . 1)
  a4.( f8 d cis) e( d) d4 r2
  f,16( a d f) a8-.\> a-.
  \once\override Slur.positions = #'(1 . 1)
  a( b4 cis,8)\! e( d) d-.\noBeam r d( c!) c-.\noBeam r
  h16( a g fis g a h c d e f! e g f e d) e( g f e f g a h c h a g f e d c)
  h(d g h) d8-. r g,,16( h d g) h8-. r d,,16( g h d) g8-. r h,,16( d g h) d( h g f)
  \repeat unfold 2 {e( f e d) c8-. c-. c4 r} r8 c'-. e-. c-. f( a,) cis-. a-.
  d,( d') d,-. e-. f-. e-. d-. c-. \repeat unfold 2 {h-. d-. g-. d-. h4 r}
  r8 a'-. d-. c-. h-. g-. a-. h-. c( g) e-. g-. c-. c,-. d-. e-.
  f( d) g-. f-. e( g) fis-. c-. h( d) g-. d-. c'-. c,-. d-. e-.
  f( d) g-. f-. e( g) fis-. c-. h( d) g-. d-. g( e) c-. b-.
  a( c) f-. a-. d,( d') f-. h,-. c4 c, g' g,
  c'16(\trill\mf h c d) e(\trill d e f) g8-. c,-. c-. c-. f8.( d16) h4-. r2
  c16(\trill h c d) e(\trill d e f) g8-. c,-. c-. c-.
  f( d) h4 r8 g-. g-. g-. r e-. e-. e-. r cis-. cis-. cis-.
  r d-. d-. d r c!-. c-. c-. c( e g e) d4. f8 e2( d4 f) e( e') d4.( f,8)
  e( f g gis) a-. h-. c-. a-. g( c) c-. c-. g( h) h-. h-.
  c4 r r c'16( h a g) f8-.\mf f-. f2 f16( e d c) h8-. h-. h4~ h16( c d e g f d h)
  c4 r r8 c,-.^\markup {\italic dolce} c-. c-. a( c f a) c( a f a)
  \repeat unfold 2 {d,( f g f)} e16( g c e) g8-. e-. c'4-. r8 c,,-.
  h16( d g h) d8-. h-. f'4 r8 h,,-. c16( e g c) e8-. c-. g'4-. r8 b,,!
  a16( c f a) c8-. a-. d4.( f8) e4 c,8. c16 c4 r
  \bar ":|."
  a1~ a8 a''( g e cis a g e) d1~\f d8 a''( f cis) d( a f d) R1
  \once\override TextScript.extra-offset = #'(2.5 . 2.5)
  d'16(\p-\markup {\italic dolce} e f cis) d8-. d-. d-. d-. d-. d-.
  es16( d c\cresc b a b c a) f4 r b,2~\f b8 c16( d es f g a) b( c d c) b4-. r2
  c,2~\f c8 d16( es f g a b) c( d es d) c8 r a16( b c b) a8 r b16( c d c) b8 r r2
  g'16( a b fis) g8-. g-. g-. g-. g-. g-.
  g16( f! e! d) cis8-. cis-. cis-. cis-. cis-. cis-. d4 r r g,\p
  fis_( a c a fis) r r f_( e g b g e) r8. c16\f c4-. c-. c1~
  c4 r c'16(-\markup {\italic dolce} d e d) c8-. r e16( f g f) e8-. r c,4 r
  \changePitch {c8-. c16( c)}{
    r b'' a g g f e g f e e d
  }
  c4 r r2
  \tag #'SpacingSection {\once\override DynamicText.extra-offset = #'(-3 . 3)}
  a,8(\mf c f c)  a( c f c) b( c a c) a( c f c) b( b' d b) a( c a f)
  e( g c, e) f( c a f) b( d g d) b( d) g,-. b-. c( g' e c) b( g' e b)
  a( c f g) a( e f d) e( g c, e) f( a, c es) d( f b f) d( f) d-. b-.
  \repeat unfold 2 {c( b') g-. b-.} c,( a') f-. a-. b,( f') d-. f-.
  a,4 r r8 c( c') b a4 r r2 r8 f-. f-. f-. c r c r
  f, g16( a b c d e f g a b c d e f)g( a b e,) f4 r8 a,-. f-. d-.
  c-. d-. b-. d-. b-. d-. g-. b,-.
  \changePitch {c8( c) c-. c-.}{
    c d c d c d c d h d h d b d b d b c b c b c b c
  }
  a( c a c a c a c) b2 a8( c f a,) b2 a16( c f a) c8-. a-. b4 r r h(
  c8) c16( d e f g a b! a g f e d c b) a( c b a b c d e f e d c b a g f)
  e8-. g-. c,-. r c16( e g c) e8-. r e,,16( g c g) e8-. r r2
  a'2( f8) \acciaccatura g f16( e) f8-. g-. b( a) a4 r8 f( g gis)
  a( f) a-. f-. b( d,) fis-. d-. g4.( f!8) e-. g-. c-. e-.
  g2( e8) \acciaccatura f e16( d) e8-. f-. a( g) g4-. r8 e( f fis)
  g-. r gis-. r a-. r e-. r f-. a16( f) c8-. a-. f-. a-. g-. f-.
  b-. g-. c-. b-. a( d) h-. f-. e( g) b!-. g-. f( a) g-. f-.
  b-. g-. c-. b-. a( d) h-. f-. e( g) b!-. g-. c( a) f-. es-.
  d( f) b-. d-. g4.(\ff e8) f4-. f,-. c'-. c,-.
  f'16(\trill e f g) a(\trill\f g a b) c8( f,) f-. f-. b8.( g16) e4-. r2
  f16(\trill e f g) a(\trill g a b) c8-. f,-. f-. f-. b8.( g16) e4 r8 b-. b-. b-.
  r a-. a-. a-. r fis-. fis-. fis-. r g-. g-. g-. r f!-. f-. f-.
  f( a c a) g4.( b,8) \repeat unfold 2 {a( c a c) b( c g c)} a\noBeam f'( e es) d r b r
  c4 f2( e!4) f r r f'16(\f e d c) b8-. b-. b2 b16( a g f)
  e8-. e-. e4~ e16( f g a c b g e) f4 r r8 c'( a f) d( f b f) d( f d b)
  \repeat unfold 2 {g( c b c)} a-. c-. g-. c-. a-. c-. a-. c-. b( c) a4 r2
  b8(\p	c) a4 r c'16(\f b a g) f4 f,8. f16 f4 r
  \bar "||"
}

zweiteIIIb = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \partial 2
  \changePitch {c8( c) c-. c-.}{
    a' f b g a f c a a' f b g a f c a a' f b g a\> f b g c a d f,\!
  }
  e4 r c'8-. r c-. r c4(-> f8) r c-. r c-. r c4(-> a'8) r c,-. r c-. r
  c'4.->\> a16( f) c8-.\! r e-. r f4 r
  \bar ":|.|:"
  \changePitch {c8( c) c-. c-.}{
    cis d e cis d a f' d h c! d h c g c b! a f c a b d f f e g f f,
  }
  c'4 r
  \changePitch {c8( c) c-. c-.}{
    a' f b g a f c' c a f c' c a f f' a b, d g, b a f b, d c b g c
  }
  f,4 r
  \bar ":|.|:"
  r r f8(\mf c' a c) f,( d' b d) f,( c' a c) f,( a g b) a4 e f b c8( h) c4 r2
  f8( g gis a) b4 r a8( b h c) a'( f) b-. e,-. f-. r f,-. r c'4.( b8) a4 r
  \bar ":|.|:"
  cis8( e g e) c!( d fis d) h( d f d) b!( c e c) a( c a c) d-. r c-. r b-. r a-. r
  c8.( a16) g8 r a(\f b h c) d( c) r4 d8( es e f) g( f) r4 e8( f fis g)
  a4 r r g8.( b,16) a4 r
  \bar ":|."
  a b8\trill a16( b) c4.( f8)-. a,-. a-. b-. h-. c4( f8) r a,8.([ c16 b8. d16)]
  c4( f8) r g,-. a-. b-. d-. f,4( e8) r
  \changePitch {\times 2/3 {c8( c) c-.}}{
    a f c' b g d'
  }
  \override TupletNumber #'transparent = ##t
  \changePitch {\times 2/3 {c8( c) c-.}}{
    c a f' e g f c a f' e c g' f c a' g b a f c a' g c, b'
  }
  \changePitch {\times 2/3 {c8-. c-. c-.}}{
    a c b a g f e d c b a g f c a
  }
  f r a''4( cis,) d8( e) f-. fis-. g4( h,) d16( c h c e d f e) g8( f) f-. f-.
  \acciaccatura {e16 f g} f4.( e16 d) c8( b4 a8) c16( h b a) g8 r
  \override TupletNumber #'transparent = ##f
  \changePitch {\times 2/3 {c8( c) c-.}}{
    a f c' b g d'
  }
  \override TupletNumber #'transparent = ##t
  \changePitch {\times 2/3 {c8( c) c-.}}{
    c a f' e g f c a f' e c g' f c a' g b a c c, a' b c, g'
  }
  \changePitch {\times 2/3 {c8-. c-. c-.}}{
    a c b a g f e d c b a g f c a
  }
  f r f''4(-\markup {\italic dolce} cis) d( a) r8 f'(\> e cis)\! d8.( f16) e4 r8 a( g e)
  g( f e d) cis( d e f) g( f) e4-. r8 cis( e g) f2( e4 d) cis( c h b) a( gis a g)
  f8.( e16) d4 r2 d8( f d b) a( f' c a) b4 b'2( h4) c2( cis)
  d4-. d,-. f'(-\markup {\italic dolce} cis) d( a) r8 f'( e cis) d8.( f16) e4 r8 a( g e)
  g( f e d) cis( d e f) g4( f e d) cis( c h b) a( gis a g) f r
  \changePitch {c8. c16}{
    a[\f a f f] d[ d h h]
  }
  g4 h'(\p c) r c,8.[\f c16 e8. e16] g( e c g) e4 r e'\p f r as8.[\f as16 f8. f16]
  d8( f) h\noBeam\fermata r r4 f(\p e) r\fermata a8.(-\markup {\italic dolce} f16) b8-. g-.
  \changePitch {c8( c) c-. c-.}{
    a f c a a' f b g a f c a a' f b g a f b g c a d f, e g c b a f b g
    a f c a a' f b g a f c a b' g e b a c f a g e c' b
  }
  a4 r a'8-.\mf r a-. r a4(-> d,8) r g-. r g-. r g4(-> c,8) r f-. r f-. r
  g( f e d) \acciaccatura c b4.( a8) c8. a16 g8 r c-. r c-. r
  c4(-> f8) r c4(-> a'8) r c,4( c'8) r d,( b') g-. e-. f( c) d-. f-. f,4( a8 g)
  f8 r a\p r b r b, r a r b r c r c r f,4 r r f'8.( g16)
  a4.(-\markup {\italic dolce} c8) b4.( g8) a( c) f4-. r8 e( g b)
  a( f e g) f( c a f) e4( es d des) c( h b2)
  \stemDown
  a8-. c'-. f-. e-.
  \stemNeutral
  d c b4~ b8 c-. a-. b-. c-. g-. c-. b-. a4 r r8 d-. g-. f-. e4 f2 e8\trill d16( e)
  f4 r e,,2( f4) r e2( f4) r e''2( f4) r r \acciaccatura a8 g(\f f16 e)
  f4 r r \acciaccatura a,8 g(\f f16 e) f4 r a'\p r f r r2
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET VIER %%%%%%%%%%%%%%%%%%%%
zweiteIVa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  f''2\f f, e16( d e f) g( f e d)c4-. r d'-.\p r b-. r g r e r f'2\f f, b,4 b b r
  a'(\p g f b) a r r2 a4( g f b) a r r2 a4( g) c( b) a-. c-. a-. r
  a'2\f f4. a,8 g2 r f' d4. h8 f2 d h4 c16( d) e-. f-. g( a) h-. c-. d-. e-. f-. g-.
  f8-. e-. d-. c-. h-. a-. g-. f-. e4-. r r2 c g'4. e8 f4 r8. fis16 g4 r8. gis16
  a4 r8. a16 h8 r r8. h16 c4 r g r c,-. d-. e-. d-. f1( e4) r e( f)
  e r g'~
  \tuplet 3/2 4 {
    g8 f-. e-.
    \override TupletNumber.transparent = ##t
    d( c h) c-. e-. g-. c( h a) g-. a-. e-.
  }
  g8.( fis16) f8-. r f4~
  \tuplet 3/2 4 {
    f8 e-. d-. c( h a) g-. a-. h-. c-. d-. e-. f-. fis-. g-.
  }
  f!8. ( dis16) e8 r
  \repeat unfold 2 {c'4~ \tuplet 3/2 4 {c8 a-. f-. fis( g e) c-. e-. g-.}}
  \times 2/3 {gis( a) a-.} a-. r \times 2/3 {fis( g!) g-.} g r
  #(define afterGraceFraction (cons 15 16))
  \afterGrace h,2\trill {a16( h}
  \changePitch {c8-. c16( c)}{
    c) e c g c g e g e
  }
  c8 r r4 \times 2/3 {e8-. g-. c-.} e-\markup {\italic dolce} r c r
  d r \times 2/3 {d,-. f-. h-.} d-. r h-. r g r r4 r \times 2/3 {g8-. a-. h-.} c r
  \tuplet 3/2 4 {c-. e-. c-. a( c a) f-. a-. f-. e( c e) g-. c-. e-. f( c a) f-. a-. f-.}
  e r r4 c'2~ c\p h c4( es2 g4) fis2( f) e!8-. r f-. r e-. r d-. r
  c r e-.-\markup {\italic dolce} e-. e-. e-. e-. e-.
  f(->\trill\> e) e-. e-.\! e-. e-. e-. e-.
  f(->\trill\> e) e-. e-.\! f(->\trill\> e) e-. e-.\!
  \acciaccatura {f16 g} a4.( g16 f) e4-. d8\trill c16( d)
  e8-\markup {\italic dolce} r c-. c-. c-. c-. c-. c-.
  d(->\trill c) c-. c-. c-. c-. c-. c-.
  d(\trill\> c) c-. c-.\! d(\trill\> c) c-. c-.\!
  c16( f c a) g( f e f) g8 c g h c\noBeam c,16(\ff d e f g a) b!8-. b-. b-. b-.
  b1(\cresc a4) r e r f2~ f8 f' f f f2(\! e4) r
  \bar ":|."
  c,4\f r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8 r e r
  f16(\p g f e) d8-. d-. d16( e d c) h8-. h-. h16( c h a) g8-. g-. g16( fis g a) g( f e d)
  c4 r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8 r e r
  h2.(\p d4) f2.( h,4)
  c,( e g e) c8-.[ r16 c-. e8-. r16 e-.] g8-.[ r16 g-. e8-. r16 e-.]
  b4( e g e) b8[ r16 b e8 r16 e] g8[ r16 g e8 r16 e]
  a,4( cis e cis) a8-.[ r16 a-. cis8-. r16 cis-.] e8[ r16 e cis8 r16 cis]
  a4( d f d) a8[ r16 a d8 r16 d] f8[ r16 f d8 r16 d]
  a4( e' g e) a,8[ r16 a cis8 r16 cis] e8[ r16 e cis8 r16 cis]
  a4( d f d) b8[ r16 b d8 r16 d] f8[ r16 f gis8 r16 gis]
  a2\f r b'\ff cis, d16( cis d e) f( g f e) d4-. r d'2\f d, cis16( d e f) g( f e d) cis 4 r
  \changePitch {c4 c8 c}{d r a f r d g r d b r g} f4 cis''-. d-. f, g-. b-. a-. a,-.
  f''16(\mf e f g a g f e d cis d e f e d c) b( a b c d c b a g fis g a b a g f)
  e4-. c8-. d-. e4. c8 f4.-. g8-. a4.-. f8-.
  b16( c d e f e d c b a b c d c b a) g( fis g a b a g f e d e f g f e d)
  c4\f r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8-. r e-. r
  h2.(\p d4) f2( h,)
  \once\override TextScript.extra-offset = #'(2.5 . 3)
  b'!16(\mf-\markup {\italic dolce} c b a) g8-. g-. g16( a g f) e8-. e-.
  e16( f e d) c8-. c-. c16 d e f g a b g f2\f f,, c'4-. g-. e-. r g' r b r g r e r
  f,8-.\f c'-. a-. c-. f,-. c'-. a-. c-. b-. f'-. d-. f-. b,4 r a'( g c b) a r r2
  a'8 r g r f r e r f2\f f,4. f8
  \bar "||"
  f1 b'2 b,4.\f b8 h1\ff c4 r r2 c,4 r r2 c'16(\f d c b) a( b a g) f(g a b) c( d e f)
  es8-. d-. c-. b-. a-. g-. f-. es-.
  \changePitch {c4 c8. c16}{d r h c r cis d r d e r e} f8 r g r a r e r f4 r b, r
  \repeat unfold 2 {a8 f' c f} b, f' d f c4 g'8\trill f16( g)
  f4 r c''4.(-\markup {\italic dolce} b16 a) g8( f) f-. f-. \acciaccatura {e16 f g} f4( e8 d)
  c8.( b16) b8 r b'4.( a16 g) f8( e d c) h16( c d c) g8.( c16) b4( a8) r
  f'8\trill e16( f) \tuplet 3/2 4 {d8-. c-. b-. a-. c-. f-.} a r
  f8\trill  e16( f) \tuplet 3/2 4 {d8-. c-. b-. a(  c)  f-.} a r
  \times 2/3 {cis,( d) d-.} d r \times 2/3 {h( c) c} c r
  \override Slur.positions = #'(1 . 1)
  \tuplet 3/2 4 {c( d c b a g)}
  f8-. a16( f) c8-. f16( c) a4 r r a'~
  \tuplet 3/2 4 {a8 c-. b-. a-. g-. f-. d( f) b-. d-. b-. f-.} d4 r
  r b'~ \tuplet 3/2 4 {b8 g-. f-. e( c) g-. f( a c) f a c} d r b r
  \tuplet 3/2 4 {a( c f) a-. f-. c-.} d r b r
  \tuplet 3/2 4 {a( c f)-\markup {\italic dolce} f-. f-. f-.} f2~ f e!
  f16( g f e) f8-. r des16( es des c) des8 r h16( c h a) h8-. r b16( c b a) b8-. r
  a r d8. b16 a8 r e r
  f r a'-. a-. a-. a-. a-. a-. b(->\trill a) a-. a-. a-. a-. a-. a-.
  \repeat unfold 2 {b(->\trill a) a-. a-.} c( b) a-. g-. g(\trill f) f(\trill e)
  f r f-.\f f-. f-. f-. f-. f-. g(->\trill f) f-. f-. f-. f-. f-. f-.
  \repeat unfold 2 {g(->\trill\> f) f f\!} b4( b, c cis)
  d2\f d4. d8 c16(\ff b a b c d es d) c( b a b c d es c) b4 d b b, a16( f a c) f8-. r r4 es'(
  d8) b,-. d-. f-. b-. d-. f-. b-. a( f) c-. a-. c( b) g-. e-.
  f8. g16 a b c\cresc d es8-. es-. es-. es-. es1\ff d4\p r a r b1
  a4 r r8
  \once\override TextScript.extra-offset = #'(-2.5 . 0)
  c-.-\markup {\italic dolce} a-. f-. b2~ b8 b-. b-. b-. b2(\> a4)\! r
  \bar "|."
}

zweiteIVb = \relative {
  \clef treble
  \key f \major
  \time 6/8
  \override DynamicTextSpanner.style = #'none
  \partial 8 r8 a'2. b4.^~ b8 a-.g-. f4 r8 a-. g-. f-. e( d e) g-. a-. b-. a2.
  b4.^~ b8  a g f4 r8 c4 r8 a4 r8 r4 r8 \repeat unfold 2 {a8-. c-. f-.}
  \repeat unfold 2 {e,-. g-. c-.} a-. c-. f-. a-. g-. f-.e( d e) g-. f-. c-.
  \repeat unfold 2 {a8-. c-. f-.} e-. g-. c-. b-. a-. g-.
  f( c) f-. \acciaccatura a g( f c) a4 r8 r a'-. f-. g4.(\f b) a4 r8 r4 r8 g4.( b) a4 r8 r4 r8
  g4.( b) a8-.\p c-. f-. e-. c-. e-. f-. c-. f-. g-. c,-. g'-. a-. f-. c-. a4 r8
  r f\p a c r\fermata r a4.( c) h( b) a g8-. f-. e-. f r f\f f( c) c-.
  c( a) a-. a( f) f-. f2.~ f8 a-. c-.  a4( e8) f r f''-. f( c) c-. c( a) a-. a( f) f-.
  f( c) c-. c( a) a-. a-. c-. f-. f4( g8) gis( a) r f16( e f g a h) c8  r r f,16( e f g a h)
  c8 r r f,4.( e4) r8 a4.( g4) r8 h4 r8 d4-. r8 h,4. c2.~ c8 c-. c-. c-. c-. c-.
  c4.~ c8 d-. e-. f4( d8) e-. g-. e-. c2.~ c8 c'-. c-. c-. c-. c-.
  c4.~ c16 h( d c e d) f8-. f( dis) e8\f g16( e c g) \repeat unfold 2 {e4 r8 d4( g8)}
  e4-. r8 c4 r8 f4-. g8-. f4-. g8-. f4-. a8-. f4-. a8-. f4-. r8 r4 r8
  f'(\cresc d h) c-.\p g-. e-. f2.( e8) c'-. h( b) a-. g-. f-. e-. d-. r4 r8
  f'(\f d h) c-.\p g-. e-. f2.( e8) g e c-. g'-. e-. h-. g'-. d-. h4-. r8
  g''4.~\ff g8 e-. c-. b4( g8) e4-. r8 g'4.~\ff g8 e-. c-. g4.(\p b) a2.
  b4.^~ b8 a-. g-. f( e f) a-. g-. f-. e( d e) g-. a-. b-. a2. b a8( g f) b4 c8-.
  f,4 r8 r4 c8\p f4-. f8 f_\trill e( f) g4.~ g8 a-. b-. c( gis a) c-. b-. a-.
  \acciaccatura a g( fis g) b-. a-. g-. f4-. f8-. f( g a) g2.\ff f4 f8 f( e d) cis2.
  d8-. d'-. d-. d( c!) c-. c( h) h-. h-.\cresc h-. h-. b!( d f) f( e d) cis4 r8 r4 r8
  f,2.\p e a g c h4.\cresc e4( d8) c4 h8 a4 gis8 a4 r8 r4 a,8\f
  d4-. d8 d( cis d) d4.(-> cis4) a8 f'4 f8 f( e f) f4.(-> e4) c?8
  a'4 a8 \acciaccatura b a( g a) a( a' fis) g4-. gis8-. a4( b8) d,4( cis8)\trill d4 r8 r4 r8
  r4 r8 c,!( d e) f4 r8 r4 r8 r4 r8 f,( g a) b4 r8 g( a h) c4 r8 c( d e) f( g a) b4( h8)
  c4-. r8 c( d e f g a) b4( h8) c-. c,-.\p c-. e( c) c-. f( c) c-. fis( c) c-.
  g' r r r4\fermata fis8( g) r r r4\fermata r8 a,2. b4.^~ b8 a-.g-.
  f( e f) a-. g-. f-. e( d e) g-. a-. b-. a4-. a8 a( g f) b4.^~ b8 a-. g-. f4 d'8-. b4-. c8
  f,4 r8 r4 c8\f f4 f8 f_\trill e( f) g4.~ g8 a-. b-.
  c( gis a) f-. c'-. a-. \acciaccatura a g( fis g) b-. a-. g-.
  f4 f8 \acciaccatura g f( e f) g4.~ g8 a-. b-. c( f) a,-. \acciaccatura c b-. a-. g-.
  f r r\p f'(-\markup {\italic dolce} e es) d-. r r g( fis f) e-. r r c( h b)
  a( g f d g f) e r r c''(\p h b) a( g f) \acciaccatura g f e16( f g f)
  e8-\markup {\italic dolce} r fis( g) r gis( a) r gis( a) r a( b) r r r4 a8( b4) r8 r4\fermata
  c,8 f4 f8 \acciaccatura g f( e f) g4.~ g8 a-. b-. c(  b a) \acciaccatura a g f-. g-.
  g4( gis8 a4) r8 r4 r8 c,4.(\p h b) a8( g f) e-. f-. g-. a4.( b) c8( a f) g-. f-. e-.
  a4. b c8( a f) c4 c8 a4 r8 c'-. c-. c-. a4\f r8 c'-. c-. c-. a4 r8 c,-. c-. c
  a4-.\< f8-. c4-. a8-.\! f16( a) c-. a-. c-. a-. f(\f a) c-. a-. c-. a-. f4 r8 r4 r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET FUNF %%%%%%%%%%%%%%%%%%%%
zweiteVa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \partial 2 c'4(-\markup {\italic dolce} b) a4.( b16 c) d4-. c-. b8( a) b-. c-. d4( c)
  b4.( c16 b) a8-. a-. g-. g-. f( a c a) b( f' d b) a( f' c a) b( f' d b)
  a( c f a) b-. b-. a-. a-. a( gis g f) a( g f e) f4 r a'( cis,)
  d~ d16( e f fis) a-. g-. f-. e-. e( d c h) c4.( d16 e) f8-. f-. e-. e-.
  gis( a g f) e( d4 c8) h g'16( fis f e f d) c( h c e f e d c)
  h( d g fis) f( e f d) d( c h c) f( e d c) h( d g h) c( g e c) h( d g c) c,( e g c)
  h4 r r2 r8 e,,-.\p e-. e-. r f-. f-. f-. e4 r r2 r8 e-. g-. e-. d( h c) c' h4 r r2
  r8 e,-. e-. e-. r f-. f-. f-. e4 r r8 g( a h) c-. gis-. a-. f-. g r g, r
  r c16(\f e g  c e c) d( e d c h g a h) c( g e g c e g e) f( e d c h a' g f)
  e8 c,16( e) g( c e c) a( c f e d c b a) g( c' h c) h( a g f) e( f g f) g( f e d)
  c8\noBeam g-.\p g-. g-. f2( e8)\noBeam g-. g-. g-. f2(
  e8)\noBeam c'-. c-. c-. r f,-. f-. f-. r g-. g-. g-. r g-. g-. g-.
  e r c'16( d e f) e( f g a) g( f e d) c8-.-\markup {\italic dolce} c-. a-. a-. f-. f-. g-. g-.
  e16-. g( fis g a g fis g) h-. g( fis g a g fis g) c-. g( fis g a g fis g) f( e d e f d g f)
  e16-. g( a g fis g a g) h-. g( a g fis g a g) c-. g( a g fis g a g) f( e d e f d g f)
  e4-. r8 g-. e4-. r8 g,-. e4 r
  \bar ":|."
  r2 r8 c'( es g) c( es c g) f-.\noBeam d( f h) d( f d h)
  g-.\noBeam h,( d g) h( d h g) es16( f g f) es8-. r g'4.(\> h,8)\! c r g'2(\> es8 c)\!
  r4 as'2(\> f8 d)\! r4 f2(\> d8 h)\!
  c4 r es r r16 d,16(\f fis a d e fis g a g fis es d c b a) g8 r b r d r r4
  c,16( e g c e f g a g f e d c b a g) f8 r c' r a r r4 b16( d g a) b( a g f) e( f g f) e( f e d)
  cis( a cis e) a( g f e) f( g f e) d( f e d) cis8 r a r f r d r
  a4 a'-.-\markup {\italic dolce} a a a2( g4 f) es8( d c b) a( c f es) d4 r f( es)
  d4.( es16 f) g8-. g-. f-. f-. es r g,16( c es g) c4( b) a4.( b16 c)  d8-. d-. c-. c-.
  b16( c b a b c d es) d( es f g f d c b) a4 r d, r b'16( c d es d c b a b a g fis g a b h)
  c4 r c, r r16 f,( a c f a c f) a( g f e) f( e d c) h8 r d r f2(-> e4) r r b'!16(\p a g f)
  e4 r r g16( f e d) c4 r r g16(\p f e d) c4 r r g'16( f e d) c2.( b4)
  a4.( b16 c) d8-. d-. c-. c-. b( a b c) d4( c) b4.( c16 b) a8-. a-. g-.g-.
  f( a c a) b( f' d b) a( f' c a) b( f' d b) a( c f a) b-. b-. a-. a-. a( gis g f) a-. g-. f-. c-.
  r16 c'-.\f f-. e-. d-. c-. b-. a-. g( a g fis) g( a b h)
  c( a) f'-. e-. d-. c-. b-. a-. g( a g fis) g( a b h)
  c( a) a'-. g-. f-. e-. d-. c-. b-. a-. g-. f-. e-. d-. c-. b-.
  a8-. c16( f) a-. c-. f-. a-. c( a g f) e( f g f)
  e( d) cis-. d-. e-. f-. g-. a-. b( a g fis) g( f e d c8)
  \shape #'((-0.5 . 0) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
  c'4(\( b16) a\) g2\trill f16 r c8-. a'( f) r e-. b'( g) r c,-. a'( f) r e-. b'( g)
  r8 a16-.\f g-. \changePitch {c16( c) c-. c-.}{f e d c  b a g f e d c b} a( b a g)
  \repeat unfold 3 {f( c') a-. c-.} \repeat unfold 4 {f,( d') b-. d-.}
  e,4 r r16-. f'-. g-. a-. b-. c-. d-. e-. f8  r a r f r a,, r
  b-. d-. f-. d-. c-. e-. g-. e-.
  f16-. c'( d-\markup {\italic dolce} c) d( c) d( c) e-. c( d c) d( c) d( c)
  f-. c( d c) d( c) d( c) b2( a16) c( d c) d( c) d( c) e-. c( d c) d( c) d( c)
  f-. c( d c) d( c) d( c) b2( a8)\noBeam f,16( g) a-. b-. c-. d-. e-. f-. g-. a-. b-. c-. d-. e-.
  f4-. r b-. r a r
  \bar "|."
}

zweiteVb = \relative {
  \clef treble
  \key c \major
  \time 3/8
  \partial 8 r8
  r r g' e( g h) c( a d) c( h) r fis4. r8 h( c) r h,( c) h r
  \bar ":|.|:"
  \break
  r r r f'!( e4) r8 r r e( c h) r c'( h a) gis( a f) g!4( f8) e r
  \bar ":|.|:"
  \break
  g8\p g( c h) c4( d8) e4( f8) e( d h) d( c a) d4( e8) g,4 h16( a) g8 r
  \bar ":|.|:"
  %\break
  d' d( f h,) d( c e) e( g c,) e( d g) a( g fis) f!8.( e16 f d) c4 e16( d) c8 r
  \bar ":|.|:"
  %\break
  r r r e\p f(-> e gis) a4( h8) a( gis g) fis4( e8) dis4( e8) ais,( h a) g r
  \bar ":|.|:"
  \break
  r r r d(\p c4) r8 r r a'( gis) gis-. gis-. gis( h d) c( gis a) dis,( e8. d16) c8 r
  \bar ":|."
  \break
  g'! g( c h) d( c d) e4 g16( f) e8( d h) d( c a) d4( e8) g,4( h16 a) g8 r  g32(\f a g f)
  \set Staff.beamExceptions = #'((end . (((1 . 32) . (4 4 4)))))
  e( c g c) e( g e c) f( g f d) e( c e g) c( e d c) h( g a h) c,( e g c) e,( g c e) f,( a c f)
  g,( c e c) h8-. h32( d c h) a( h c h) a( g fis e) d( fis a  fis) g( d h g)  h( d g h) c,( e g c)
  d,16-. g'32 d h( g d h) a( d c d) h( g' d h) g8 d''-.
  \unset Staff.beamExceptions
  d( f h,) d( c e) e( g c,) e( d g) a( g fis) f!8.( e16 f d) c4( e16 d) c8 r h32( c h a)
  \set Staff.beamExceptions = #'((end . (((1 . 32) . (4 4 4)))))
  g(\f d g h) d( h g d) f'!( d h f) e( f g f) e( g c e) g( e c g) e'( c g e) c'( g e c) e( g e c)
  g( g' fis g) g,8 h'32( c d h)
  \changePitch {c32( c) c-. c-.}{
    c e d c h d c h a c h a gis h a gis a c a e f a f d e g c g e g e c g h d f
  }
  e( c g c) e,8 r b''4.\p a4( f8) cis([ d f)] e32( f g f) e( f e d) c( d c b)
  a4 f8 f4.( e8) r r
  \bar "|."
}

zweiteVc = \relative {
  \clef treble
  \key f \major
  \time 6/8
  \override DynamicTextSpanner.style = #'none
  \partial 8 r8
  a'-. c-. a-. b-. g-. b-. a-. c-. a-. g-. e-. f-. b4.~ b8 g h c c, c'~ c16( d c b! a g)
  a8-. c-. a-. b-. g-. b-. a-. c-. a-. g-. e-. f-. b,-. f'-. d-. b-. b'-. c-. b4.( a8) r r
  f' r f, e-. g-. e-. d r h' c-. e-. c-. f,4 r8 f-. a-. f-. e( f fis) g4 r8
  \repeat unfold 2 {r h-. h-. r c-. c-.} r f,-. a-. r g-. d-. f4.( e4) r8 r4 a8( b!4) r8
  r r g( a4) r8 f4-. r8 g4 r8 h4.( c8) r c
  \override Slur.positions = #'(1 . 1)
  \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r c f g f b r a g a g d r g} f4.( e16) f( g e c b)
  a8-. c-. a-. g-. c-. b-. a-. c-. a-. g-. e-. f-. b, r r b'-. g-. c-. f,4 c8 a4 r8
  f'4.( g) as2. b4. as8-. g-. f-. e!-. c'( h\cresc b as g f)\! r des' c( es c)
  b4( g8) as-. es'-. c-. des4 r8 g,8-. as-. b-. des4.( c4) es,8 c'8.( des16 c8) c-. des-. es-.
  es4( b8) r r c, as'8.( b16 as8) as-. b-. c-. c4( g8) r4 c8 des8.( es16 des8) des4 des8
  c\< g' b\! as r f g8.( as16 b8) c,-. d!-. e!-. e4.( f8) r r
  \changePitch {c4( c8)}{a,! c g b a c e! f b, d b g} c( d h) c( b g) a4 r8 g8.( a16 g8)
  f4 r8 e8.( f16 e8) d4 r8 g,4. c~ c8 r c'
  \changePitch {c8.( c16 c8) c c c}{f g f e r c f g f b r a g a g d-. r g-.} f4.( e8) r c
  \changePitch {c8.( c16 c8) c c c}{f g f e-. r c-. f g f b r a g a b d, r e-.} g4.( f8) f,-. f-.
  f-. c-. f-. g-. c,-. g'-. a-. f-. a-. b-. f-. h-. c-.\f r g-. es-. r g-. c,-. r f-. a,-. r r
  a'-. f-. a-.b-. a-. b-. c16( d es d c b) a4 r8 R2. \repeat unfold 2 {b,8-. d-. f-.}
  d-. d'-. b-. c-. a-. f-. b,-. d-. f-. a,-. c-. es-. d4 r8 r4 r8
  \changePitch {c c-. c-.}{
    r d e r f b r a f r c' f r a, f e g c
  }
  b4.( a8) r f
  \changePitch {c8\noBeam \acciaccatura c c16( c c c) c8 c c}{
    f' g f e! f g e-. c'-. r es, f es d es f d-. b'-. r
    des, es des c des es c-. g'-. r b, c b a b c b( a) f-.
  }
  \changePitch {c8\noBeam \acciaccatura c c16( c c c)}{
    b c b a b c d es d c d es f g f e! f g
  }
  es8 r c d es16( d c b) a8 c16( b a g) f8-. g-. a-. b-. d-. f-. es4.( d4) r8
  d( es16 e f fis) g8-. b,-. b-. b4.( a) as4( g8 f as f) e! r r
  \changePitch {c8\noBeam \acciaccatura c c16( c c c) c8-. c-. c}{
    f' g f e! f g e-. c'-. r f, g f e! f g e-. c'-. r
  }
  c,\noBeam c16( b a g) f8 f' r f, \acciaccatura g f16( e f g) e4 r8 r4 e'8-\markup {\italic dolce}
  f4( fis8 g4 f8) e( g) c, r4 r8 a,16( c f a c a) g( b c b a g) a( c d c b a) g( c e g f c)
  b8 b16( c d c) b( a g a b h) c8 c16( h c h) c( d c b a g) a( c d c b a) g( b c b a g)
  a( c b a g f) e( f g e f a) b( c d es d c) b( a g a b c) a4 r8 r4
  c8 d8.( e16 f8) f-. f-. f-.
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
  }
  f4 \acciaccatura {g16 f e f} g8 a r
  c,8 d8.( e16 f8) f-. f-. f-. f4( \acciaccatura {g16 f e f} g8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
  }
  a\noBeam c16( a f c) d4 r8 r d-. e-.
  f4-. r8 r g,-. a-. b4 r8 r f-. g-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    b16 a b c d e f c a f c a b d f d f d b d f d f d f, a c f a c f c a f c a
    b d f d f d b d f b d b a c a f c a
  }
  f8-. r r b'4 r8 g4 r8 e4 r8 f4 r8 d4. r8 b-. d-. f-. b-. d-. f-. b-. d-. f,2.~
  f8 f-. f-. f-. f-. f-. f16( e) g-. f-. e-. d-. c-. b-. a-. g-. f-. e-.
  f8 r-\markup {\italic dolce} \repeat unfold 2 {f b8.( c16 b8) a r c e8.\trill d16( e8) f r}
  e( f) r e( f) r cis( d) r a( b2.) a4 r8 r4 r8 r c'16( b) a-. g-. f-. c-. a-. f-. c-. a-.
  f4 r8 r4 r8
  \bar "|."
}


%%%%%%%%%%%%%%%%%%%% DUET SECHS %%%%%%%%%%%%%%%%%%%%
zweiteVIa = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  e''4\f e,8.(\p g16) c,4 r c8 r c r d r r4 f'4\f h,,8.(\p d16) g,4 r d'8 r f r e r r4
  c16-. c-. r e-. g-. g-. r g-. e-. e-. r e-. c-. c-. r c-.
  f-. f-. r f-. a-. a-. r a-. g-. g-. r g-. h-. h-. r h-.
  c-. c-. r c-. e-. e-. r e-. c-. c-. r g-. e-. e-. r e-.
  f-. f-. r f-. d-. d-. r d-. h-. h-. r d'-. h-. h-. r g-.
  c,8 r g''16.( e32 g16. e32) c'4 h16( a g fis) a8( g16) r r8 e16.( c32) a8( fis') a([ c,)]
  h( d) a([ c)] h16\noBeam d( g h) c8. a32( fis)
  g8-.\noBeam h,( a c) h\noBeam h16.( c32 h16. c32 h16. c32) g2 r\fermata
  \bar "|."
}

zweiteVIb = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  c'8(\mf g) g-. g-. d'( g,) g-. g-. e'4 r8 c'16( d32 e) f8-. g-. a-. h-. c-. h-. a-. g-. f-. e-. d-. c-.
  d8.( e32 f) e4-. r2 g4-. g4. a16( g f e d c) h8 g16( a)  h( c d e)  f( e d e f g a h)
  c( h c h) c8-. h-. a-. g-. f-. e-. d-. c-. h-. a-. g-. f-. e-. d-. c8(\p g) g-. g-. d'( g,) g-. g-. e'4 r8
  c16( d32 e) f8-. g-. a-. h-. c-. h-. a-. g-. f-. e-. d-. c-. d8.( e32 f) e4-. r2
  c''4-. c4. d16( c h a g fis)  a8( g) d-. h-. a( gis) r d'-. c4. e16( c) h8-.  d16( h) a8-.  c16( a)
  g8-. d-. h4-. r2 g'4.\f h16( d) g8.( fis16 e d c h) a( h a g) fis4 r2 fis4. d16 fis a8( h16 a g fis e d)
  g8-. d-. h-. g-. r2 h'16( c h a) g4-. r2 gis4( a) r2 c,2. a4 d8 r r d'16( e32 fis) g8-.\mf a-. h-. c-.
  d4~ d16 h( g d) h8-. h-. h-. h-. d( c) r16 c( d e) fis8-. g-. a-. h-. c4~ c16( a fis d) c8-. c-. c-. c-.
  ais( h) r h( h') a!-. g-. f!-.  dis4( e8) e( g) f-. e-. d-. h4( c8) c( e) d-. c-. h-.
  \slashedGrace c( h a) d4.( cis16\< d e d c h)\! \slashedGrace c8( h a) d4.(\< cis16 d e d c h)\!
  \stemUp a( h c h \stemNeutral a gis a h) c( d e d c h c d)
  e8-. fis16( g) a-. h-. c-. d-. e8-.  cis,,-. cis-. cis-.
  d-. d''4(cis8 c) h-. a-. g-. fis1\trill g8 r g( d h g d h) c( d fis d) a'( fis d' c)
  h( g d g) h,( d g h) h( a gis a) fis( g a fis) g r g'( d h g d h) c( d fis d) a'( fis d' c)
  h( g d g) h,( d g h) a4 r fis r g16( h c d e fis g a) h( a g a h a g a) h4 r d,8( e fis g) c,1
  h8\f c16( d e fis g a) h( a g a h a g a) h4 r d,8( e fis g) c,1( h8) d( c h) c( d e fis)
  g( d c h) c( d e fis) g( d c h) c( a d c) h-. r d-. r h-. r r4
  \bar ":|."
  \break
  b8-.\p  r d-. r b-. r g-. r e-. r g-. r e-. r r4 d'8-. r f-. r d-. r h-. r gis-. r h-. r gis-. r r4
  r2 f'4.( g16\cresc f32 e) d4 r e4.( f16 e32 d) c8(\! e a gis) a( e c a)
  gis(-\markup {\italic dolce} h d h) gis( h e, gis) a( gis a h c cis d dis) e2(\cresc f) e( dis)
  \override TupletBracket.bracket-visibility = ##f
  e4\! r \repeat unfold 2 {\tuplet 3/2 4 {r8 a( gis g fis f)} e4 r} r e(\p f) r r cis(
  d) r r c!( h) g d h c8( g) g-. g-. d'( g,) g-. g-. e'4 r8 c'16( d32 e) f8-. g-. a-. h-.
  c-. h-. a-. g-. f-. e-. d-. c-. d8.( e32 f) e4-. r2 R1 d'4-. d4. d16( c h a g f)
  e4 r8 e16( f32 g) f8-. e-. d-. c-. h8.\trill c16 d8 r r2 e,2 f4.\trill e16( f)
  g4 r8 e16( f32 g) a8-. h-. c-. d-. e-. d-. c-. h-. a-. g-. f-. e-. f8.( g32 a) g4 r2
  c2\f b4.\trill a16( b) a4 r8 a b-. c-. d-. e-. f4 r8 f,-. g-. a-. h!-. cis-.
  d r d'2\ff c8\trill h16( c) h8 r h2\ff a8\trill g16( a) g4 r8 c,,-. d-. e-. f-. gis-.
  a4 r8 a b-. c-. d-. e-. f-. f,-. e-. e'-. d-. d,-. c-. c'-. f,2( fis)
  \repeat unfold 2 {g4 h a4.( fis8)} g4 r g, r g'2(\p a) h( c) h4 r r2 e,,16( g c g) e
  4 r8 e'16( g) c8-. cis-. d16( e f e) d4 r2 h,16( d g d) h4 r8 g-. h-. g-.
  c16( d e d) c8 c'\trill e-. d-. c-. h-. h4( a8) a'\trill c-. h-. a-. g-. g4( f8) f\trill a-. g-. f-. e-.
  d16( e d cis) d8-. e-. f16( g gis a g f e d) c4( h8) g16( a32 h) c8-. d-. e-. f-.
  g4~ g16( e c g) e8-. e-. e-. e-. g( f) r f16( g32 a) h8-. c-. d-. e-. f4~ f16( d h g) f8-. f-. f-. f-.
  e16( f g f) e4 r2 d'4(\p c) r2 b4( a) r2 \repeat unfold 2 {f8( g f g) e( g e g)}
  f4 r r8 f16( g32 a) b16(  c d e) f(\trill e f g) a( g f e d c b a g f e d c4) r f8 c' c c
  h( g f d) h-. d( g,) h-. c r g''(\pp e) c( g e c) h( d g f) d( h g f)
  e r c'''( g) e( c g e) d2( h) c8 r g''( e) c( g e c) h( d g f) d( h g f)
  e r c'''( g) e( c g e) d2 h c16(\f e f g a h c d) e( d c d) e( d c d) e4 r f2( e4) r d2( c4) r b2(
  a4) r a8-. c-. f,-. f'-. e-. c-. g-. c-. h-. g-. d'-. h-. c( h c gis) a( c4 f8)
  e-. c-. g-. c-. h g d[ f] e\noBeam c'( d e) f4~ f16( g32 a g16 f) e8 r e4( d g)
  g8( c, h b) a( c h a) g( gis a g) fis( f g f)\repeat unfold 2 {e( g e g) f( d g f)}
  e\f e'16( c) g( e c g) e4 r
  \bar "|."
}

zweiteVIc = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \partial 2 r4 r
  e'(\p a g f) e-. e'-. cis-. a-. d-. h-. c!-. f,-. g4.( f8) e4-. g-. c,4.( e8) f4-. a-. d,4.( h8) c4-. e-.
  f, r8 f'16( a) c4-. d-. g,-. g,-. c'4\ff c c8([c')] c( h) h( a) a( g) g2  g8( gis a e)
  f( fis g d) dis( e f d) c( h a g) c \acciaccatura d c16( h) c8-. d-.
  d( e4-> c8) d \acciaccatura e d16( cis) d8-. e-. e( f4-> d8)
  \tuplet 3/2 4 {
    e8( f fis)
    \override TupletNumber.transparent = ##t
    g c-. h-. a-. g-. f-. e-. d-. c-. h-. a-. g-. f-. e-. d-.
  }
  c4-. r e'4(-\markup {\italic dolce} g) d4.( e8 f4 d) g8.( e16 c4-.) g'( c) c8( h a g g f e d)
  dis4( e8) r
  \changePitch {c8( c) c-. c-.}{
    c g e c h g' h, c d g g, h c e g c e c e g
  }
  \override TupletNumber.transparent = ##f
  a( g f e) e( d c h) \tuplet 3/2 4 {c8(\f d c) g( a g)} c,4 r \tuplet 3/2 4 {c'8( d c) g( a g)} c,4 r
  h'2( g4-.) h-. a2( a'4. fis8) g4-. d-. h-. r d'2\f h4. g8 d2 h4. g8 d( d' cis d) e( d c d)
  h( d) fis,-. d'-. g,( d') a-. d-. g,4( fis8) r c'( e) h-. d-. c( a) g-. h-. a-. g-. fis-. d-.
  g4 g, d'''2~ d4 c r c~ c h r h~ h a r a~ a g g,,-. a-. h2 c d1~
  \override TupletNumber.transparent = ##t
  \tuplet 3/2 4 {d8 fis-. g-. a-. h-. c-. h-. d-. c-. h-. a-. g-.}
  fis r d8.(\ff	e16) fis8 r fis8.( g16) a8-. r fis8.( g16) a8 r a8.( h16) c4 r r2
  \changePitch {c8( c) c-. c-.}{h,\mf g d' d h g d' d h g d' d h g g' g fis d a' a fis d a' a}
  g r\cresc h r a r c r h r h'4.->\ff g8-. d-. h-.g2\f d'~ d4 c8-. h-. a4-. h-. c-. a-. fis-. r
  h,2( d) h4 g g'2( fis~) fis f!( e4 c) h r r8 g''-.\f g-. g-. g-. h-. d-. c-. h-. a-. g-. f-.
  e1~ e8 a-. c-. h-. a-. g-. fis-. e-. d1~ d8 fis( g fis e d c h) \acciaccatura c h( a) a4. c8-. e-. a-.
  \acciaccatura h a( g) g2 a8( fis) h2~\cresc h8( a gis h) a( g! fis a) g( fis e d) d( c) e-.c-. c( h) h( a)
  g'( d) d4.\ff dis8( e d) c( cis d c) h( d c h) h( a) c-. a-. a( g) g( fis) g4 r r2 r4 r8. g16 h4-. cis-.
  d r8. g,16 d'4-. e-. f-. r e-. r d( es d c!) h r r2 r8 g( fis f) e4-. e-.
  e( a g f) e-. e'-. cis-. a-. d-. h-. c!-. f,-. g4.( f8) e4-. g-. c,4.( e8) f4-. a-. d,4  r d r f r g r
  \tuplet 3/2 4 {
    \override TupletNumber.transparent = ##f
    c,8-. e-. g-. c-. e-. g-. a-. g-. f-. e-. d-. c-.
    \override TupletNumber.transparent = ##t
    f-. e-. d-. c-. h-. a-. gis-. h-. c-. d-. c-. h-.
  }
  a4 r c r e, r c r c''2( a4. f8) d'4 d d r b2( g4. e8) c'4 c c r \repeat unfold 2 {c,4.( d16 e) f8 r a r}
  a( g) b-. a-. a( g) a-. f-. \acciaccatura f8 e4 d8( c)
  \tuplet 3/2 4 {
    \override TupletNumber.transparent = ##f
    c( g e) c( b g)
  }
  \changePitch {c8( c) c-. c-.}{
    f c' a c f, c' a c f, d' b d f, d' b d e, c' g c e, c' g c f,
    c' a c f, c' a c a f' c f a, f' c f d f b d b f d b
  }
  \override TupletNumber.transparent = ##f
  c4 r c r \tuplet 3/2 4 {f8 a c f c a} f4 r a'8.( b16) a4 r8 cis, cis cis d16( e d cis) d( e f g) f4 r
  e8.( f16 e4) r8 gis-. gis-. gis-. h!( a gis a) r e-. e-. e-. e d4 c h a8
  \repeat unfold 2 {gis( h) e-. gis-.  h( gis) e-. d-. c( h a gis) a( c h a)} gis4 r r2
  f'2~ f8 a( g f) f( e dis e) e4-. e-. e8( d cis d) f( e d c) h4 r r2 d4 r r2 d,4-. f-. e-. e-.
  e( a g f) e-. e'-. cis-. a-. d-. h-. c!-. f,-. g4.( f8) e4-. g-. c,4.( e8) f4-. a-. d,4.( h8) c4-. e-.
  f, r8 f'16( a) c4-. d-. g,8( a b h) c4\cresc c c8(\! c') c( h) h( a) a( g) g2  g8( gis a e)
  f( fis g d) dis( e f d) c( h a g) c \acciaccatura d c16( h) c8-. d-.
  d( e4 c8) d \acciaccatura e d16( cis) d8-. e-. e( f4-> d8)
  \tuplet 3/2 4 {
    e8( f fis) g( c h)
    \override TupletNumber.transparent = ##t
    a-. g-. f-. e-. d-. c-. h-. a-. g-. f-. e-. d-. c-. d-. e-. f-. g-. a-. h-. c-. d-. e-. f-. fis-.
  }
  g2\f e4. c8 g2 e4. c8 g8( g' fis g) a( g fis f) e(\p g) h,-. g'-. c,( g') d-. g-. c,4( h) g'4.( a16 g)
  e8( d) cis-. e-. d( a) h-. g-.  c d16( e) f-. g-. a-. h-. c4 g'~ g2 f~ f e~ e d c4 r e g e r r
  \override TupletNumber.transparent = ##f
  \times 2/3 {c,8( d e)} f4-. e-. d-. c-. h r r2
  \changePitch {c8( c) c-. c-.}{e c g' g e c g' g e c g' g e c a' a f d d' d h g d' d} c2 a4-. f-.
  e e'4.\ff c8-. g-. e-. c2( c') cis8( e) a-. g-. f-. e-. d-. cis-. d2-. f-. g8( d) g-. f-. e-. d-. c-. h-.
  c2( e,) f4 r d r a'1 h2( c8) e, c g e1 f g e''8(\f f g f) e( d cis e) d( c! h d) c( h a g) f4-. d-. g-. g,-.
  g''2~ g8( gis a g) fis( f g f) e( g f e) e( d) f-. d-. d( c) c( h) c4 r c8 \acciaccatura d c16( h) c8-. d-.
  d(\> e4 c8)\! d \acciaccatura e d16( cis) d8-. e-. e( f) d4 r2 r d8 \acciaccatura e d16( c) d8-. e-.
  e\> f4 d8\! e \acciaccatura f e16( d) e8-. f-. fis( g) e4 r2 dis8(\p e) c4 r2 fis,8( g) e4 r2
  c2\f c4. c8 a2 r c2 c4. c8 h2 r4 h8( d) f2( e4) r f r r2
  \changePitch {c8( c) c-. c-.}{e c g' g f d g g e g e c h d g, h c g' e c h d g, h c e g c h d g f}
  e4 r8. c,16 c4 c c r r2
  \bar "|."
}