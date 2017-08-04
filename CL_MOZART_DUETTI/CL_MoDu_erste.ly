\version "2.19.15"

\language "deutsch"

\include "changePitch.ly"

%%%%%%%%%%%%%%%%%%%% DUET EINS %%%%%%%%%%%%%%%%%%%%
ersteIa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \once\override Slur.positions = #'(2.5 . 1)
  f'2\f( \acciaccatura {f'16 g} a4. g8) f4-. e-. d-. c-.
  b2(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {d16 e fis} g4. f8) e4-. d-. c-. b-.
  a r-\markup {\italic dolce} b'4.( e,8) g( f) r4 b4.( e,8)
  g( f) r4 g8( f e d) c\trill h16( c) d8 b a4 g\trill
  \tuplet 3/2 4 {
    f8\f( c a)
    \once\override TupletNumber #'transparent = ##t
    c-. f-. a-.
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b	a b a g a g f g f e f e
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
  c8 r b r a4.( b16 a) g8 r f r
  \repeat unfold 2 {
    \tuplet 3/2 4 {
      \override TupletNumber #'transparent = ##f
      c8\f e g c e g f e d c h a
    }
    \changePitch {c8-. c16( c)}{
      g a g f g f e f e d e d
    }
  }
  c4 r8
  \once\override Slur.positions = #'(1 . 1)
  c16( d32 e
  \tuplet 6/4 4 {
    f16 g a h c d e f g a h c
  }
  d2.) f,8\trill e16( f)
  \tuplet 3/2 4 {
    e8( c d e f fis) g-. f-. e-. d-.c-.h-.
    a( d e f g gis)
    \override TupletNumber #'transparent = ##t
    a-. g-. f-. e-. d-. c-.
    h-. e( f fis g a) h-. a-. g-. f-. e-. d-.
    c-. f( g a b h) c-. h-.a-. g-. f-. e-.
    d-. g( a h c cis) d-. c-. h-. a-. g-. f-.
    \override TupletNumber #'transparent = ##f
    e-. f-. g-.
  }
  a-. r \times 2/3 {d,-. e-. f-.} g-. r
  \times 2/3 {c,-. d-. e-.} f-. r \times 2/3 {h,-. c-. d-.} e-. r
  a,4-. d2 fis8\trill e16( fis) g4-. g,2 f'8\trill e16( f)
  e8-. c'( h b a g f e) e( d cis d) f( g gis a) a( c,) c2 d8. h16
  \tuplet 3/2 4 {
    \override TupletNumber #'transparent = ##t
    e8( f g) d-. e-. f-. c( d e) h-. c-. d-.
    a( h c) g-. a-. h-. f( g a) e-. f-. g-.
  }
  f-. r
  \once\override TupletNumber #'transparent = ##f
  \times 2/3 {d-. e-. f-.} r g'( a h)
  c-. r h-. r a-. r g-. r f-. r e-. r d-. r cis-. r
  \tuplet 3/2 4 {
    d( f e) f-. g-. a-. g( f e) d-. c-. h-.
  }
  c4 r8. cis16 d4~
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    d8-\markup {\italic dolce} e-. f-.
    g( a g f g f e f e d e d)
  }
  c4 r8. cis16\mf d4~
  \tuplet 3/2 4 {
    d8-\markup {\italic dolce} e-. f-.
    g( a g f g f e f e d e d)
    \once\override Slur.positions = #'(1 . 1)
    c( d c b! c b a b a f g f)
    e( d c b! c b) a( b a h c h)
  }
  c r e'\trill d16( e) f8 r h, r
  c r e\trill d16( e) f8 r h4\f
  c c,,8.\f c16 c4 r
  \bar ":|.|:" \break
  \once\override Slur.positions = #'(1.5 . 1)
  c2\f( \acciaccatura {c'16 d} e4. d8) c-. r h-. r a-. r g-. r
  \once\override Slur.positions = #'(2.5 . 1)
  f2(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {a16 h c} d4. c8) h-. r a-. r g-. r f-. r
  e-.-\markup {\italic dolce} r f-. r g-. r a-. r b!-. r d-. r c-. r b-. r
  \tuplet 3/2 4 {
    f(\f g as a b h)
  }
  \changePitch {c8-. c16( c)}{
    c d c b c b	a b a g a g f g f e f e
    d e f g g a b c b a b a	g a g f g f
  }
  \tuplet 3/2 4 {
    e8( f g) c,-. d-. e-.
  }
  f-.-\markup {\italic dolce} r g-. r a-. r b-. r c-. r es-. r d-. r c-. r
  b2(\f \acciaccatura {b'16 c} d4. c8) b4-. a-. g-. f-.
  es2(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {g16 a h} c4. b8) a4-. g-. f-. es-.
  d-. b'2->\f a4->~ a g2-> f4->~ f es2-> d4->~(
  d8 c) es-. d-. c-. b-. a-. g-. fis1
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    g8-. d'( e! fis g a) b-. a-. g-. f-. e-. d-.
  }
  cis1
  \once\override Slur.positions = #'(2 . 1)
  d,2( \acciaccatura {d'16 e} f4. e8) d4-. c-. b-. a-.
  \once\override Slur.positions = #'(3 . 1)
  g2( \acciaccatura {cis16 d} e4. d8) cis4-. b!-. a-. g-.
  f d'2\ff c8\trill b16( c) b4 g'2\ff f8\trill e16( f)
  e4 c'2\ff b8\trill a16( b)
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    a8( b c) b-. a-. g-. f( g a) b-. a-. g-.
    d( cis d) e( d e) f( e f g fis g)
    g( fis h a g a b a b h a h)
  }
  c r
  \tuplet 3/2 4 {
    d,( c d es d es e d e)
  }
  f4 f2( fis4~ fis8) g( a g) b( a g f!)
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    e( f d) e( g a) b( a g) f( e d)
    c( d h) c( e f) g( f e d c b)
    a( f g) a( b c) d( e f) g( a b)
  }
  c4-. d-. e-. f-. c,,2 g''\trill f4 r r2
  b2.\ff e,8\trill d16( e) f4 r r f,16( c a f)
  e2. b'''8\trill a16( b) a4 r r a,16( c f a)
  c2. e,8\trill d16( e)
  \tuplet 3/2 4 {
    f8-. a( g) f-. e-. d-. c-. b-. a-. g-. f-. e-.
    d-. b''( a) g-. f-. e-. d-. c-. b-. a-. g-. f-.
    e-. c''( b) a-. g-. f-. e-. d-. c-. b-. a-. g-.
    f-. d''( c) b-. a-. g-. f-. e-. d-. c-. b-. a-.
    g-. c( d) e-. f-. fis-. g-. e( f) g-. a-. b-.
    a-. b-. c-.
  }
  d-. r
  \times 2/3 {g,-. a-. b-.} c-. r
  \times 2/3 {f,-. g-. a-.} b-. r
  \times 2/3 {e,-. f-. g-.} a-. r
  \once\override TupletNumber #'transparent = ##f
  \tuplet 3/2 4 {
    d,( e f) g-. a-. b-.
  }
  c,-. r b-. r
  \tuplet 3/2 4 {
    a( b c) g-. a-. b-. f( g a) e-. f-. g-.
    d( e f) c-. d-. e-. b( c d) a-. b-. c-.
  }
  b4 r c r f'8-. r e-. r d-. r c-. r b-. r a-. r g-. r fis-. r
  \tuplet 3/2 4 {
    g-. b( c d c b) a( b c d c b)
    f'(-\markup {\italic dolce} g f e f e) d( e d c d c)
    a( g f es f es) d( es d c d c
  }
  a) r a''4( b e,) f8 r a,8.( c16) b8-. r e,-. r
  \tuplet 3/2 4 {
    f\f f'( g) a-. g-. f-. e-. d-. c-. b-. a-. g-.
    a-. f'( g) a-. g-. f-. e-. d-. c-. b-. a-. g-.
  }
  f4 a'8. a16 f4 r
  \bar ":|."
}

ersteIb = \relative {
  \clef treble
  \key f \major
  \time 3/4
  \override DynamicTextSpanner.style = #'none
  \changePitch {c8. c16}{
    a'([-\markup {\italic dolce} b c a b g)]
  }
  f4 r r b16(\trill a b c) d8-. d-. d16 ( c b a) g4 r r
  \changePitch {c8. c16}{
    g([ a b g a fis)]
  }
  g4
  \override TupletBracket.bracket-visibility = ##f
  \override TupletBracket.staff-padding = #'()
  \override TupletNumber.staff-padding = #'()
  \tuplet 3/2 4 {
    r8 g-.([ a-.)] b-.( c-. d-.)
  }
  f,2( \acciaccatura a8 g4) f r r
  \changePitch {c8. c16}{
    a'([-\markup {\italic dolce} b c a b g)]
  }
  f4 r r b16(\trill a b c) d8-. d-. d16 ( c b a) g4 r r
  g4(\< b a)\! g
  \tuplet 3/2 4 {
    r8 g-.([ a-.)] b-.( c-. d-.)
  }
  \acciaccatura d8 f,2( a8 g) f4 r r c2(\< cis4)\!
  d8-\markup {\italic dolce} r d( cis d cis) d2\> h4\!
  c r c8( b!) a4-. a-. a8(_\trill g16 a) c4(\cresc b a)
  g2( \acciaccatura b8 a g) g4 r r
  \changePitch {c8. c16}{
    a([-\markup {\italic dolce} b c a b g)]
  }
  f4 r r b16(\trill a b c) d8-. d-. d16 ( c b a) g4 r r
  \changePitch {c8. c16}{
    g([ a b g a fis)]
  }
  g4
  \tuplet 3/2 4 {
    r8 g-.([ a-.)] b-.( c-. d-.)
  }
  f,2( a8 g) f4
  \tuplet 3/2 4 {
    r8 e'-.( f-.) g-.( a-. b-.)
  }
  \override DynamicTextSpanner.style = #'none
  c2(\cresc cis4) d8\! r-\markup {\italic dolce} d(cis d cis)
  d2( h4) c r r gis8( a gis a gis[ a)] c4( b a) g8( fis g fis a g)
  g( c h b a g) f4( a g) f r8 f( g a)
  b16(\trill a b c) d8( c b a) g4 r r g(-\markup {\italic dolce} b a) g
  \tuplet 3/2 4 {
    r8 g-. a-. b-. c-. d-.
  }
  f,2( a16 g8.) f4 r d'8.(\> c16)\! c4 r b8.(\> a16)\!
  a4 r g8.( f16) f8\trill e16( f) g8-. r e-. r
  f4 r d8.( c16) c4 r b8.( a16)
  a4 r g8.( f16) f8.(\trill e32 f) g8-. r e-. r
  f4 f'2( fis8)( g f es d c) b4.\f b16(\trill a32 b) c8-. d-.
  es r \acciaccatura f es(d es f) d-. r f2(
  fis16)( g a g f es g es d c es c)
  b4. b16(\trill a32 b) c8-. d-. f( es) d-. c-. b-. a-. b4 r d,\p
  es8 r c r f r d( f) as-. f-. as-. f-. g( b) g-. b-. a!-. c-.
  b( a as g as f) es r c r f r d( f) as-. f-. as-. f-. as( g)
  f-. es-. d-. c-. b4 r \acciaccatura es'8 d(\f c16 b)
  a( b a g) f( g a b) a( b c d) c( b a b c d es d f es d c)
  b( c b a) b( c d es) d( es f g) f( g a b a g f e es d c b)
  a( b a g) f( g a b) a( b c d) c8-. a16( b c d es e f es d c)
  \repeat unfold 2 {d( c b a) b( f' d b) c( f es c)}
  d( b a b c d es f g a b g) f8 r r4 f( fis8) g( f es d c)
  b4. b16(\trill a32 b) c8-. d-. es r \acciaccatura f es(d es f)
  d-.\< r f2( fis16)\!( g a g f es g es d c es c)
  b4. b16(\trill a32 b) c8-. d-. f( es) d-. c-. b-. a-.
  b4 r d'8.\f d16 d4-. d-. d-. \acciaccatura c8 b a16( g) g8 r c8. c16
  c4-. c-. c-. \acciaccatura b8 a( g16 f) f4-. c8\trill h16( c)
  f4( a, h) d( c) c8\trill h16( c) a'4( a, h) d2.(\p c4 h b)
  \changePitch {c8. c16}{
    a([ b c a b g)]
  }
  f4 r r b16(\trill-\markup {\italic dolce} a b c) d8-. d-. d16 ( c b a) g4 r r
  \changePitch {c8. c16}{
    g([ a b g a fis)]
  }
  g4
  \tuplet 3/2 4 {
    r8 g-.([ a-.)] b-.( c-. d-.)
  }
  f,2( a8 g) f4
  \tuplet 3/2 4 {
    r8 f'-.( g-.) a-.( b-. h-.)
  }
  \override DynamicTextSpanner.style = #'none
  c2(\< cis4)\! d8 r d(cis d cis)
  d2(\> h4)\! c r r gis8(-\markup {\italic dolce} a gis a gis a)
  c4( b a) g8( fis g fis a g)
  \once\override Slur.positions = #'(1 . 1)
  g( c h b a g) f4(\< a g)\!
  f r8 f( e) es d d'4( c8 b a) fis8.( g16) g4 r g( b a) g
  \tuplet 3/2 4 {
    r8 g-. a-. b-. c-. d-.
  }
  f,2 \acciaccatura a8 g4 f8 r c'16( a f c) a'( f c a)
  g( b e g b a g f e d c b) a( c f a) c( a f c) a'( f c a)
  g( b e g b a g f e d c b) a( c f g a g f e d c b a)
  g( a b a g f e d c b a g) f( a c f a c f a c8) r
  as16( f d h) f( h d f) as( f d h) as'(\f f d h) g( h d f) as( g as g)
  \repeat unfold 3 {as( f d h)} c( d c h c d es e f g a h
  c8)\p c-. c-. c-. c-. c-. c2.-> c8-. a-. f-. c-. a-. f-.
  c2.~ c8 f,16(\f g a b c d e f g a)
  \once \override Slur #'eccentricity = #2.0
  b( c d e f g a b c a f c)
  d( e f fis g a b a g f e d) c8-. f16( a) c8-. a-. g-. f-.
  g2.\trill f4 r d8.(\> c16)\! c4 r b8.(\> a16)\! a4 r g8.( f16)
  f8._\trill e32( f) g8-. r e-. r f4 r d''8.(\> c16)\!
  c4 r b8.(\> a16)\! a4 r g8.( f16) f8\trill e16( f) g8-. r e-. r
  f4\p r e8\trill d16( e) f4 r e8\trill d16( e) f4 r
  e8\trill d16( e) g2. f4 r r
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET ZWEI %%%%%%%%%%%%%%%%%%%%
ersteIIa = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  c'2.\f g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-.
  g, r r e'8.(-\markup {\italic dolce} f16) g4-. g-. g-. g-.
  h,2( c8) r e8.( f16) g4-. g-. g-. g-. h2
  \changePitch {c16( c8) c16}{
    d c r h a r fis g r a f r dis e r g h, r
  }
  c2.\f g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-. g, r r2
  r8 c,,\p e c e c e c \acciaccatura g' f(\trill e16 f) g8-. f-. e4 r
  r8 c'-. e-. c-. e-. c-. e-. c-.
  \acciaccatura g' f(\trill e16 f) g8-. f-. e-. r f,-. r e-. r f-. r g-. r g,-. r
  c'4\f c,4.( d16 e f g a h) c8( d16 e f g a h) c8-. c-. c-. c-.
  c4 d,,4.( e16 fis g a h c)
  d(\trill cis d e) fis(\trill e fis g) a(\trill g a h) c8-. c-.
  \changePitch {c16( c) c-. c-.}{
    h a h c d c h a g fis g a h a g fis e dis e fis g fis e d c h c d e d c h
  }
  a8 c'4-> h-> a-> g8
  fis4-. d,-. d''2( cis4) g8. g16 g8\trill fis16( g) a8-. g-.
  fis4-. d,-. d''2(-> cis4) g8. g16 g8\trill fis16( g) a8-. g-.
  fis4 d8. d16 d4 r
  h2~-\markup {\italic dolce} h8 c16( h a8) g-. e'-. r d-. r c-. r h-. r
  \once\override Slur.positions = #'(1 . 1)
  a(\cresc h c d c h a g) fis4 r d' r
  d2~\f d8 e16( d c8) h-. g'-. r fis-. r e-. r d8.(\< g16)\!
  g2( fis8) a16( g fis g a h)
  \changePitch {c8-. c16( c)}{
    c c h a a g fis fis e d d c
  }
  \repeat unfold 2 {
    h( d g h) a( g fis g) a( fis d a) c'( a fis c)
  }
  h( d c h) c( d e fis) g(\trill fis g a) h8 r
  e,16(\trill dis e fis) g8 r c,16(\trill h c d) e8-. r r
  \once\override Slur.positions = #'(1 . 1)
  e(\cresc fis gis a h c e,) cis( d) d4.\( dis8
  \times 2/3 {e( fis g)\)} g4(\> g,2) h8(\! a)
  \repeat unfold 2 {g4-. d-. fis-. d-.} g8-. g-. a-. a-. h-. d-. g,-. h-.
  r c e c r e, g e c4 r r2 r4 d16(\f fis a d) fis( g a g) fis( e d c)
  h( d c h c d e fis g a h c d c h c) d( c h c d c h a g fis e d c h a g)
  a1\trill g8 r d''\p r h r g r d r h r g r d r
  h r h''\trill \cresc a16( h) c4.( a8)
  h-. r d-. r h-. r g-. r d-. r h r g r d r
  h r h''(\trill a16 h) c8-. c-. a-. a-. d( h) h-. h-. c( a) a-. a-.
  \once\override TextScript.extra-offset = #'(2.5 . 2.5)
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  }
  h2(\p-\markup {\italic dolce} \acciaccatura {c16 h a h} c4. a8)
  h2( \acciaccatura {c16 h a h} c4. a8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert SpacingSpanner.strict-grace-spacing
    \unset Score.proportionalNotationDuration
  }
  h4 g8.\f g16 g4 r
  \bar ":|."
  \break
  g,2.\f d8.( g16) b2. g8.( b16)  d4-. b8.( d16) g4-. b-. a,,1\f
  a''2(\p\> gis4)\! r g!2(\> f4)\! r
  \once\override Slur.positions = #'(1 . 1)
  e8( b' g e) d-. r cis-. r
  d4 r d,2~\f d4 a8.( d16) f2~ f4 d8.(f16) a8-. r a'4(\>
  gis8)-.\! r f-. r e-. r d-. r r c-. e-. a,-. r g-. fis-.a-.
  r gis-. e-. gis-. r a-. cis-. e-. g2(\> fis4)\! r f!2(\> e4)\! r
  r8 c-. f-. as-. r as-.\> g-. f-.\! r e-. g-. c,-. r c-. a-. f-.
  e2. gis8.( h16) e4 h8.( e16) gis4-. h-. d r r d,8.( e16)
  f8-. r f-. r f-. r f-. r a,2( gis8) r d'8.( e16)
  f8-. r f-. r f-. r f-. r as,2( g8) r d'8.( e16)
  f8-. r f-. r f-. r f-. r c2( h8) r d8.(\p e16)
  f8 r h,8.( c16) d8 r d,8.( e16) f8 r r4 r r8 g,16(\ff a32 h)
  c2. g8.( c16) e2. c8.( e16) g4-. e8.( g16) c4-. e-.
  g, r r c16(\trill\f h c d) e( f g f) e( d c h) c( d e d) c( h a g)
  f( e d e) f( d g f) e( g a h) c( h c d)
  e( g f e) d( f e d) c( e d c) h( c d e)
  f( g f e) d( e f g) e( f g e) f( g a f)
  e( c g e) f( a c f) g,( c e g) g,( h d f)
  e4 r r es8.( f16) g8-. r g-. r g-. r g-. r
  h,2( c8) r as'8.( b16) c8-. r c-. r c-. r c-. r
  e,2( f8) r c8.( d16) es8 -. r es-. r es-. r es-. r
  fis1(\cresc g4) g,4.(\f a16 h c d e fis)
  g(\trill fis g a) h(\trill a h c) d4 g,( fis) d,~( d16 fis g a h c d e)
  fis(\trill e fis g) a(\trill g a h) c4 fis,( f!)
  \once\override Slur.positions = #'(1 . 1)
  g,,~( g16 fis' g a h c d e)
  f!(\< d e f g a h c h c d c h a g f\! e8) r c16( d e f e f g a g a h c
  h a g fis g a h a g fis e d c h a g) fis8 c''4-> a-> fis-> c8
  h16( g a h) c( a d c) h( g a h c d e fis) g8-. g,16( d) h8-. d16( h) g4 r
  \bar "||"
  \once\override TextScript.extra-offset = #'(2.5 . 2)
  e''2~\p-\markup {\italic espressivo} e8 f16( e d8) c-. a'-. r g-. r f-. r e-. r
  d2~ d8 r g,16( a h c) d4 r g, r
  g'2~ g8 a16( g f8) e-. c'-. r h-. r a-. r g8.( c16)
  c2( h8) g,16( a h c d e) f( g a g) f( e d c) h( c d c) h( a g f)
  \repeat unfold 2 {e( g c e) g( e c g) f( d h g) h( d g f)}
  e( g c e) g( e d c) h( c d e f g a f) e( g f e f g a h) c8-. d-. e-.\noBeam r
  a,-. h-. c-.\noBeam r f,-. g-. a-.\noBeam r r a,( d cis e d) f-. a-.
  a(\trill g) g4. d'16( c h a g f) e( d c h) c( d e f) e( f g a) g( a h c)
  d,1\trill c8 r e16(\p d c h) a8-. cis-. d-. c-. h-. g-. a-. h-.c-. h-. a-. g-.
  f-. r d-. r g-. r g,-. r g''2(\> fis4)\! r f!2(\> e4)\! r
  \once\override Slur.positions = #'(1 . 1)
  d8(\> a' f d)\! cis4 r8 cis
  \once\override Slur.positions = #'(1 . 1)
  d8(\> a' f d)\! cis4 r8 cis( d4) r8 cis( d4) r8 cis
  \once\override Slur.positions = #'(1 . 1)
  d( a' gis\cresc g fis f e d) d16( c h c d e f g a h c d e8) r d,1\trill
  c2.\f g8.( c16) e4 c8.( e16) g4-. c-.
  g8-. r-\markup {\italic dolce} e\trill d16( e) f8-. f-. d-. d-.
  e2.\f c8.( e16) g4-. e8.( g16) c4-. e-.
  e,8 r c8\trill-\markup {\italic dolce} h16( c) d8-. d-. h-. h-.
  g'4( e8.)-\markup {\italic crescendo} e16-. f4( d8.)d16-.
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  }
  e2(-\markup {\italic poco} \acciaccatura {f16 e d e} f4. d8)-\markup {\italic a}
  e2( \acciaccatura {f16 e d e} f4.-\markup {\italic poco} d8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert SpacingSpanner.strict-grace-spacing
    \unset Score.proportionalNotationDuration
  }
  e4\f c'16( g e c) g4 e'16( c g e) c4 c8. c16 c4 r
  \bar "||"
  \time 6/8
}

ersteIIb = \relative {
  \clef treble
  \key c \major
  \time 6/8
  \override DynamicTextSpanner.style = #'none
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \partial 8 g''8-.
  g( c) g-. f4( e8) f-.-\markup {\italic dolce} g-. gis-. a-. r d,-.
  e( g) c,-. \acciaccatura d c( h) c-. e4.( d8) r g
  g( c) g-. f4( e8) f-. g-. gis-. a-. r d,-. e( g) c,-. d( f) h,-.
  c4 e16( d) c8 r g'\p f4( e8 d4 c8) a'4( e8 f4 a8) g4.( e) c( h8) c-. d-.
  \once\override Slur.positions = #'(1 . 1)
  \once\override Slur.eccentricity = #1
  e4.( a4 cis,8) d4( e8 f4 h,8) c!4( e8) h4( d8)
  c-.\f g'-. g-. g-. g-. g-. g4.~ g8 a-. h-.
  \once\override Slur.positions = #'(1 . 1)
  c4.( g8) r g
  g( a g) \acciaccatura g f( e f) dis4( e8) r g-. g-.
  g8.( a16 g8) g-. a-. h-. c fis,( g) c-. e,-. g-. c,4 d32( c h c) e4( d8)
  c4 r8 r4 r8
  c'(\f e) g,-. c-. e,-. g-. c,( e) g,-. c-. e,-. g-.
  c,-. h16-.\< c-. d-. e-. f-. g-. a-. h-. c-. d-.
  e-. f-. g-. a-. h-. c-.\! g8-. r f16\trill e32( f) e4 r8 r4 r8
  c'(\f e) g,-. c-. e,-. g-. c,( e) g,-. c-. e,-. g-.
  c,-. h16-.\< c-. d-. e-. f-. g-. a-. h-. c-. d-.
  e-. f-. g-. a-. h-. c-.\! g,,8-. r h''16\trill\f a32( h) c8-. c-. c-. c-. r r
  c,4._(-\markup {\italic dolce} \acciaccatura c8 h a h) a4 r8 r4 r8
  \once\override Slur.positions = #'(1 . 1)

  e'4.( \acciaccatura e8 d c d) c4 r8 r4 c8
  \repeat unfold 2 {
    \once\override Slur.positions = #'(1 . 1)
    f4.( e8) g-. e-.
  }
  dis2.( e4) r8 r4 r8 R2. e8-.\f a-. c,-. e-. a,-. c-. e,4 r8 r4 r8
  a'-.\f c-. e,-. a-. c,-. e-. a,(\p c a) g4. f8( a f) e4. d8( f d) c4( h8)
  a4 r8 r4 f''8
  \once\override Slur.positions = #'(1 . 1)
  f4.( a8 g f e4) r8 r4 g8 g4.( b8 a g) f4 r8 f-. g-. a-.
  e( f cis d a c) h\noBeam \times 4/6 {g16(\f a h c d e)} f4.->
  e8-.\f g-. c,-. e-. g,-. c-. h-.\noBeam
  \once\override TupletNumber #'transparent = ##t
  \times 8/9 {g32( a h c d e f g a)} h4.(\ff
  c8) e-. g,-. c-. e,-. fis-. a( g) r
  \changePitch {c16( c) c-. c-. c-. c-.}{
    g, a h c d e f e d c h a g f e d c h c d e f g a h c d h c e f e d c h a
  }
  g-. f-. e-. d-. c-. h-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    c d e f g a h c d h c b a c f e d c h d g f e d c e a g f e d cis d e f g
  }
  \changePitch {c8-. c-. c-. c4( c8)}{
    e g e d c a' c a g f e g e d c a' c a g fis h d h a g
  }
  fis4 r8 a16( g) fis-. e-. d-. c-.
  \changePitch {c8-. c-. c-. c4( c8)}{
    h d h a g d' f! d c h f' a f e d h' d h a g~
  }
  g f-. d-. h-. g-. f-. d16( h) c-. d-. e-. fis-. g( a) h-.c-.d-.e-.
  f4-. r8 r4 e8\p f4( e8 f4 e8) f2.~ f4( fis8 g4)-\markup {\italic dolce} g8-.
  g-. c-. g-. f4( e8) f-. g-. gis-. a r d,-.
  e-. g-. e-. \acciaccatura d c h c e4.( d8) r g-.
  g-. c-. g-. f4( e8) f-. g-. gis-. a r d,-. e( g) c,-. d( f) h,-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    c\f d e d c h a g f e d c h d g a h c d c h a g f
    e g a h c d e g f e d c h c d c h a h a h f e d
    c e f g a h c g f e d c h d g a h c d c h a g f
  }
  e4-. r8 r c'-. e, g-. c,-. e-. g,-. g'-. f-. e4 r8 r4 r8
  e'-.\f g-. c,-. e-. g,-. c-. e,4 r8 r4 b''8(\p a4 g8 fis4 d8) f!4.( e)
  \once\override Slur.positions = #'(1 . 1)
  d( \acciaccatura g8 f e d) e4 r8 r4 b'8( a4 g8 fis4 d'8) h!4.( c)
  \once\override Slur.positions = #'(1 . 1)
  d,( \acciaccatura g8 f e d) c4 r8 r g'-. g-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    g\f f e d c h a g fis g a h
  }
  c4-. r8 r g'-. g-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    g f e d c h a g fis g a h c e, f! g a h c d es e f fis
  }
  g8-. c-. g-. f!4( e8) f-.\cresc g-. gis-. a-. h-. c-.
  c( c,4~ c e16 d) c8-.\f e-. e-. e-. e-. e-.
  \acciaccatura {f16 e d} e8( g) c,-. c-. c-. c-.
  \acciaccatura {d16 c h} c8( e) g,-. g-. g-. g-.
  \repeat unfold 2 {e( c) g'-.} e-. c-. e'-. c-. g-. e-.
  c-. e-. g-. c-. e-. g-. c4-. r8 r4 r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET DREI %%%%%%%%%%%%%%%%%%%%
ersteIIIa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \bar ".|:"
  f'4~\f f16( g f e) f( g a b c d e f) g( a b e, f4) r c(
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  d8.)[ \acciaccatura {e16 d c d} e f8-. f-.]
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  \once\override Slur.positions = #'(1 . 1)
  f4( \acciaccatura g8 f e16 d)
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  c4.( \acciaccatura {c16 b a b} b8
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  a4) r g2~ g8 d'16( c b a g f)
  e( g c e) g8-. r c,,16( e g c) e8-. r
  f( c) c-. c-.
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  \once\override Slur.positions = #'(1 . 1)
  c4(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {d16 c h c} d8
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  b)
  \tag #'SpacingSection {\noBreak}
  g4.( gis8 a4) r
  b2~ b8 d16( c b a g f) e( g c e) g8-. r c,,16( e g c) e8-. r
  f,16( a c f) a8-. r g,16( b) e-. g-. b8-. r
  \acciaccatura b a( g16 f) f8-. f-. \acciaccatura g f( e16 d) d8-. d-.
  c8.( f16) a,4.( c8 b g)
  \acciaccatura b' a( g16 f) e( f g f) \acciaccatura g8 f( e16 d) cis( d e d)
  c!8 d16( e f g a b) c-. a( b) g( a) f( g) e-.
  f( g a g f e d c) h( c d c) f( c a' f)\tag #'SpacingSection {\noBreak}
  c(d c b!) a4. g16( a) \acciaccatura c8 b( a16 g)
  f8-. c-. a-. r c-. a-. f-. r b( c) a-. c-. a( c) f-. a,-.
  b( f') d-. f-. b,( f') d-.b-. g( e' g e) f,( a c f) b,( d g d) h( d g, h)
  \repeat unfold 2 {c( g' e g)} \repeat unfold 2 {h,( d) h-. d-.}
  c( g') e-. g-. c,( g') e-. c-. a( f') d-. f-. a,( g') e-. g-.
  \repeat unfold 3 {a,( f') d-. f-.} a,( g') e-. g-.
  f( a) f-. a-. fis( a) fis-. a-. g( d) h-. d-. h( d) g,-. h-.
  c( g) d'-. g,-. e'( g,) c-. e-.
  \tag #'SpacingSection {\noBreak}
  g4-. r g-. r g-. r r2
  g'2( e8) \acciaccatura f e16(d) e8-. f-. a( g) g4.
  \once\override Slur.positions = #'(1 . 1)
  e8( f fis)
  g8-. r gis-. r a-. r e-. r f4~ f16 g( f e d4) r
  f2( d8) \acciaccatura e d16( cis) d8-. e-. g( f) f4. d8( es e)
  f8-. r fis-. r g-. r d-. r f!4( e8) r e( f16 g) f8( e)
  \acciaccatura e d4( c8 h) c4-. d-. g,2 e'8( f16 g) f8( e)
  \acciaccatura e d4( c8 h) c4-. d-. g,2 b4 c
  f,2 f'16(\trill e f g) a8-. a-. a( g f[ e)] e\trill d16( e) f8-. d-.
  c4 r r2 h16(\trill a h c) d(\trill c d e) f8-. h,-. h-. h-.
  g'8.( e16) c4 r2 h16(\trill a h c) d(\trill c d e) f8( h,) h-. h-.
  c16(\trill h c d) e(\trill d e f) g8(\> b,) b-. b-.\!
  f'(\> as,) as-. as-.\! es'(\> fis,) fis-. fis-.\! g4. c'8 h( g f d)
  c( e g c) \acciaccatura c h( a16 g) \acciaccatura g8 f( e16 d)
  c( d e f g a h c) h( d h g) f( g f d) c4.( d16 e) f8-. g-. a-. f-.
  e2 d4.\trill c16( d) c8\noBeam e( c g) e( g e c) a( c f a) c( a f a)
  \repeat unfold 2 {d,( f g f)} e16-.\noBeam g(\f a h c d e f fis g a h c h a g)
  f8-. f-. f2 f16( e d c)
  \tag #'SpacingSection {\noBreak}
  h8-. h-. h4~
  \once \override Slur.eccentricity = #1
  h16( c d e g f d h)
  c4 r e,16( g c e)g8-. e-. f4-. r d,16( g h d) f8-. g-.
  e4-. r e,16( g c e g a h c) f,4 r g,,16( h d g h d g h) c4 c,,8. c16 c4 r
  \bar ":|."
  a'2~\f a8 h16( cis d e f g) a8-. a-. a4 r2 d,2~ d8 e16( f g a b cis)
  d8-. d-. d4 r2
  \once\override TextScript.extra-offset = #'(2.5 . 2.5)
  d,16(\p-\markup {\italic dolce} e f cis) d8-. d-. d-. d-. d-. d-.
  f16( g a e) f8-. f-. f-. f-. f-. f-. f1\trill
  f8( b) f-. f-. f-. f-. f-. f-. f( c') f,-. f-. f-. f-. f-. f-.
  f16( es c a f a c es) f8-. f-. f-. f-. f2 fis
  g16(-\markup {\italic dolce} a b fis) g8-. g-. g-. g-. g-. g-.
  b16( c d a) b8-. b-. b-. b-. b-. b-. b( a) a4. e8( a  g)
  fis4 r8 g( fis f e es)
  \once\override Slur.positions = #'(1 . 1)
  d4.( es8 d es d es) d4 r8 f( e es d des)
  c4.( des8 c des c des) c4 r8. c,16\f c4-. c-. c2~ c8 d16( e f g a h)
  c(-\markup {\italic dolce} d e d) c8-. r e16( f g f) e8-. r
  g16( a b a) g8-. r
  \changePitch {c8-. c16( c)}{
    r g f e b' a g d' c b b a g b a g g f e g f
  }
  e( f e d c d c b a b a g) f4~\f f16( g f e) f( g a b c d e f)
  %\once\override Slur.positions = #'(1 . 1)
  \shape #'((0 . -0.5)(0 . 0)(1 . 1)(0 . -1)) Slur
  g( a b e,) f4-. r c(
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
  c4~ c16 d( c b a4) r g2~ g8 d'16( c b a g f)
  e( g c e) g8-. r c,,16( e g c) e8-. r
  f( c) c-. c-.
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  \once\override Slur.positions = #'(1 . 1)
  c4(
  \tag #'SpacingSection {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {d16 c h c} d8
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  b)
  \tag #'SpacingSection {\noBreak}
  g4.( gis8 a4) r
  b2~ b8 d16( c b a g f) e( g c e) g8-. r g,16( b e g) b8-. r
  \acciaccatura b a( g16 f) e( f g f) \acciaccatura g8 f( e16 d) cis( d e d)
  c!8 d16( e f g a b) c-. a( b) g( a) f( g) e( f) g( a g f e d c)
  \once\override Slur.positions = #'(1 . 1)
  h( c d c f c a' f)
  c( d c b) a4. g16( a \acciaccatura c8 b a16 g f4) r r2 r4
  \once\override Slur.positions = #'(1 . 1)
  f(~ f16 a b c d e f g)
  a( b c fis,) g4-. r8 es16( d c b a g) fis( a d fis) a8-. a-. a( c4)-> fis,8
  a( g) g4-. r8
  \shape #'((-0.5 . 0) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
  d16(\( c) b a g f\) e( g c e) g8-. g-. g( b4)-> e,8-.
  g( f) f4-.-\markup {\italic dolce} r8 f16( e d c b a)
  \repeat unfold 2 {g( b e g) b8-. e,-. f4-. r}
  d8 e16( f g a b c d c b a g f e f) e4-. c,2 c'16( b a g)
  f4 f,2 d'16( c b a) g( c e g) c8-. r e,16( g c e) g8-. r g,16( c e g) c8-. r r2
  c,2(\p a8) \acciaccatura b a16( g) a8-. b-. d( c) c4 r8 a( b h)
  c-. r cis-. r d-. r a-. r b4~ b16( c b a) g4 r
  b'2( g8) \acciaccatura a g16( fis) g8-. a-. c( b) b4-. r8 g( as a)
  b-. r h-. r c-. r g-. r a4 r a8( b16 c) b8-. a-.
  \acciaccatura a g4( f8 e) f4-. g-. c,2 a'8( b16 c) b8-. a-.
  \acciaccatura a g4( f8 e) f4-. g-. c,2( es4 f) b,2 b'16(\trill\ff a b c) d8-. d-.
  d( c b a) a\trill g16( a) b8-. g-. f4 r r2
  c16(\trill h c d) e(\trill d e f) g8( b,) b-. b-. a8.( c16) f,4 r2
  e'16(\trill d e f) g(\trill f g a) b8( e,) e-. e-.
  f16(\trill e f g) a(\trill g a b) c8( es,) es-. es-.
  b'(\> des,) des-. des-.\! as'(\> h,) h-. h-.\! c4. f8(\> e c b! g)\!
  f( a c f) \acciaccatura f e( d16 c) \acciaccatura c8 b( a16 g)
  f( g a b c d e f) e( g e c) b( c b g) f4.( g16 a) b8-. c-. d-. b-.
  a16( c d c b a g f) g2\trill f8\noBeam a( f c a c a f) d'( f d c) b( d b a)
  \repeat unfold 2 {g( c b c)} a\noBeam
  \once\override Slur.positions = #'(1 . 1)
  g'16( a b c d e f g a g f e d c)
  b8-. b-. b4. d16( c b a g f) e8-. e-. e4~ e16( f g a c b g e)
  f4~\f f16( g f e) f( g a b c d e f) g( a b e,) f4 r2
  g,16(\p a b e,) f4-. r e'8\trill\f d16( e) f4 f,8. f16 f4 r
  \bar "||"
}

ersteIIIb = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \partial 2
  \once\override TextScript.extra-offset = #'(2.5 . 2.5)
  c''8-.\p-\markup {\italic dolce} r c-. r c4(-> f8) r c-. r c-. r c4(-> a'8) r c,-. r c-. r
  \once\override Slur.positions = #'(1 . 1)
  c'4.(->\> e,8) f-. r g-. r\! c,( h b) g-.
  \changePitch {c8( c) c-. c-.}{
    a f b g a f c a a' f b g a f c a a' f b g
  }
  \once\override Hairpin.rotation = #'(-5 0 0)
  a(^\> f) c-. f-. a,( c) g-. c-.\! f,4 r
  \bar ":|.|:"
  a''8 r a r a4(-> d,8) r g-. r g-. r g4(-> c,8) r f-. r f-. r
  g( f e d) \acciaccatura c b4.( a8) c8. a16 g8 r c-. r c-. r
  c4(-> f8) r c4(-> a'8) r c,4( c'8) r
  \once\override Slur.positions = #'(1 . 1)
  \once \override Slur.eccentricity = #-0.5
  d,( b' g e) f( c) d-. f-. f,4( a8 g) f4 r
  \bar ":|.|:"
  a8(\mf b h c) d( c) r4 d8( es e f) g( f) r4
  \changePitch {c8( c) c-. c-.}{
    a f b e, f c g' b, a f' g, d'
  }
  f,8.( g32 f) e8 r a( b h c) d( c) r4 d8( es e f) g( f) r4 c'2~\cresc
  c16 a( b c b a g f e d c b a g f e) f4\! r4
  \bar ":|.|:"
  gis'8(-\markup {\italic dolce} a b a) a( d) r4 fis,8( g as g) g( c) r4 e,8( f g f)
  c'-. b4-> a-> g-> f8-. g16( f e f) e4-. r a-.\f g c2 b4~ b a \acciaccatura c,8 c'2~
  c16 b( a g f e d c b a g f e c d e) f4 r
  \bar ":|."
  \repeat unfold 3 {f,8( f') g,-. f'-. a,( f') c-. a-.} b( f') d-. b-. a4( g8) r f'4 g
  a-. r f8.([ a16 g8. b16)] a4 r c( e) f4 r r c, f, r
  \changePitch {c8( c) c-.c-.}{e' a g a f e d c h a g f'}
  \changePitch {c8( c c) c-.}{e d c b! a f g a} b-. c-. d-.b-. e-. r f-. r
  c'4_( h16 b a g) f8-. c-. g'-. c,-. a'4 r f8.([ a16 g8. b16)] a4 r a'( e) f r r c,-.
  a-. r a''-.-\markup {\italic dolce} a-.
  \repeat unfold 4 {
    \once\override Slur.positions = #'(1 . 1)
    a2.( \acciaccatura c8 b a)
  }
  \repeat unfold 2 {
    \once\override Slur.positions = #'(1 . 1)
    a4( \acciaccatura c8 b8. a16)
  }
  a4 \acciaccatura b8 a8.( g16) g4 \acciaccatura a8 g8.( f16)
  f4 \acciaccatura g8 f8.( e16) e4 \acciaccatura f8 e8.( d16)
  d4 r d8( es d c) b4(\cresc f') c4.( d16 es) d4( g) d4.( e!16 f) e4(\mf a) e4.( f16 g)
  \acciaccatura a8 g( f) f\noBeam r a4-.-\markup {\italic dolce} a-.
  \repeat unfold 3 {
    \once\override Slur.positions = #'(1 . 1)
    a2.( \acciaccatura c8 b a)
  }
  \repeat unfold 2 {
    \once\override Slur.positions = #'(1 . 1)
    a4( \acciaccatura c8 b8. a16)
  }
  a4 \acciaccatura b8 a8.( g16) g4 \acciaccatura a8 g8.( f16)
  f4 \acciaccatura g8 f8.( e16) e4 \acciaccatura f8 e8.( d16)
  d4 r f8.[\f f16 a8. a16] h,4-. g' r f8.(\p g16) f4( e8) r
  \tuplet 3/2 4 {
    b'8-.\f g-. e-. c-. g-. e-.
  }
  c4-. g''-. r b,8.(\p c16) b4( a8) r f'4-.\f\cresc f-.
  \once\override Score.MetronomeMark.extra-offset = #'(5.5 . -2)
  \tempo "Adagio"
  \acciaccatura {f16 g}
  \once\override Slur.positions = #'(1 . 1)
  as4.(\!\fermata-\markup {\italic "a piacere"} g16 f)
  \acciaccatura {e!16 f g} f8( es16 des) des( c) c( h)
  \once\override Slur.positions = #'(1 . 3)
  c8.(\trill h32 c \acciaccatura {h c d} c8) r\fermata
  \tempo "Allegro"
  c8-.-\markup {\italic dolce} r c-. r c4(-> f8) r c-. r c-. r c4(-> a'8) r c,-. r c-. r
  \once\override Slur.positions = #'(1 . 1)
  c'4.(->\> e,8) f-.\! r g-. r c,4-. r c8-. r c-. r c4(\trill f8) r c-. r c-. r
  c4(\trill a'8) r c,-. r c-. r c'4.\> a16( f) c8-.\! r e-. r
  \tuplet 3/2 4 {f8(\f a) g-. f( e) d-.}
  \override TupletNumber #'transparent = ##t
  \changePitch {\times 2/3 {c8( c) c-.}}{
    cis e f g f e f a e f e c h d e f g f e g e c g b! a f g a b c b d c b c a g b g f a f
  }
  c8-. r g''16( e c b)
  \changePitch {c8-. c16( c)}{
    a f' c a c a f c' a f a f c a' f c f c
  }
  \tuplet 3/2 4 {a8( c f) a-. c-. a-. b( a g) b-. c-. b-.}
  a r \tuplet 3/2 4 {b-. f-. d-. c( b a ) g-. c-. g-.}
  \stemDown
  a f''( e es)
  \stemNeutral
  \once\override Slur.positions = #'(1 . 1)
  \once \override Slur.eccentricity = #-1
  d( b' g e) f( c) d8.( e32 f) f,4( a8 g) f4 r c'4-.-\markup {\italic dolce} c-.
  \repeat unfold 2 {
    \once\override Slur.positions = #'(1 . 1)
    c2.( \acciaccatura e8 d c)
  }
  \repeat unfold 2 {
    \once\override Slur.positions = #'(1 . 1)
    c4( \acciaccatura e8 d8. c16)
  }
  c4 \acciaccatura d8 c8.( b16) b4 \acciaccatura c8 b8.( a16)
  a4 \acciaccatura b8 a8.( g16) g4 \acciaccatura a8 g8.( f16)
  f4\f f, r8 d''-.\f g-. f-. e4 f2 e4 f8( c) f-. e-. d-. c-. b4~
  b8 c-. a4. b8 g\trill f16( g)
  \changePitch {c8 \acciaccatura c c16( c) c8-. c-. c-. c-. c-. c-.}{
    f b a g a b c g c b a b a g a b c g c b a b' a g a b c g c b
  }
  a c16( b)
  \changePitch {\acciaccatura c8 c( c16 c)}{
    b a g f f e d c c b a g
  }
  a8 c16( b)
  \changePitch {\acciaccatura c8 c( c16 c)}{
    b a g f f e d c c b a g
  }
  f4 r c'''\p r a r r2
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET VIER %%%%%%%%%%%%%%%%%%%%
ersteIVa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \override TupletBracket.bracket-visibility = ##f
  f''2\f f, e16( d e f) g( f e d)c4-. r
  b''16(-\markup {\italic dolce} a b c d c b a g fis g a b a g f e d e f g f e d c4) r
  f2\f f, d'16( cis d e) d( cis d e) d4-. r
  \changePitch {c8. c16}{
    c!([-\markup {\italic dolce} a b g] a[ f g e)] f([ c a' f)] c'([ a f' d)]
  }
  c16( d c a) b( c b g) a( b a f) g( a g e) f8-. g16( a) b-. c-. d-. e-. f( g) a-. b-. c8-. c-.
  \changePitch {c8. c16}{
    c([ a b g)] a([ f g e)]
  }
  f4-. a-. f-. r R1 b2\f cis,4. e8 d2 r as'2 f4. as,8 g2 r h,2 d4. h8
  c-. d16( e) f-. g-. a-. h-. c( d) e-. f-. g-. a-. h-. c-.
  b!8-. a-. g-. f-. e-. d-. c-. b-.
  \changePitch {c8-. c16( c) c-. c-. c-. c-.}{
    a a' g f e d c h h' a g f e d c c' h a g f e d d' c h a g f e e' d c h a g
  }
  f-. e-. d-. c-. h-. a-. g-. f-.
  e( g) f-. e-. f-. g-. a-.-\markup {\italic dolce} h-. c( d) e-. f-. g-. a-. h-. c-.
  gis8.( a16 e8. f16 cis8. d16) \acciaccatura g8 f( e16 d)
  g8-. a-. h-. c-. c,4 \acciaccatura e8 d4
  \changePitch {c8-. c16(c)}{
    c e c g c g e g e
  }
  c8-. r e-. r \times 2/3 {e-. g-. c-.} e-. r c-. r d-. r \times 2/3 {d-. f-. e-.} d-. r d,-. r
  g4 r r \times 2/3 {g8-. a-. h-.} c-. r \tuplet 3/2 4 {c-. e-. c-. a-. c-. a-.} f-. r
  \tuplet 3/2 4 {r e-. g-. c-. e-. c-. a-. c-. a-.} f-. r e r e, r f r \times 2/3 {c''8-. a-. f-.}
  e8-. r \times 2/3 {c'-. g-. e-.} d-. r \times 2/3 {d-. g-. f-.} e4 r g'~
  \tuplet 3/2 4 {
    g8 f-. e-.
    \override TupletNumber.transparent = ##t
    d( c) h-. c-. e-. g-. c( h a) g-. a-. e-.
  }
  g8.( fis16) f8-. r f4~
  \tuplet 3/2 4 {
    f8 e-. d-. c( h) a-. g-. a-. h-. c-. d-. e-. f-. fis-. g-.
  }
  f!8. ( dis16) e8 r
  \repeat unfold 2 {c'4~ \tuplet 3/2 4 {c8 a-. f-. fis( g e) c-. e-. g-.}}
  \once\override TextScript.extra-offset = #'(-3 . 0)
  \times 2/3 {b(-\markup {\italic dolce} as) as-.} as-. r
  \times 2/3 {g( fis) fis-.} fis-. r \times 2/3 {g( f) f-.} f-. r
  es( g) g4. c8 c c c2(
  \tuplet 3/2 4 {h8) d-.c-. h-. a-. g-. c( g e) a-. f-. d-. g( e c) f-. d-. h-.}
  c r c-.-\markup {\italic dolce} c-. c-. c-. c-. c-.
  d(->\trill c)\> c-. c-.\! c-. c-. c-. c-.
  d(->\trill c)\> c-. c-.\! d(->\trill c)\> c-. c-.\!
  a16( c\cresc f e d c h a) g( c e c) h( g a h)
  c8-\markup {\italic dolce} r e-. e-. e-. e-. e-. e-.
  f(->\trill e) e-. e-. e-. e-. e-. e-.
  f(\trill\> e) e-. e-.\! f(\trill\> e) e-. e-.\!
  \acciaccatura {f16 g} a4.(\ff
  \once\override TextScript.extra-offset = #'(-3.5 . -1)
  g16-\markup {\italic dolce} f) e4-. d8\trill c16( d)
  \once\override DynamicTextSpanner.extra-offset = #'(3 . 0)
  c2(\cresc c') c4(\ff b16 a g f) e8-. e-. e-. e-. f16( g f e) f8-. fis-. g16( a g fis) g8-. gis-.
  a8.( g16 f e d c) h8-. h-. h-. h-. d2( c4) r
  \bar ":|."
  \override TupletNumber.transparent = ##f
  c,4\f r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8.[ c16 e8. c16]
  h2.(\p d4) f2.( h,4)
  c4\f r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8.[ c16 g8. e16]
  f16(\p g f e) d8-. d-. d16( e d c) h8-. h-. h16( c h a) g8-. g-. g16( a h c d e f g)
  e4-. r c'2~ c8 g( a g f e d c) a'( g fis g) b4.( a8)
  \acciaccatura a g4.( f8) \acciaccatura f e4.( d8) \acciaccatura e d( cis) a'2 g8( e)
  d( cis) a'2 g4 g8( f e f) d16(\trill cis d e) f(\trill e f g) a4. a8 gis16( a b a g f e d)
  g8-. e cis2 cis16( d e f) e( f g a g f e d) cis( d e f g e a g) f4 a2 g8( f)
  e( d) d4~ d16( f e f g f e d) a'2\f a, g4 b16( a g f) e4 r a'2\f a, e16( gis h c) d( c h a) gis4 r
  e''2\f g,! f16( e f g a g f e d cis d e f e d c) b( a b c d c b a g f e f g a b g)
  a8 a'4 b a8 g16( f e d) e1\trill d4( d,8 e) f4. fis8 g4. a8 b4. h8
  c16( d e f g f e d c h c d e d c b) a( g a b c b a g f e f g a g f e
  d4) b'8-. c-. d4. c8 b4. a8 g4. h8
  c4\f r8. c32( d) e4 r8. e32( f) g4 r8. \times 2/3 {g32( a h)} c8-. r e,-. r
  f16(\p g f e) d8-. d-. d16( e d c) h8-. h-. h16( c h a) g8-. g-. g16( a h c d e f d)
  e2.( c4 b g e c) f'2\f f, e16( d e f) g( f e d)c4-. r
  b''16(-\markup {\italic dolce} a b c d c b a g fis g a b a g f) e( d e f g f e d) c4 r
  f2\f f, d'16( e d cis) d( e d cis) d4-. r
  \changePitch {c8. c16}{c!([-\markup {\italic dolce} a b g)] a([ f g e)]}
  f8-. g16( a) b-. c-. d-. e-. f( g) a-. b-. c8-. c-.
  \changePitch {c8. c16}{c([ a b g)] a([ f g e)]} f4 r r2
  \bar "||"
  es2\f es,4. es8 d1 as''2 f,4. f8 e16( g f e) f-. g-. a-. h-. c( d) e-. f-. g-. a-. h-. c-.
  b!8-. a-. g-. f-. e-. d-. c-. b-. a16( b a g) f8 r f' r c r a1
  \changePitch {c8 c16( c) c-. c-. c-. c-.}{
    b\noBeam d c b\mf a g f e\noBeam e' d c b a g f\noBeam f' e d c b a g\noBeam g' f e d c b
  }
  a( f) g-. a-. b( c) d-. e-. f g a b c b a g gis( a b a) e( f g f) cis( d e d) c( b a g)
  c8 r c'4.( h8 b a) fis( g) b-. d-. f,4 e8(\trill d16 e) f4 r r2
  \tuplet 3/2 4 {a,,8( c f) a( f c) a( c f)} a r
  \override TupletNumber.transparent = ##t
  \tuplet 3/2 4 {d,( f b) d(b f) d( f b)} d-. r
  \tuplet 3/2 4 {e,,( g c) e( c g) e( g c)} e r
  \repeat unfold 2 {\tuplet 3/2 4 {f,( a c) f c a} f r r4}
  \tuplet 3/2 4 {f'8( a c) f c a} b r \times 2/3 {f' d b} a r
  \tuplet 3/2 4 {a' f c b( a b g f e)} f r r4 c''4.(\f b16 a)
  \once\override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {g8( f e) f-. a-. g-. f-. e-. d-. c-. b-. a-.} c4( b8) r b'4.( a16 g)
  \once\override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {fis8( g a) g-. f-. e-. d c h c-. g-. c-.} b4( a8) r
  f'\trill e16( f)
  \once\override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {b8-. f-. d-. c( f) a-.} c r
  f,\trill e16( f)
  \once\override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {b8-. f-. d-. c( f) a-.} c-. r des,16( es des c) des8-. r
  h16( c h a) h8-. r b16( c b a) b8-. r as2 f'~ f4( fis g4. e8)
  \once\override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {f!( c a) b-. c-. d-.} f,4( g8\trill f16 g)
  f8 r f'-.-\markup {\italic dolce} f-. f-. f-. f-. f-.
  g(->\trill f) f-. f-. f-. f-. f-. f-. \repeat unfold 2 {g(->\trill f) f f}
  e( d) c-. b-. b(_\trill a) a(_\trill g)
  a r a'-.\f a-. a-. a-. a-. a-. b(->\trill a) a-. a-. a-. a-. a-. a-.
  \repeat unfold 2 {b(->\trill a)\> a a\!} \acciaccatura {b16 c} d4.( c16 b) a4-. g8\trill f16( g)
  f2\f f4. f8 fis2 fis4. fis8 g16(\trill fis g a) b(\trill a b c) d( c b a g f e d
  c8) r c'16( a f c) a( f c a) f( a c a) b8-. d-. f-. b-. d-. f-. b-. d-. c,,2 g''\trill f4 r r2
  g8.(\ff f16 es d c b) a8-. a-. a-. a-. b16(\p c b a) b8-. h-. c16( d c h) c8-. cis-.
  d8.( c!16 b a g f) e8-. e-. e-. e-. f-.\f g16 a b-. c-. d-. e-. f( g) a-. b-. c-. a-. b-. c-.
  d8.( c16 b a g f) e8-. e-. e-. e-. e2(\> f4)\! r
  \bar "|."
}

ersteIVb = \relative {
  \clef treble
  \key f \major
  \time 6/8
  \override DynamicTextSpanner.style = #'none
  \partial 8 c''8 f4-\markup {\italic dolce} f8 f8\trill e( f) g4.~ g8 a-. b-.
  c( gis a) c-. b-. a-. g!\trill fis( g) b-. a-. g-. f!4 f8 f\trill e( f)
  g4.~ g8 a-. b-. c( b a) g-. b-. e,-. f16(\mf a) g-. f-. e-. d-. c( d) c-. b-. a-. g-.
  f4 f8 f8_\trill e( f) g4.~ g8 a-. b-. c( gis a) c-. b-. a-.
  \acciaccatura a g( fis g) b-. a-. g-. f!4 f8 f(_\trill e f) g4.~ g8 a-. b-.
  c( f) a,-. \acciaccatura c b( a g) f-. c-. a-. f-. r c''
  c'16(\f b) a-. g-. f-. e-. d( c) h-. c-. d-. e-. f8-. g-. gis-. a-. b-. h-.
  c16( b!) a-. g-. f-. e-. d( c) h-. c-. d-. e-. f8-. g-. gis-. a-. b-. h-.
  c16( b!) a-. g-. f-. e-. d( c) h-. c-. d-. e-. f8 r16 c( e f) g8-. r16 c,( f g)
  a8 r16 c,( g' a) b8 r16 c,( a' b) c4 r8 r f,\p a c4 r8 r4\fermata c,8
  f4-\markup {\italic dolce} f8 f8\trill e( f) g4.~ g8 a-. b-.
  c( b a) \acciaccatura c b-. a-. g-. f r f\f f( c) c-. c( a) a-. a( f) f-.
  f( c) c-. c( a) a-. a-. c-. f-. f4( g8) gis( a) a' a( f) f-. f( c) c-. c( a) a-.
  a( f) f-. f( c) c-. c-. f-. a-. a4( b8) h( c) c-. a'4.(\f g8)\> c16( g e c) a'4.(\!
  g8) c16( g e c) h( d g f e d)
  \changePitch {c16( c) c-. c-. c-. c-.}{
    c e c' h a g f g f e d c h a g a h c d c h c d e f e d c h a g a g f e d
  }
  c4.~ c8-\markup {\italic dolce} d-. e-. f4( d8) e4 r8 e4.~ e8 f-. g-. a4( f8) g4-. r8
  c4.~ c16 h( d c e c) f8-. f( dis) e4 r8 e4.~ e16 d( f e g f) a8-. a( fis) g4 r8
  \repeat unfold 2 {g16( e c) g-. e-. c-. h( d) g-. h-. d-. f-.}
  g( e) f-.g-.a-.h-. c( h) a-. g-. f-. e-.
  \repeat unfold 2 {d\trill cis( d) f-. e-. cis-.}
  \repeat unfold 2 {d\trill cis( d) a'-. f-. e-.} d8-.( e-. f-. fis-. g-. gis-.)
  a4.(\> g8)\! r-\markup {\italic dolce} c, \acciaccatura e d4.~ d8 h-. g-.
  c4 r8 r4 cis8( d) e-.( f-. fis-. g-. gis-.)
  a4.(\> g8)\! r c, \acciaccatura e d4.~ d8 h-. g-. \acciaccatura a' g4.~ g8 f16( e d c)
  \acciaccatura e8 d4.~ d8 c16( h a g) c4 r8 r4 r8 d'4.~\ff d8 b!-. g-. e4 r8 r4 r8 b'4.~\p b8 g-. e-.
  f4-\markup {\italic dolce} f8 f\trill e( f) g4.~ g8 a-. b-. c( gis a) c-. b-. a-.
  \acciaccatura a g!( fis g) b-. a-. g-. f!4 f8 \acciaccatura g f( e f)
  g4.~ g8 a-. b-. c( b a) g-. b-. e,-. f-. a-. c,-. f-. a,-. c-.
  f,16( a c f a f) c'( a f c a f) c( e g c e g) b( g e c b g)
  f( c a c f a) c( f a c a f) e( f g a b a) g( f e d c b) a4 r8 r4 a8\f
  cis4-. cis8-. cis( d e) d4.~ d8 e-. f-. g4-. g8-. g( a g) f4 f8 fis\trill e( fis)
  g2.(\cresc gis) a4\f r8 r4 a,8\p d4 d8 \acciaccatura e d( cis d) d4.(-> cis4) a8
  f'4-. f8 \acciaccatura g f( e f) f4.(-> e4) c!8 a'4 a8 \acciaccatura b a( gis a)
  a4.(->\cresc gis4) e8( e'4) d8-. c4-. h8 a16( h a gis g f e d cis b! a g)
  f(\f a d f a g) f( e d c b a) g( a b a g f) e( a cis e g e)
  d( cis d e f g) a( g f e d c) b( c d c b a) g( a b c d e)
  f( g a b c b) a( g f e d c) b( c b a g f) e8 g'-. e-. f-. f,-. g-. a16( b a f g e)
  f4 r8 f'-. g-. a-. c,4.~ c8(-\markup {\italic dolce} h b) a4 r8 a-. b-. c-.
  f,4.~ f8( e es) d4 r8 g( fis f) e4 r8 c'( h b) a( g f) d'4.( c4) r8 c'( h b
  a g f) d( g f) e-. r fis(\p g) r gis( a) r gis( a) r a( b) r r r4\fermata a8( b) r r
  \tempo "Allegro"
  r4\fermata c,8 f4 f8-\markup {\italic dolce} \acciaccatura g f e f g4.~ g8 a-. b-.
  c( gis a) c-. b-. a-. \acciaccatura a g!( fis g) b-. a-. g-.
  f!4 f8 \acciaccatura g f( e f) g4.~ g8 a-. b-. c( b a) g-. b-. e,-.
  f16( a g f e d) c( d c b a g) f( c' a f c a) f( a c a c a) \repeat unfold 2 {e( g b g b g)}
  a( f a c f a) c( a f c a f) \repeat unfold 2 {e( g c g c g)} a( c f a c f) a( f c a f c)
  e,( g c e g c) e( g b g e b) a8-. c-. f,-. \acciaccatura a g-. f-. e-.
  f8 r r f(\p g a) b r r g( a h) c r r c,( d e) f( g a) h4.( c8) r r c( d e)
  f( g a h4. c8) c,-.-\markup {\italic dolce} c-. e( c) c-. f( c) c-. fis( c) c-.
  g' r r r4
  \tempo "Adagio"
  fis8( g4) r8 r4\fermata
  \tempo "Allegro"
  r8 r4 r8 c,4.(\p h b) a8( g f) e4 c'8 e4.( f8)-\markup {\italic dolce} r c
  f4-. f8 \acciaccatura g f( e f) g4.~ g8 a-.b-. c( b a) g-. f-. e-.
  f( e es) d-. e-. f-. f4( a,8) \acciaccatura c b-. a-. g-. c4.~ c16( cis d\cresc es e f)
  \acciaccatura f8 f,4. g\trill f8\noBeam f'16(\f a) c-. a-. c( b) a g f e
  f( c) a-. f-. a-. c-. c( b) a-. g-. f-. e-. f( c) a-. f-. a-. c-. c( b) a-. g-. f-. e-.
  f8-.\< a-. c-. f-. a-. c-. f4 r8\! a4\f r8 f4 r8 r4 r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET FUNF %%%%%%%%%%%%%%%%%%%%
ersteVa = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \partial 2 a'8.([-\markup {\italic dolce} b16 g8. a16)]
  f4.( g16 a) b8-. b-. a-. a-. g16( a g fis) g8 r b8.([ c16 a8. b16)]
  g4.( a16 b) c8-. c-. b-. b-. a16( b a g)a8 r d4(\< f)\!
  c_( b16 a g f) d'( e d cis d e f d) c!4_( b16 a g f) d'8-. d-. c-. c-.
  c( h b a) c16( d b c a b g a) f4 r f8-.\p f-. g-. g-. f16( g f e) d8 r e-. e-. f-. f-.
  e16( f e d) c8 r a'-. a-. g-. g-. f2.( fis4) \repeat unfold 2 {g8 r g4( e c)}
  g'8-. f'(\cresc e) c-. d-. f( e) c-. g4 r e'8.([-\markup {\italic dolce} f16 d8. e16)]
  c4~ c16( d c h) a8-. g-. a-. h-. c16( d\cresc c h c d e f) e8.([\! f16 d8. e16)]
  d4.( d16 e) f8-. e16( g) e8-. e16( f)
  e( d cis d c h a g) e'8.([-\markup {\italic dolce} f16 d8. e16)]
  c4~ c16( d c h) a8-. g-. a-. h-.
  c16( d c h c d e f) g8-.\cresc g( fis f) e16( d f e g f e d) \acciaccatura {c16 d} d2\trill
  c4 r8. c16-\markup {\italic dolce} f4.( g16 f) e4 r8. c16 a'4.( h16 a)
  g4 r8. c16 f,4.( g16 f) e8-. r d-. r c-. r h-. r r16 c(\f c' h a g f e)  d( e d cis d e f fis)
  g( e c' h a g f e)  d( e d cis d e f fis) g( e c' h) a( g f e)  d( e f e d c h a)
  g8 r g'16( e c g) e( c g e) g( c e g) c( d e f) e( f g a)  g( a h c) h( a g f)
  e( g a g) f( e d c) d2\trill c8 r cis4( d8) r dis4( e) r h4.(\trill a16 h)
  c8 r cis4( d8) r dis4( e8) r r16 e( f e) d8 r  r16 h'\trill a( h)
  c8 h16( a) g-. f-. e-. d-. c8 h16( a) g-. f-. e-. d-. c4-. r
  \bar ":|."
  g''4.(\> h,8)\! c r g'2(\> es8 c)\! r4 as'2(\> f8 d)\! r4 f2(\> d8 h)\!
  c4. \acciaccatura {d16 c h c} d8 es4 r r8 c,( es g) c( es c g) f\noBeam d( f h) d( f d h)
  g\noBeam h,( d g) h( d h f) es16(\f g c es) g( es d c) h( c d c) c'( b as g)
  fis8-. r a-. r c,,2 b16( d g b) d( b c a) b( d g a) b( a g f) e8-. r g-. r b,,2(
  a8)\noBeam c16( f a c f a) c( a f c) a'( f c a) g2 gis a8 r cis r d r f r
  e16( a, cis e a g f e d cis d e g f e d) cis8-. e-. a4 r2 r4 a,4-. a-. a-.
  \stemDown
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  a8.([ \acciaccatura {b16 a g a} b16)]
  \stemNeutral
  c8.([ \acciaccatura {d16 c b c} d16)]
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \unset Score.proportionalNotationDuration
  }
  es4. c8
  b( h c cis) d8.([ es16 c8. d16)] b4.( c16 d) es8-. es-. d-. d-.
  c16( d c h c8) r es8.([ f16 d8. es16)] c4.( d16 es) f8-. f-. es-. es-.
  d16( es d cis) d8-.  r b'-. r d,-. r c!16( d es d c b a g) fis( a d fis) a( c a fis)
  g8 r b r d r f,,! r e!16( g c h) d( c e d) f( e g f e d c b) a( b c a) f8 r f' r a, r
  g16( h d c) h( d f e) d( c h a g f e d) \repeat unfold 2 {c( e g a g f e d)}
  c( h c d e f g a) g( a b! c b a g f) e(\p f g a b c d c) b( a b c b a g f)
  e( f g a b c d c) b( a b c b a g f) e( f g a b h c b)  a8.([ b16) g8.( a16)]
  f4.( g16 a) b8-. b-. a-. a-. g16( a g fis) g8 r b8.([ c16 a8. b16)]
  g4.( a16 b) c8-. c-. b-. b-. a16( b a g) a8 r d4( f) c( b16 a g f) d'( e d cis d e f d)
  c4( b16 a g  f) d'8-. d-. c-. c-. c( h b a) c16( d b c a b g a
  f8) r f'-. r e-. r b'8.( g16) a8-. r f-. r e-. r b'8.( g16)
  a8\f\noBeam f16-. e-. d-. c-. b-. a-. g-. f-. e-. d-. c-. b-. a-. g-. f8-. r r4 a'8 r r4
  b8 r r4 b,8 r r4 r8 f'a f b g c c, r16 c'-.\f f-. e-. d-. c-. b-. a-. g( a g fis) g( a b h)
  c( a) f'-. e-. d-. c-. b-. a-. g( a g fis) g( a b h)
  \changePitch {c16( c) c-. c-.}{c a c' b a g f e d c b a g f e d c d c b} a8 r c''4.( a8)
  d r b,, r d'' r f r c,,-. d16-. e-. f-. g-. a-. b-. c( a) b-. c-. d-. e-. f-. g-.
  a( f c a) c'( a f c) a'( f c a) f'( c a f) g1\trill
  f8-.-\markup {\italic dolce} r f'( fis) g-. r g( gis) a-. r r4 r8 b16(\ff g) e( c b g)
  f8-.-\markup {\italic dolce} r f'( fis) g-. r g( gis) a r r4 r8 c,,16(\f e) g( c e g)
  f8 r c8. c16 g'4.\trill f16( g) a( g) f-. e-. d-. c-. b-.  a-. g-. f-. e-. d-. c-. b-. a-. g-.
  f4 r
  \bar "|."
}

ersteVb = \relative {
  \clef treble
  \key c \major
  \time 3/8
  \partial 8 g'8-\markup {\italic dolce}
  g( c h) c4( d8) e4( f8) e( d h) d( c a) d4( e8) g,4 h16( a) g8 r
  \bar ":|.|:"
  \break
  d' d( f h,) d( c e) e( g c,) e( d g) a( g fis) f!8.( e16 f d) c4 e16( d) c8 r
  \bar ":|.|:"
  \break
  %\set Timing.beamExceptions = #'()
  %\set Staff.beatStructure = #'(1 1 1)
  \set Staff.beamExceptions = #'((end . (((1 . 16) . (2 2 2)))))
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \tuplet 3/2 8 {
    g16-. a-. f-. e( g f) e-. d-. c-. d-. g-. f-.
    \override TupletNumber.transparent = ##t
    e( g f) e-. d-. c-. h-. a-. g-. c-. e-. g-. e-. g-. c-. a-. f-. d-. g-. e-. c-.
  }
  h8
  \tuplet 3/2 8 {
    d'16( h' g) fis-. c'-. h-. a-. g-. fis-. e-. d-. c-. h-. d-. g-. d-. h-. g-. c-. a-. e-.
    d-. g-. h-. g-. d-. h-. c-. d-. fis-. g,-. h-. d-.
  }
  g8-.
  \bar ":|.|:"
  \tuplet 3/2 8 {
    h,16-. d-. e-. f!-. d-. c-. h-. f''-. e-. d-. c-. h-. g'( e c) e-. c-. g-. c-. g-. e-.
    c( e g) e-. g-. c-. e-. c-. g-. fis( a c)
  }
  h8-.
  \tuplet 3/2 8 {
    d16( c h)  c( e) c-. h( d) h-. a( c) a-. h-. d-. h-. c-. a-. e-. a-. f-. d-.
    g-. e-. c-. g-. c-. e-. g,-. d'-. f-. e-. g-. c-.
  }
  c,8
  \bar ":|.|:"
  \break
  \unset Staff.beamExceptions
  e' f(-> e gis) a( gis h) c-.c-.e16( d) c8( h) h-. h-. h-. h-. h( a g!) g4( fis8)\trill e r
  \bar ":|.|:"
  \break
  e f!(\> e gis,)\! h( a a') c(\> h dis,)\! fis( e) e-. e-. e-. e-. e( d c) h4 d16( gis,) a8 r
  \bar ":|."
  \break
  \set Staff.beamExceptions = #'((end . (((1 . 32) . (4 4 4)))))
  g!32( a g f) e(\f g c e) g8-. f,32( g f d) g( e c g) e8 g'32( f d g,) c( g c e) g( c g e) a( c a f)
  g( fis g fis) g8 g32( h a g) fis( a d a) fis8-. fis32( a fis c) h( g h d) g8-. c32( g e c)
  h( d g h) d( h g d) c'( a fis d) g'( d h g) g,8-. g'16-\markup {\italic dolce} g
  \unset Staff.beamExceptions
  g( c) r c-. h-. d-. c( e) r e-. d-. f-. e( g) r c,-. a'-. f-. e16.([ g32)] d16-. h'-. g-. d'-.
  d( c) r fis,-. a-. c-. ais( h) r g-. e-. c-. h( d) r g,-. c-. fis,-. a( g) r8 h32( c h a)
  \set Staff.beamExceptions = #'((end . (((1 . 32) . (4 4 4)))))
  g(\f d g h) d8-. f!32( d h f) e( c g c) e,8 c'''32( g e c) g( e g c) e8-. c32( g e c)
  g( h d g) g,8 g''32( f e d) c( e d c) h( d c h) a( c h a) g( h d h) c8-.  a32( c a f)
  e( g e c) g8-. g'32( h d h) c( g e g) c,8-. d'16-. d-.
  \unset Staff.beamExceptions
  d( f) r g,-. a-. h-. d( c) r g-. c-. e-. a( g) r e,-. g-. c-. e16. c32 d8\noBeam g16 gis
  h a8 g! fis16( f!) e8 cis16( d) a'-. fis( g) r c,32(\trill h64 c) f16-.[ h,-.]
  \override Hairpin.to-barline = ##f
  d( c) r8 g'\p g( c e,) g( f a) e( f h,) d(\> c e,)\! g( f) d16([ h)] d4.(\> c8)\! r r
  \bar "|."
}

ersteVc = \relative {
  \clef treble
  \key f \major
  \time 6/8
  \override DynamicTextSpanner.style = #'none
  \partial 8 c''8-\markup {\italic dolce}
  \override Slur.positions = #'(1 . 1)
  \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r c f g f b r a g a g d r g} f4.( e8) r c
  \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r c f g f b r a g a b d, r e} g4.( f8) r c
  \changePitch {c8.( c16 c8) c-. c c-.}{a' h c g r e f g a e r e} d8. e16( d cis) d8-. f-. a-.
  c,!4.( h8) r g-. \repeat unfold 2 {f'8.( g16 f8) e-. r c'-.} d,-. r f-. g,-. r h-. d4.( c8) r c-.
  \changePitch {c8.( c16 c8) c-. c c-.}{c'\cresc a fis g r d b' g e f r f}
  \changePitch {\acciaccatura {c16 c} c8.( c16 c8)}{f g a f d d e f d h} d4.(\! c4) r8
  a-. c-.-\markup {\italic dolce} a-. b( g) b-. a-. c-. a-. g( e) f-. b4.~ b8 g-. h-. c4.~ c4 c8
  \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r c f g f b r a g a b d, r e} g4.( f8) r c-.
  as'8.( g16 f8) e!-. f-. g-. f4.( c8) r c c'8.( g16 e8) f-. g-. as-. c,4.~ c4 c8
  as'8.( b16 as8) as4( as8) g( b des,) c-. r as'-. b8.( c16 des8) es,-. f-. g-. b4.( as8) r r
  as,2. g f e!4. c'8( des c) b4( as8 g4 f8) e!4.( f8) c'-. as-. b4-. r8 g4-. r8 g4.( f8) r c'
  \changePitch {c8.( c16 c8) c-. c c-.}{
    f-\markup {\italic dolce} g f e! r c f g f b r a g a g d r g
  } f4.( e8) r c \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r es d es d cis r c}
  h8.( c16 h8) g'16( f\cresc e! d c h)  d4.( c8)\! b!16( g d b)
  a( c f a c a) g( f e d c b) a( c f a c f) e( c d e f d) b( c d c b a) b( a g a b h)
  c( d c b h a) g( f e d c b!)
  \changePitch {c16( c c) c-. c-. c-.}{
    a c f a c a g f e g a b a g f a c f e c d e f d c b a b c a b a g b a g f c' a f c a f a c f a c
  }
  a8-\markup {\italic dolce} r a b r h c r cis d r d
  \changePitch {c16( c c) c-. c-. c-.}{es\f f g f es d c d es d c b a b c b a g}
  f( g as a b h) c8 r cis( d) r d( es) r r r c'-. b-. a-. g-. f-. es-. d-. c-.
  \changePitch {c8-.\noBeam \acciaccatura c c16( c c c)}{
    b c b\f a b c d es d c d es f g f e! f g
  }
  es8-. r c-. d-.\noBeam g16( f es d) c8-.\noBeam f16( es d c)
  b8-.\noBeam f'16( g a b) a-. g-. f-. es-. d-. c-.
  \changePitch {c8-.\noBeam \acciaccatura c c16( c c c)}{
    b c b a b c d e d c d e! f g f e f g a b a g a b
  }
  c8-.\noBeam c16( a c a) b8-. c,-. e-. g4.( f8) r r
  \changePitch {c c-. c-.}{
    r f, f' r g, g' r a, a' r b, b' r b, b' r g, g' r e, e' r f, f' r d, f r f b r d b
  }
  c-. a-. f-. b4-. r8 f4-. r8 es4.( d8) r r
  f'( ges16-\markup {\italic dolce} g as a) b8-. d,-. d-. c4.( b4) r8
  \once\override Slur.positions = #'(1 . 1)
  c( des16 d es e f\cresc c des d es e) f( g f e f g) as4(\! h,8)
  \changePitch {c8\noBeam \acciaccatura c c16( c c c) c8-. c-. c}{
    c-. d c h c d h g' r c,-. d c h c d h g' r b,! c b a b c a f' r as, b as g as b as f' h,-.
  }
  c\f c'-. c-. c-. c-. c-. c( c,) c-. c-. c-. c-. c-. c,-. c'-. c-. c-. c-.
  \changePitch {c8.( c16 c8) c-. c c-.}{
    f-\markup {\italic dolce} g f e r c f g f b r a g a g d r g
  }
  f4.( e8) r c
  \changePitch {c8.( c16 c8) c-. c c-.}{f g f e r c f g f b r a g a b d, r e}
  \changePitch {c16( c) c-. c-. c-. c-.}{
    g f a f c a f c a f a c b d f d f d b d f d f d f, a c f a c f c a f c a
    b d f d f d b d f d f d f, a c f a c
  }
  f8-.-\markup {\italic dolce} r a-.
  \changePitch {c8.( c16 c8) c4 c8}{
    b c d f,( g) a b c e, fis g a b d, e
  }
  g4.( f8 e es) d8.( e16 f8) f-. f-. f-.
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
  }
  f4( \acciaccatura {g16 f e f} g8) a r
  c,8 d8.( e16 f8) f-. f-. f-. f4( \acciaccatura {g16 f e f} g8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
  }
  a c16(\f a) f-. c-.
  \changePitch {c16( c) c-. c-. c-. c-.}{
    cis d e f g a b c! d c b a g f e d c b a g f e d c
  }
  b8-. d-. f-. b-. d-. f-. b4. d h,,16( d) f-. g-. h-. d-. f( d) h-. g-. f-. d-.
  c8-. f,16( a) c-. f-. a-. c-. f-. a-. c-. f,-. g2.\trill
  \changePitch {c8.( c16 c8) c c c}{
    f-\markup {\italic dolce} g f e r c-. f g f c' r c, f g f e r c f g f c' r b\p
  }
  \changePitch {c8( c) c-.}{a c g a c g a c e, f a cis,} d4.( d,)
  f8\noBeam c''16(\f b) a-. g-. f-. c-. a-. f-. c-. a-. f8-. a-. c-. f-. a-. c-. f4 r8 r4 r8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%% DUET SECHS %%%%%%%%%%%%%%%%%%%%
ersteVIa = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  c'''4\f g,8.(\p c16) e,4 r8 g'16( fis a[ g f!) r32 e-.] f16([ e d) r32 c-.] h8.(\trill c16) d8-. r
  d'4\f d,,8.(\p f16) h,4 r8-\markup {\italic dolce} f''16( e) g([ f e) r32 d-.] e16([ d c) r32 h-.] c8.(\trill d16) e8-. r
  r2 c' \acciaccatura h8 a4 \acciaccatura g8 f4 \acciaccatura e8
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override Score.GraceSpacing.spacing-increment = #1.2
  }
  d4.( \acciaccatura {e16 d cis d} g f)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.GraceSpacing.spacing-increment
  }
  e4.( \acciaccatura {f16 e d e} f8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
  }
  g r r64 c,,( d e f g a h c[\cresc d e f g a h c)]
  h16([\! a)] gis32( a h a) g16([ f)] e32( f g f) e16([ d)] d32( e f fis) g( fis f e g f d h)
  c8 r e8.(\p c16) a8( a' c, a) h r g'16.( e32 g16. e32) c'8.\f( d32 e) d( c h a g fis c' fis,)
  g16-.\noBeam d( g h) c8. fis,16  g-.\noBeam h,( d g) fis( d c a)
  h-.\noBeam d( g h) d32( cis c8 a32 fis) g8-.\noBeam  g16.( a32 g16. a32 g16. a32) g2 r\fermata
  \bar "|."
}

ersteVIb = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  e''2\mf f4.\trill e16( f) g4 r8 e16( f32 g) a8-. h-. c-. d-. e-. d-. c-. h-. a-. g-. f-. e-.
  f8.( g32 a) g4-. r2 R1 d'4-. d4. d16( c h a g f) e4 r8 e16( f32 g) f8-. e-. d-. c-. h8.\trill c16 d8 r r2
  e,2-\markup {\italic dolce} f4.\trill e16( f) g4 r8 e16( f32 g) a8-. h-. c-. d-.
  e-. d-. c-. h-. a-. g-. f-. e-. f8.( g32 a) g8 r g'16(\f fis e d c h a g)
  fis8-. d-. r c'-. a-. fis-. r d-. d'4 d4.\mf e16( d c h a gis) a( c e c)  h( a) c'( a) g!4 fis8\trill e16( fis)
  g4 r16 d( e fis) g8-. a-. h-. c-. d4~ d16 h( g d) h8-. h-. h-. h-.  d( c) r16 c( d e) fis8-. g-. a-. h-.
  c4~ c16 a( fis d) c8-. c-. c-. c-. ais( h) r d( h') a!-. g-. fis-. fis4( e8) e\trill g-. fis-. e-. d-.
  d4( c8) c\trill e-. d-. c-. h-. gis( a) c-. e-. gis( a) c-. a-. g!4( fis8) r r2
  g4. d16( h) g4. h16( g) e8-. a-. a,4 r2 fis'4.\f a16( fis) d4.  fis16( d)  g8-. d-. g,4 r2
  h'16( c h a) g4 r2 g16( a g f!) e4 r2 \repeat unfold 2 {c8( d c d) h( d h d)}
  \tag #'SpacingSection { \noBreak }
  c4 r c r c r r g''8-. g-.
  g2. c8-. a-.
  \tag #'SpacingSection {\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)}
  a1\trill
  \tag #'SpacingSection {\unset Score.proportionalNotationDuration}
  g4 r d-.-\markup {\italic dolce} d-.
  \tag #'SpacingSection { \break }
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override Score.GraceSpacing.spacing-increment = #1.2    
  }
  \tag #'SpacingSection {\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)}
  d4.( \acciaccatura {e16 d cis d} a'8)
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  d,4-. d-.
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  d4.( \acciaccatura {e16 d cis d} h'8)
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  d,4-. d-.
  d8( c! h c) a( h c d) 
  \tag #'SpacingSection { \break }
  c4( h8) r d4-. d-.
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  d4.( \acciaccatura {e16 d cis d} a'8)
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  d,4-. d-.
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  d4.( \acciaccatura {e16 d cis d} h'8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  d,4-. d-. 
  \tag #'SpacingSection { \break }
  d8( c! h c) c'(\> a fis c)\!
  h16(\mf  d e fis g a h c) d( c h c d c h c) d4 r d8(-\markup {\italic dolce} cis c h) gis( a h a) g( fis g a)
  g16(\f  d e fis g a h c) d( c h c d c h c) d4 r d8(-\markup {\italic dolce} cis c h) gis( a h a) g( fis g a)
  g4. gis8-. a-. r c-. r h( a g gis) a-. r c-. r h( a g gis) a-. r-. fis-. r g-. r h-. r g-. r r4
  \bar ":|."
  \break
  g8-.\p r b-. r g-. r e-. r cis-. r e-. r cis-. r r4 f8-. r a-. r f-. r d-. r h!-. r d-. r h-. r r4
  c'4.( d16 c32 h a4) r h4.( c16\cresc h32 a gis4) r a(\! c2 dis,4) e1-\markup {\italic dolce}
  \grace d8 c2.( h8 a) gis(\cresc h) d2 h4 \grace d8 c4( h8 a) a'4.(\! h16 a)
  \tuplet 3/2 4 {gis8(-\markup {\italic dolce} f e) d( c h)} a2
  \tuplet 3/2 4 {gis8( h c) d( c h)} a2( gis8) r a'4(\p gis) r r a( gis) r r gis( g2)~ g~ g8( f e f)
  e2\mf f4.\trill e16( f) g4 r8 e16( f32 g) a8-. h-. c-. d-. e-. d-. c-. h-. a-. g-. f-. e-.
  f8.( g32 a) g4-. r2 g4-. g4. a16( g f e d c) h( a g a h c d e f e d e f g a h)
  c( h a g) c8-. h-. a-. g-. f-. e-. d-. c-. h-. a-. g-. f-. e-. d-. c8( g) g-. g-. d'( g,) g-. g-. e'4 r8
  c16( d32 e) f8-. g-. a-. h-. c-. h-. a-. g-. f-. e-. d-. c-. d8.( e32 f) e8-. g-. c-. d-. e-. f-.
  g4 r8 e-. f-. g-. a-. b-. c4 c2 b8\trill a16( b) a8 r a2 g8\trill fis16( g)
  fis4 r8 h,-. c!-. d-. e-. fis-. g4-. r8 g,-. a-. h-. c-. dis-. e r e2 d!8\trill c16( d)
  c8 r c'2 b8\trill a16( b) a8-. a-. r g-. r f-. r e-. e( d4 es4 d c8)
  \repeat unfold 2 {h16( d g h) a( g fis g) c( a fis d) c( a d c)}
  \once\override Slur.positions = #'(1 . 1)
  h( c h a g a h c e d c h c d e fis) g4 r r8 fis-.\p g-. fis-. g4 r r8 fis,-. g-. fis-.
  g4 r8 g16(\f a32 h) c8-. d-. e-. f-. g4~ g16( e c g) e8-. e-. e-. e-. g( f) r f16( g32 a) h8-. c-. d-. e-.
  f4~ f16( d h g) f8-. f-. f-. f-. e16( f g f) e4 r2 gis'4(-\markup {\italic dolce} a) r2 cis,4( d) r2
  f,8( a) r cis d( f) r f, g-. d-. g,4 r2 e16( g c g) e4 r8 e'16( g) c8-. cis-. d16( e f e) d4 r2
  h,16( d g d) h4 r8 f''16( d) h( g f d) c( d e d) c8 c'\trill e-. d-. c-. h-.
  gis4( a8)( a'16\trill gis32 a) c8-. h-. a-. g-. e4( f8) f16\trill e32( f) a8-. g-. f-. e-.
  e(\< d) g4.(\! fis16 g a g f e) e8(\< d) g4.(\! fis16 g <\tweak font-size #-3 a c> g f e)
  d(\trill cis d e) f( e f g) a8-. a-. a-. a-. a16( gis a h) c( h a g) f( e d c h a g f)
  e( g c e) g( c h a) g( fis a g) f( e d c) d1\trill c4 r g-.\pp g-.
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override Score.GraceSpacing.spacing-increment = #1.2    
  }
  \tag #'SpacingSection {\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)}
  g4.( \acciaccatura {a16 g fis g} 
  \tag #'SpacingSection {
    \newSpacingSection
    \unset Score.proportionalNotationDuration
  }
  d'8) g,4-. g-.  
  \tag #'SpacingSection {
    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  g4.( \acciaccatura {a16 g fis g} e'8) 
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  g,4-. g-.
  \tag #'SpacingSection { \break }
  g'8( f e f) d( e f g) f4( e8) r g4-. g-. g16( h d h) g8-. g-. g-. g-.g-. g-.
  g16( a h c) g8-. g-. g-. g-.g-. g-. g16(\f f d h g f d h g8) d''4 f8 e16( g, a h c d e f) g( f e f) g( f e f)
  g4 r
  \changePitch {c4( \acciaccatura {c16 c c c} c8) c-. c4( c8) c}{
    g a g fis g-\markup {\italic dolce} a h d c r e, f e dis e fis gis h a r c,d c h c d e g f r
  }
  f-.\p r a-. r g-. r e-. r d-. r g-. r f4( e8) r f( g\cresc gis a)
  g!-.\! r e-. r 
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override Score.GraceSpacing.spacing-increment = #1.2
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  d4.( \acciaccatura {e16 d cis d} g8)
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  c,\noBeam c(-\markup {\italic dolce} h b) a( c h a) g( gis a g) fis( f g f)
  e\noBeam c'( d e) f4~ f16( g32 a g16 f) e8 r e4(\p\< d g)\! g8( c,) r4
  \changePitch {c16( c8.)}{d-\markup {\italic dolce} f h, d c e g e d f h, d} c4\f c' c,, r
  \bar "|."
}

ersteVIc = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override DynamicTextSpanner.style = #'none
  \partial 2 c''4\mf c
  c8([c')] c( h) h( a) a( g) g2  g8( gis a e) f( fis g d) dis( e f d)
  c( h a g) c \acciaccatura d c16( h) c8-. d-. d( e4 c8) d \acciaccatura e d16( cis) d8-. e-.
  e( f4 d8) g( e) c'-. c-. h( a gis a) e4 fis a( g!) r2
  e,4(\p a g f) e-. e'-. cis-. a-. d-. h-. c!-. f,-. g4.( f8) e4-. g-. c,4.( e8) f4-. a-. d,4.( h8) c4-. e-.
  f r g r c8( g e g) c( g e' c) h( g' c, g') d( g c, g') e( c g c) e( c g' e) f( g f e e d c h)
  h4( c8) r e4(\mf g)
  \tag #'SpacingSection { \break }
  \tag #'SpacingSection {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \override Score.GraceSpacing.spacing-increment = #1.2
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  }
  d4.( \acciaccatura {e16 d cis d} e8) 
  \tag #'SpacingSection {
    \newSpacingSection
    \revert Score.SpacingSpanner.strict-grace-spacing
    \revert Score.GraceSpacing.spacing-increment
    \unset Score.proportionalNotationDuration
  }
  f4-. d-. g8. e16 c4\cresc g'( c)
  c8( h a g) g( f e d)
  \tag #'SpacingSection { \break }
  c4 r 
  \tuplet 3/2 4 {
    \once\override DynamicText.extra-offset = #'(-1 . 1)
    e8(\f f e) c( d c)
  } g'4-. r
  \tuplet 3/2 4 {
    e8(\f f e) c( d c)
    \override TupletNumber.transparent = ##t
    g'( a g) d( e d) h( c h) g( a g) c( d c) a( h a) fis( g fis) c( d c)
  }
  h4-. d-. g-. r R1 d''2\f h4. g8 d2. fis8\trill-\markup {\italic dolce} e16( fis) g8-. r a-. r h-. r c-. r
  h4( a2) gis8\trill f16( gis) a8-. r h-. r c-. r d-. r c4( h)
  \override TupletNumber.transparent = ##f
  \tuplet 3/2 4 {
    g8( a h)
    \override TupletNumber.transparent = ##t
    d,-. e-. f!-. e( c e) g-. e-. g-. c( h a) g-. fis-. e-. d( h d) g-. d-. g-. h( a g) fis-. e-. d-.
    c( a c) fis-. a-. g-. fis-. e-. d-. c-. h-. a-.
  }
  h r
  \tuplet 3/2 4 {
    d( g a) h-. a-. g-. fis-. e-. d-. g-. fis-. e-. d-. c-. h-. e-. d-. c-. h-. a-. g-.
    fis( d e) fis-. g-. a-. h-. d-. c-. h-. a-. g-.
  }
  fis r fis'-. r g-. r h-. r a-. r c8.(\ff h16) a8-. r a8.( g16)
  fis8-. r c'8.(-\markup {\italic pp} h16) a8-. r a8.( g16) fis4 r r2
  g,2.\f \acciaccatura c8 h(-\markup {\italic dolce} a16 h) g8-. g-. h-. h-. g r \acciaccatura c h( a16 h)
  a8-. a-. c-. c-. a r \acciaccatura d c( h16 c) h8-. h-.\cresc d-. d-. c-. c-. e-. e-.
  d( cis) d-. cis-. d4 r g8\f d'4 c8 h-. a-. g-. fis-. e e'4 d8 c-. h-. a-. g-. fis( g fis e d c h a)
  g2. \acciaccatura c8 h( a16 h) g8-. g-. h-. h-. g r \acciaccatura d' c( h16 c)
  a8-. a-. c-. c-. a r \acciaccatura d c( h16 c) h8-. h( d) d( c) c( e) e( d) cis( d) cis( d) h-. g-. d-.
  h4 r r8 d'-. d-. d-. d( gis)h-. a-. gis-. f!-. e-. d-. c1~ c8 fis-. a-. g-. fis-. e-. d-. c-.
  h4-. d-.\p r g, c, r e r d r h'8( d c a) d2~ d8( dis e d) c( cis d c) h( d c h) h( a) c-. a-. a( g) g( fis)
  h'2~ h8( a gis h) a( g! fis a) g( fis e d) d( c) e-.c-. c( h) h( a)
  g4 r8.-\markup {\italic dolce} g16 h4-. cis-. d r8. g,16 d'4-. e-. f r8. d16 f4-. g-. a-.\p r g-. r
  fis2( f~) f8( e d cis e d g d) c!( h a h) c4-\markup {\italic dolce} c c8([c')] c( h) h( a) a( g) g2  g8( gis a e)
  f( fis g d) dis( e f d) c( h a g) c \acciaccatura d c16( h) c8-. d-.
  d(\> e4 c8)\! d \acciaccatura e d16( cis) d8-. e-. e(\> f4 d8)\!
  \tuplet 3/2 4 {
    \override TupletNumber.transparent = ##f
    c'-. h-. a-. g-. f-. e-.
    \override TupletNumber.transparent = ##t
    a-. g-. f-. e-. d-. c-. h-. a-. g-. f-. e-. d-.
  }
  c4 r c' r d, r e r
  \tuplet 3/2 4 {
    c8-.\f e-. a-. c-. a-. c-. e-. c'-. h-. a-. gis-. a-. b-. c-. b-. a-. g-. f-. e-. d-. c-. b-. a-. g-.
  }
  f4-. c8-. a-.
  \changePitch {c8( c) c-. c-.}{
    f c' a c f, d' b d f, d' b d e, c' g c e, c' g c f, c' a c f, c' a c b c b c a c a c b c b c a c a c
  }
  b4 r h r c-. e-. g-. r c'2( a4. f8) d'4 d d r b2( g4. e8) c'4 c c r c,4.( d16 e) f8 r a r b4-. d-. r2
  f,2.(-\markup {\italic dolce} a8 g) f4 r r8  a-. f-. d-. cis4( e2 g4) f d' r8 f,-. d-. h!-.
  gis4( h2 d4) c e gis8( a h a) g! f4 e d dis8 e4-. r r2 e4(\p f2 dis4) e r r2 e,4(\p f2 dis4)
  e e'(\cresc f) e~ e \acciaccatura e8 d cis d4 d, r g'(\cresc a g) g1~ g8\! f-. e-. d-. c-. h-. a-. g-.
  f-. e-. d-. c-. h-. c-. d-. e-. f-. g-. a-. h-. c4-.\mf c-.
  c8(c') c( h) h( a) a( g) g2  g8( gis a e) f( fis g d) dis( e f d)
  c( h a g) c \acciaccatura d c16( h) c8-. d-. d(\> e4 c8)\! d \acciaccatura e d16( cis) d8-. e-.
  e(\> f4 d8)\! g( e) c'-. c-. h(\mf a gis a) e4 fis a( g!) r2
  e,4(^\markup {\italic dolce} a g f) e-. e'-. cis-. a-. d-. h-. c!-. f,-. g4.( f8) e4-. g-.
  c,4.( e8) f4-. a-. d,4.( h8) c4-. e-. f r g r c, r r2 R1 g''2\f e4. c8
  g2. h8(\p\trill a16 h c8-.) r d-. r e-. r f-. r e4(\> d2)\! cis8.( d32 e) d8-. r e-. r f-. r g-. r f4( e)
  \tuplet 3/2 4 {
    \override TupletNumber.transparent = ##f
    g8\f f e d c h
    \override TupletNumber.transparent = ##t
    a-. a'-. g-. f-. g-. e-. d-. e-. d-. c-. h-. a-. g-. g'-. f-. e-. f-. d-. c-. d-. c-. h-. a-. g-.
    f-. f'-. e-. d-. e-. c-. h-. c-. h-. a-. g-. f-. e-. g'-. e-. c-. g-. e-. c-. e-. g-. c-. e-. g-.
    c-. h-. a-. g-. f-. e-. a-. g-. f-. e-. d-. c-.
  }
  \changePitch {c8-. c16( c)}{h a h c h c d c d e d e} f4 r r2
  c2.-\markup {\italic dolce} \acciaccatura f8 e( d16 e) c8-. c-. e-. e-. c r \acciaccatura g' f( e16 f)
  d8-. d-. f-. f-. d r \acciaccatura g f( e16 f) e8-. e-. g-. g-. f-. f-. a-. a-. g( fis) g-. fis-. g4 r
  c,8(\f e) g-. f-. e-. d-. c-. b-. a1~ a8( d) f-. e-. d-. c-. h-. a-. g1~ g8\mf h'( c h a g f e)
  d-. a'( gis g fis f e d) \acciaccatura e d( c) c4. \acciaccatura d c16( h) c8-. d-. d4.( dis8) e4-. r
  g8( h c h) a( g f e) \acciaccatura f e( d) d4.  a'8-. f-. d-. \acciaccatura e d( c) c2 d8( h)
  g'2~ g8 gis( a g) f( fis g f) e( g f e) e( d) f-. d-. d( c) c( h) e4( g\cresc c2~) c4\! h c8( h a g)
  g( f) a-. f-. f( e) e( d) c4 r g'8-.g-.g-.g-. g2~ g8 g-. g-. g-. g4 r r2
  r g8-.-\markup {\italic dolce} g-. g-. g-. g4.( a16 h) c8-. c-. c-. c-. c4 r r2 fis,8(\p g) e4 r2 dis8( e) c4 r2
  \tuplet 3/2 4 {
    \override TupletNumber.transparent = ##f
    e,,8( g c) e-. g-. c-. e-. g-. f-. e-. d-. c-.
    \override TupletNumber.transparent = ##t
    f,,( a c) f-. a-. c-. f-. a-. g-. f-. e-. d-. fis,,( a c) fis-. a-. c-. fis-. a-. c-. d,-. e-. fis-.
    \repeat unfold 4 {g( a) fis-.} g-. a-. h-. c-. h-. a-. g-. f!-. e-. d-. c-. h-. a h c cis d e f fis g a h c
  }
  g,,2 d''\trill c4 r8. c16-. g'4-.-\markup {\italic dolce} f8\trill e16( f) e4 r8. c16-. g'4 f8\trill e16( f)
  e4 r8. c16-. g'4 h8\f\trill a16( h) c4 r8. c,,16 c4 c c r r2
  \bar "|."
}