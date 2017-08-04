\version "2.18.0"

\header {
  title = "Koncert na klarnet i orkiestre"
  composer = "Karol Kurpinski"
  arranger = "1823"
  meter = "Allegro"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #30
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\score {
  \new Staff = "clar" \with {
    instrumentName = \markup {
      \center-column {
        "Clarinet"
        \line { "in B" \smaller \flat }
      }
    }
  }
  \relative c'' {
    \clef treble
    \key c \major
    \time 4/4
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    R1*13
    \mark \markup {\circle 1} |
    R1*8
    \mark \markup {\circle 2} |
    R1*12
    \mark \markup {\circle 3} |
    R1*9
    \mark \markup {\circle 4} |
    R1*10 |\break
    \override DynamicLineSpanner.staff-padding = #3
    r2 \fermata r4
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \set beatStructure = #'(2 2 2 2)
    c16\mf\<(d32 e f g a b\!
    \set subdivideBeams = ##f
    \mark \markup {\circle 5} |
    \override BreathingSign.Y-offset = #2.6
    \override BreathingSign.text =
    \markup { \musicglyph #"scripts.tickmark" }
    c2\f) \breathe e,,, | f8 \breathe r a''4\f->~ a8.\> g16( f e d c\!) |
    b8-. r c8.\trill( b32 c) d8-. r e-. r^\markup {\italic lunga} |
    g2\fermata\<( \grace {fis16^"rit."\!\>[ f] e[ f g]\!} f4)\pp\fermata r\fermata
    \mark \markup {\circle 6} \bar "||"\break
    r2^\markup{\raise #2 {Tempo 1}} r8 e8\mf( b c) | g2^~ g8 c( \acciaccatura e d c) | a'4->\>( g)\! r8 g( fis g) |
    c2~ c8\< e,( a g)\! |g4( f) r8 f( cis d) | g,2^~ g8 d'( \acciaccatura f e d) |
    a'4\>->( g)\! r16 g\<( fis g fis g a g\! | d'4.)\breathe
    \once \override PhrasingSlur #'positions = #'(4 . 2.5)
    g,,16(\( b d f! b16.) a32(g16 f e d)\) |
    dis4\>( e\!) r2 \mark \markup {\circle 7} |
    r4\f c~ c8 b-. c-. cis-.\< |d-. e-. f-. fis-. g-. a-. bes-. b-.\! |
    c4.( b16 a g8) g-. g-. g-. | g2\startTrillSpan fis16\stopTrillSpan(g b a g f e d) |
    \once \override PhrasingSlur #'positions = #'(4 . 2.5)
    c(\( g e g c e g e) c'( b a g f e d c)\) | r f,,( a c f a c f a g f e d c b a) |
    g8-. g'16( e c g e c) g4-> b''-> | \grace {c,32[( e g]} c4)\f-> c,, r2 \mark \markup {\circle 8} |\break
    e'1^\markup{\raise #2 {Sostenuto}}\p~ |e4 dis8( e f8. e16 f8. e16) | e2.\<( es4\!->) |
    d8\>( fis a g) \times 2/3 {g->( f e)} \times 2/3 {e->( d c\!)} |\break
    b2\<( b'~ |b8\!)\> a-. g-. fis-. e-. d-. c-. b-.\! |
    a( gis a b \times 2/3{c d dis\!} \times 2/3{e c'8. a16)}
    \once \override PhrasingSlur #'positions = #'(3 . 4)
    g4\(~ g16^"rit." fis( a g)\) fis4 r \mark \markup {\circle 9} |\break
    r8^\markup { \italic {poco a poco accelerando} } r16 b,32( d g8[) r16 b,32( d] b'8) r16 b,32( d g8[) r16 b,32( d] |
    \override TupletBracket #'bracket-visibility = #'if-no-beam
    b'8[) r16 b,32( d] g8[) r16 \times 2/3{b,32\<( d g]} b16\f\>) a-. g-.fis-. e-. d-. c-. b-.\! |
    c8[ \breathe r16 c32\pp( d] fis8)[ r16 c32( d] a'8)[ r16 c,32( d] fis8)[  r16 c32( d] |
    a'8)[ r16 c,32( d] fis8)[  r16 \times 2/3{d32\<( fis a]} c16\f\>) b-. a-.g-. fis-. e-. d-. c-.\! |
    b8-. b16( d g8) b,16( d b'8) b,16( d g8) b,16( d
    b'8) b,16( d g8) \times 2/3{b,16( d g} b16\f\>) a-. g-. fis-. e-. d-. c-. b-.\! |
    c8 c16( d fis8) c16( d a'8) c,16( d fis8) c16( d
    a'8) c,16( d fis8) \times 2/3{d16( fis a} c16\f\>) b-. a-. g-. fis-. e-. d-. c-.\!
    \mark \markup {\circle 10} |
    b8[ r16 g'16-.] fis->(g a g) dis->( e fis e) b->( c d c) |
    b8[ r16 g'16-.] a->( g fis g) fis->( e dis e) d->( c b c) |
    b8 g,16( b) d8-. g-. b-. d-. g-. b-. |d4~ d16 c-. b-. a-. g-. fis-. e-. d-. c-. b-. a-. g-. |
    r8 e,16( g) c8-. e-. g-. c16( e) g8-. c-. |e4~( e16 d c b) c( b a gis) a( g fis e) |
    d8\<-. d,-. g-. b-. d-. g-. b-. d-. \mark \markup {\circle 11} g1->\f\> |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set baseMoment = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    r8\! b,,16\<( c \times 2/3{cis16 d es } \times 2/3{e16 f fis\!} g8->) b,16\<( c \times 2/3{cis16 d es } \times 2/3{e16 f fis\!} |
    g8->) b,16\<( c \times 2/3{cis16 d es } \times 2/3{e16 f fis\!} g8->)
    \times 2/3{d16\<( es e} \times 2/3{f16 fis g} \times 2/3{gis16 a bes} |
    \set subdivideBeams = ##f
    b8\f->) r8 b16->( a) g-. fis-. g->( fis) e-. d-. e->( d) c-. b-. |
    c->( b) a-. g-. fis\<( g a b c d e fis g a b c\!) |
    d( c) b-. a-. b( a) g-. fis-. g( fis e d c b a g) |\break
    \once \override PhrasingSlur #'positions = #'(-1 . -3)
    #(define afterGraceFraction (cons 15 16))
    fis1\(~\startTrillSpan | \afterGrace fis {g32[(\stopTrillSpan fis e]} |
    fis8)\) g( a b c cis d dis) | e4-. f-. fis-. r\fermata \mark \markup {\circle 12} |\break
    << {\stemDown s2\p\< s2\!\>|f2~\! f8 es( d f)} \\ { g1 | s1 } >>
    \stemNeutral
    es2~ es8 bes( g bes) |<< {s2\p\< s2\!\>|f'1\! } \\ { es1 | s1 } >>
    g2~ g8 f( es g) | f2\>\( bes~ |bes4\!\) r8 bes,-.\<( c-. d-. es-. f-.\!) |g2\>~( g8 f es d\!) |
    c2. r4 |aes'2~( aes8 g f es) | d2. r4 |bes'4.( aes8 g f es d) |cis2( d8) r8 c4 | c2\<( b!4 g') |
    g4.\f\>( e!8 d c b a\!) |
    g2(^\markup \tiny \override #'(baseline-skip . 1) {
      \halign #-4
      \center-column {
        \musicglyph #"scripts.turn"
        \sharp
      }
    }
    a8) r8 fis-. r \mark \markup {\circle 13} |
    g8[ r16 b32( d] g8[) r16 b,32( d] b'8[) r16 b,32( d] g8[) r16 b,32( d] |
    \override TupletBracket #'bracket-visibility = #'if-no-beam
    b'8[) r16 b,32( d] g8[) r16 \times 2/3{b,32\<( d g]} b16\f\>) a-. g-.fis-. e-. d-. c-. b-.\! |
    c8[ r16 c32( d] fis8)[ r16 c32( d] a'8)[ r16 c,32( d] fis8)[  r16 c32( d] |
    a'8)[ r16 c,32( d] fis8)[  r16 \times 2/3{d32\<( fis a]} c16\f\>) b-. a-.g-. fis-. e-. d-. c-.\! |
    b8-. b16( d g8) b,16( d b'8) b,16( d g8) b,16( d
    b'8) b,16( d g8) \times 2/3{b,16( d g} b16\f\>) a-. g-. fis-. e-. d-. c-. b-.\! |
    c8 c16( d fis8) c16( d a'8) c,16( d fis8) c16( d
    a'8) c,16( d fis8) \times 2/3{d16( fis a} c16\f\>) b-. a-. g-. fis-. e-. d-. c-.\! |
    b8 r g'16( a b c d c b a g fis e d) |c( b a g fis e d c) b8-> a-> g-> fis |f!1\startTrillSpan |
    e16\stopTrillSpan( f e f e f e f e f e f e f e f |
    e8-.) e16-. f-. fis-. g-. gis-. a-. bes-. b-. c-. cis-. d-. dis-. e-. f-. |
    fis-. g-. gis-. a-. bes-. b-. c-. cis-. d-. es-. e-. f-. fis-. g-. gis-. a-.\mark \markup {\circle 14} |
    bes4->\sf r8 \times 2/3{cis,16( e g} bes4\sf) r8 \times 2/3{cis,16( e g} |
    bes4\sf) r8 \times 2/3{cis,16( e g} bes4\sf) r |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set baseMoment = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    r8 b,16\<( c \times 2/3{cis16 d dis } \times 2/3{e16 f fis\!} g8->) b,16\<( c \times 2/3{cis16 d dis } \times 2/3{e16 f fis\!} |
    g8->) b,16\<( c \times 2/3{cis16 d dis } \times 2/3{e16 f fis\!} g8->)
    \times 2/3{d16\<( es e} \times 2/3{f16 fis g} \times 2/3{gis16 a bes} |
    b8\f->) r8
    \set subdivideBeams = ##f
    b16->( a) g-. fis-. g->( fis) e-. d-. e->( d) c-. b-. |
    c->( b) a-. g-. fis\<( g a b c d e fis g a b c\!) |
    d( c) b-. a-. b( a) g-. fis-. g\>( fis e d c b a g\!) | \break
    \once \override TrillSpanner #'(bound-details right padding) = #1.2
    fis2->\p\startTrillSpan
    \once \override TrillSpanner #'(bound-details right padding) = #1.2
    c'->\startTrillSpan |
    \once \override TrillSpanner #'(bound-details right padding) = #1.2
    d->\startTrillSpan
    \once \override TrillSpanner #'(bound-details right padding) = #1.2
    fis2->\startTrillSpan |
    \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -1.5)) PhrasingSlur
    \once\override TrillSpanner.extra-offset = #'(0 . -2.5)
    a1\(~\<\startTrillSpan \mark \markup {\circle 15} | \afterGrace a {g16[(\stopTrillSpan b a]} |
    g4\!)\) r4 r2 | \break R1*9 \mark \markup {\circle 16} | R1*8 |
    <<
      {
        \stemDown e1~ | e4\fermata e4( f4..\fermata e16) \mark \markup {\circle 17} 
      }
      \\
      {
        \override Hairpin.minimum-length = #10
        s2\p\< s2\!\>   |s2\pp\< s4..\!\> s16\! 
      }
    >>
    \bar "||" \break
    \once \override PhrasingSlur #'positions = #'(2 . 2)
    e2^\markup{\raise #2 {Lento di molto}}\(~ e8 d( c b)\) | a2 r4 e'8.( a16) |a2(~ a8 g f e) |g2( f4) r |f2(~ f8 e d c) | b2 r4 b8.( b'16) |
    b4.( a8 gis f! e b) | d2\>( c4\!) r |a( a'~ a8) c( b a) | a( gis\> b f! e4\!) r |
    r8 gis->( a) dis,->( e) c'->( b a) |gis( a b f e4) r |
    a1\p\<~ |a4\! \breathe g8( f e d c b) |a2 gis8( f'^"rit." e gis,) |a2 r\fermata \mark \markup {\circle 18} \bar "||" \break
    r2^\markup{\raise #2 {Allegretto}} r8. c16-.\mf[ b8-. r16 c-.] |f8-.[ r16 c-. b8-. r16 c-.] a'8-.[ r16 f-. e8-. r16 f-.] |
    fis4\sf\>( g\!) r8. c,16-.[ bes'8-. r16 a-.] | g8-.[ r16 f-. e8-. r16 d-.] c8-.[ r16 c( \acciaccatura e8 d8. c16)] |
    c4.\sf\>( d16 e f8\![) r16 c16-.\mf b8-. r16 c-.] |f8-.[ r16 c-. b8-. r16 c-.] a'8-.[ r16 f-. e8-. r16 f-.] |
    fis4\sf\>( g\!) r8. c,16-.[ bes'8-. r16 a-.] | g8-.[ r16 f-. e8-. r16 d-.] c8-.[ r16 c( \acciaccatura e8 d8. c16)] |
    c4.\sf\>( d16 e f8\!\noBeam) \breathe f\f( e f) \mark \markup {\circle 19}|
    g4.\>( \times 2/3{f16 e d} c8\!) c( b! c) |
    c'4.\>( \times 2/3{bes16 a g} f8\!\<) e( f fis\!) |
    g16( a bes a g f e d) c4.\startTrillSpan( b!16\stopTrillSpan c) |
    c'8( b!16 bes a gis g fis f8) \acciaccatura g f( e f) |g2\sf~ g8 g-- g-- g-- |a4\>( g\!) r8 g-- g-- g-- |
    bes2( bes8) bes-- bes-- bes-- |bes4\>( a\!) r8 a-- a-- a-- |g-. r d'4\sf(~ d16 c bes a g f e d |
    c8) r f4\>~( f16 e d c) c( bes a g\!) \mark \markup {\circle 20}|\break
    f8\p r
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \times 2/3{f8\<( e f a gis a c b c |f e f a gis a c\! b c\> a gis a | f e f c b c} a4\!) r |
    r \times 2/3{a8\p\<( gis a d cis d f e f | a gis a d\! cis d\> a gis a f e f |d cis d a gis a} f4\!) r |
    r \times 2/3{g8\<( fis g b ais b d cis d | g fis g b ais b d\! cis d\> b ais b |g fis g d cis d} b4\!) r |
    r \times 2/3{c8\<( b c e dis e g fis g | c b c g fis g c\! b c\> e dis e |c b c g fis g} e4\!) r |
    r \times 2/3{a,8\<( gis a c b c e dis e |a gis a c b c e\! dis e\> c b c |a gis a e dis e} c4\!) r |
    r \times 2/3{d8\<( cis d fis eis fis a gis a |c!\! b c\> a gis a fis eis fis d cis d | c! b c a gis a}
    fis4\!) r \mark \markup {\circle 21} |
    r16\f g fis g b g c g d' g, e' g, f' g, d' g, |e' g, g' g, e' g, g' g, e' g, g' g, f' g, e' g, |
    d'\p g, fis g b g c g d' g, e' g, f' g, d' g, |e' g, g' g, e' g, g' g, e' g, g' g, f' g, e' g, |
    d'8 g,16\<( a b c d e f8\!) b,16\<( c d e f g |a8\!) c16( b a8) c16( b a8) c16( b a8) c16( b |
    a8) c16( b a8) a16( g f8) a16( g f8) f16( e |d8) f16( e d8) f16( e d8) f16( e d8) f16( e |
    d) e( f g a g f e d c b a g f e d \mark \markup {\circle 22}\bar "||" c4)
    ^\markup{\raise #2 {Tempo 1}} r r2 | R1*3 |\break
    r2 r8 e'8\mf( b c) | g2~ g8 c( \acciaccatura e d c) | a'4->\>( g)\! r8 g( fis g) |
    c2~ c8\< e,( a g)\! |g4( f) r8 f( cis d) | g,2~ g8 d'( \acciaccatura f e d) |
    a'4\>( g)\! r16 g\<( fis g fis g a g\! | d'4.)
    g,,16( b d f! b16.) a32(g16 f e d) |dis4\>( e\!) r2 \mark \markup {\circle 23} |\break
    c,16( g' e g) c( e g e c g e g) c( e g e |c g e g) c( e g e c' b a g f e d c) |
    <<
      {b( g d g b, g' d g) b( g d g b, g' d g) | }
      \new Staff \with {
        \remove "Time_signature_engraver"
        alignAboveContext = #"clar"
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #(magstep -3)
        firstClef = ##f
      }
      {b^\markup {\italic {ossia}}( d g d b g d g) b( d g d b g d g) | }
    >>
    b( g c g d' g, e' g,) f'( e d c b a g f |
    e8) \breathe r c'16( e g e c g e g) c( e g e |c g e g) c( e g e c' b a g f e d c) |
    <<
      {b( g d g b, g' d g) b( g d g b, g' d g) | }
      \new Staff \with {
        \remove "Time_signature_engraver"
        alignAboveContext = #"clar"
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #(magstep -3)
        firstClef = ##f
      }
      {b^\markup {\italic {ossia}}( d g d b g d g) b( d g d b g d g) | }
    >>
    b( g c g d' g, e' g,) f'( e d c b a g f \mark \markup {\circle 24}|\break
    e8[) r16 g'-.] a->( g fis g) f->( e dis e) d->( c b c) |
    a8[ r16 a'-.] b->( a gis a) g->( f e f) e->( d cis d) |
    b8[ r16 b'-.] c->( b ais b) a->( g fis g) f->( e dis e) |
    c8[ r16 c'-.] d->( c b c) b->( a gis a) g->( f e f) |
    d8 d'4->\sf c32( b a b c8) d4->\sf c32( b a b |c8) d4->\sf c32( b a b c8) d4->\sf c32( b a g) |
    c8-.
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set baseMoment = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    e,16\<( f \times 2/3{fis16 g gis} \times 2/3{a16 bes b}
    \set subdivideBeams = ##f
    c16\f\> b a g f e d c\!) |
    r16 b\<( c cis d es32 e f fis g gis a16\f\> g f e d c b a\!) |g8 g'16( e c g e c) g4-. g''-. \bar "||" \break
    \cadenzaOn
    g,,4.^\markup{\raise #2 {Cadenza ad libitum}}\fermata c8 e4 g c e g c e g c\fermata \breathe g8 e16[( g e]) c[( e c]) g[( c g]) e[( g e]) c[( e c])\bar ""
    g[( c g]) e[( g e]) c[( e c]) g[( c g])
    \once \override Slur.eccentricity = #3.5
    e32[( g c e g c e g c g e c g e c g e g c e g c e g c]) r8\fermata \bar ""
    c,16\f[( e g e] c[ g e g]) c16[( e g e] c[ g e g]) c[( e g e] c'[ b a g] f[ e d c])\bar ""
    b[( d g d] b[ g d g]) b[( d g d] b[ g d g]) b[( g c g] d'[ g, e' g,] f'[ e d c] b[ a g f]) e8 r \bar ""
    c'16\pp[( e g e] c[ g e g]) c16[( e g e] c[ g e g]) c[( e g e] c'[ b a g] f[ e d c])\bar ""
    b[( d g d] b[ d c d]) b[( d g d] b[ d c d]) b[( d c e] d[ f e g]\> f[ e d c] b[ a g f]\!) \bar ""
    e8.[ g'16] fis[( g) a-. g-.] f[( g) b-. g-.] d[( g) b-. g-.] e[( g) c-. g-.]
    fis[( g) a-. g-.] f[( g-.) b-. g-.] d[( g) b-. g-.] e[( g) c-. g-.]\breathe \bar ""
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \set beatStructure = #'(2 2 2 2)
    \override Beam #'breakable = ##t
    fis32[\pp( g b g
    f g b g
    e-- g b g
    es-- g b g
    d-- g b g
    des-- g b g
    c,-- g' b g   b,-- g' b g\bar ""
    c,-- g' b g   b,-- g' b g
    c,-- g' b g   b,-- g' b g
    c,-- g' b g   b,--) g'( b g] \times 4/6 {f[ d b g f d])} \bar ""
    b->[( d f d
    bes-> d f d
    a-> d f d
    as-> d f d
    b-> d f d
    bes-> d f d
    a-> d f d
    as-> d f d\bar ""
    b-> d f d
    bes-> d f d
    a-> d f d
    as-> d f d
    g,-> d' f d
    ges,-> d' f d
    f,-> d' f d
    e,-> d' f d
    f,-> d' f d\bar ""
    e,-> d' f d
    f,-> d' f d
    e,-> d' f d
    f,-> d' f d
    e,-> d' f d
    f,-> d' f d
    e,-> d' f d
    f,-> d' f d])
    g,4\fermata\breathe\bar ""
    b8->[( ais b]) d->[( cis d]) g->[( fis g]) b->[( ais b])
    d->[( cis d]) g->\<[( fis g])  b->[( ais b]) d->[( cis d])\bar ""
    g8.\f\fermata[\breathe d16]( b8.[) d32( b] g8.[) b32( g] d8.[) g32( d] b8.[) d32( b]
    g8.[) b32( g] d8.[) g32( d]  b8.[) d32( b]\bar ""
    g4..)\fermata ^\markup {\raise #3 \italic {poco accelerando}} gis16
    \omit TupletNumber
    \set subdivideBeams = ##f
    \times 8/10 {a32[( bes b c cis d es e f fis]}
    \times 8/12 { g[ gis a bes b c cis d es e f fis\fermata])} \mark \markup {\circle 25} \bar "||" \break
    \cadenzaOff
    g2^\markup {\italic {a tempo}}(~ g8 f es d) | c2 r4 g'8.( c16) |c2(~ c8 bes aes g) | bes2(\> aes4)\! r |
    aes2(~ aes8 g f es) | d2 r8\< d( es e\!) | f4.( d8) b( aes' g d) | f2\>( es4\!) r |
    <<
      {
        r8 g,(
        \stemDown
        es'2 d8 c)
      }
      \\
      {s8 s4.\< s\!\> s8\!}
    >>
    \stemNeutral
    b( d aes'8. g16) g4 r |r8 fis( g d f es d c) |
    b4( \grace {c32\<[ cis d es e f fis g\!]} aes8.\> g16 g4\!) r |\break
    \acciaccatura c,8 c'1\<~ |
    c4\! bes8( aes g f es d) | c4..( d32 c b!8 aes' g b,) \mark \markup {\circle 26}|\break
    c8\f r c16^\markup {\italic {a tempo}}( e g e c g e g) c16( e g e c g e g) c( e g e c' b a g f e d c)
    <<
      {b( g d g b, g' d g) b( g d g b, g' d g) | }
      \new Staff \with {
        \remove "Time_signature_engraver"
        alignAboveContext = #"clar"
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #(magstep -3)
        firstClef = ##f
      }
      {b^\markup {\italic {ossia}}( d g d b g d g) b( d g d b g d g) | }
    >>
    b( g c g d' g, e' g, f' e d c b[a g f]) e8 r
    c'16( e g e c g e g) c16( e g e c g e g) c( e g e c' b a g f e d c)
    b( d g d b d c d) b( d g d b d c d) b( d c e d f e g\> f e d c b a g f\!)
    e8 r16 g'\f fis( g) a-. g-. f( g) b-. g-. d( g) b-. g-. e( g) c-. g-.
    fis( g) a-. g-. f( g-.) b-. g-. d( g) b-. g-. e( g) c-. g-. e( c g e c4)\breathe e,( |
    f8\noBeam) c'''16( a f c a f) c4-. fis,( | g8) e16( g c) e,( g c e) g,( c e g) c,( e g |
    c8) e,16( g c) e,( g c e) g,( c e g) c,( e g \mark \markup {\circle 27}|\break
    \override TupletNumber #'stencil = ##t
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set baseMoment = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    c8) e,16\<( f \times 2/3{fis16 g gis} \times 2/3{a16 bes b}
    c8\sf) e,16\<( f \times 2/3{fis16 g gis} \times 2/3{a16 bes b}
    c8\sf) e,16\<( f \times 2/3{fis16 g gis} \times 2/3{a16 bes b}
    c8\sf) e,16\<( f \times 2/3{fis16 g gis} \times 2/3{a16 bes b}
    \set subdivideBeams = ##f
    c8\sf) r c4. \acciaccatura d8 c16 b-> c8-> d-> | es2.->\breathe fis,,,4( \mark \markup {\circle 28} |\break
    g8) e\< f! fis g\! e-.\< f-. fis-. | g-.\f gis-.\p a-. bes-. b-. c-. cis-. d-. |
    es-. e-. f-. fis-. g-. gis-. a-. bes-. | b!-. c-. cis-. d-. dis-. e-. f-. fis-. |
    g-.\< gis-. a-. bes-. b-. c-. cis-. d-. | dis4->\f e-> f-> fis-> | g-> r a-> r \mark \markup {\circle 29}|
    r16\f g,( a g fis g a g c b a g fis g a g e g a g fis g a g c b a g fis g a g)
    c->( b a g) a->( g  f! e) f->( e d c) b([ c f) r32 e] |
    d1(~ \startTrillSpan | \afterGrace d {c32\<[ d e f g a)]\stopTrillSpan} |
    b1\f(~ \startTrillSpan | \afterGrace b {a16[ b)]\stopTrillSpan} \mark \markup {\circle 30} |\break
    c4-. r r2 | R1*5 | c,,8->\mf\< d16-. e-. f( g) a-. b-. c8-> d16-. e-. f( g) a-. b-. | c4->\f
    \times 2/3 {
      c8-.[ e-. c-.] g-.[ c-.g-.] e-.[ g-. e-.] |
      c([ g') e-.] c-.[ e-. c-.] g-.[ c-. g-.] e-.[ g-. e-.]
    } |
    c2-> r4 r8. c16-> | c1\fermata \bar "|."
  }
}