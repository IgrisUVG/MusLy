\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #22
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #15
  score-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #18
  two-sided = ##t
  inner-margin = 15
  outer-margin = 15
}

\header {
  title = "***"
  %meter = "Rubato"
  %subtitle = "6 Clarinetti"
  %subsubtitle = "in B"
  composer = "S. Lee."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\book {
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "ETUDE"
          "1"
        }
      }
    }
    \transpose c' d'
    \relative {
      \key d \major
      \override Score.RehearsalMark.extra-offset = #'(4 . 2)
      \mark "Andante"
      d'2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      a,,2( cis4 e) a4.( cis8 e cis a g) fis2~( fis8 a d fis) a2 r
      a4.( gis8 h a fis d) d2( cis4) r e4.( dis8 fis e cis a) g2( fis4) r
      fis8( a d fis) a2 g,8( h d g) h2 f4.( e8 g f e d) cis4.( h8 a gis g e)
      d2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      ais,,2( cis4 e) fis4.( ais8 cis ais fis e) d2~( d8 fis h d) fis2 r
      h,,2( d4 fis) h4.( ais8 cis h fis d) e2( g4 c) e4.( dis8 fis e c g)
      eis2( gis4 h) d4.( cis!8 e! d cis h) ais4.( fis'8 g fis cis e)
      d4.( cis8 e d cis h) ais4.( fis'8 g fis cis e) d4.( cis8 e d cis h)
      ais2( cis4 fis) a,!2( cis4 fis) g2( e4 cis) a2( g4 e)
      d2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      a,,2( cis4 e) a4.( cis8 e cis a g) fis2~( fis8 a d fis) a2 r
      d,,,2( fis4 a) c4.( h8 d c a fis) g2~( g8 h d g) h2 r
      gis~( gis8 h d f) h2 r a~( a8 gis g e) cis( a g e cis a g e)
      \repeat unfold 2 {d2( fis4 a) d4.( cis8 e d a fis)}
      d1~ d4 r r2
      \bar "|."
    }
  }
  %\pageBreak
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "ETUDE"
          "2"
        }
      }
    }
    \transpose b c''
    \relative {
      %\clef bass
      \key g \major
      \override Score.RehearsalMark.extra-offset = #'(4 . 2)
      \mark "Allegro moderato"
      g,8( a h c d e fis g) g2( fis) d8( e fis g a h c d) c2( h)
      h8( d g fis e d c h) a( c fis e d c h a) g( h e d cis a fis' e)
      d( cis c a fis d c a)
      g8( a h c d e fis g) g2( fis) d8( e fis g a h c d) c2( h)
      g8( a h c d e fis g) e( d c h a g fis e) d( e fis g a h c a)
      h( g d h g4) r
      c8( d e f g a h c) c2( h) d,8( e f g a h cis d) d2( cis)
      a8( h cis d e f g e) f4( a8 g f e d c!) g( a h c d e f d) e4( g8 f e d c h)
      a( c f c a c f c) gis( h f' h, gis h e h) g!( b e b g b e b)
      fis!( a e' a, fis a d a) f( as d as f as d as) e( g d' g, e g c g)
      es( g c g es g c g) es( g cis g es g cis g) d( e! fis! g a h cis d)
      cis( e g e cis a g e) d( e fis g a h cis d) cis( e g e cis a g e)
      d( fis a fis d fis a fis) c!( d a' d, c d a' d,) h( d g d h d g d)
      a( d fis d a d fis d) g,8( a h c d e fis g) g2( fis) d8( e fis g a h c d)
      c2( h) a8( c fis e d c h a) g( h e d c h a g) fis( a d c h a g fis)
      e( g c h a g fis e) d( fis h a g fis e d) c( e a g fis e d c)
      h( d g fis e d c h) a( c fis e d c h a) g( a h c d e fis g)
      fis( a c a fis d c a) g( a h c d e fis g) fis( a c a fis d c a)
      g( a h c d e fis g) fis( g a h c d e fis) g4.( d8 h g d h) g4 r r2
      \bar "|."
    }
  }
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "ETUDE"
          "3"
        }
      }
    }
    \transpose b c''
    \relative {
      %\clef bass
      \time 3/4
      \key b \major
      \override Score.RehearsalMark.extra-offset = #'(4 . 2)
      \mark "Allegretto"
      b2( f4) d( f b) d( g e f) r f, f( b d f) a, b c2( \acciaccatura es8 d4)
      c r f, f( a c es) g, a b2( \acciaccatura d8 c4) b r b, d( f b)
      d( c8 b a g) g2.( fis4) r d fis( a c) es( d8 c b a) a2.( g4) r r
      g2( d4) b( d g) b( g' f e d c) h2.( b!) a2( b4 c d h) c2.~( c4 f e)
      e2( d4) b2( g4) f2( e4) c'2( b4) a( b h c d h) c2.~( c4 a' g) g2( f4)
      e( d b8 g) f2. \acciaccatura f8 e4( d e)
      \repeat unfold 2 {
        f8( a c d c a) f( a d f g f) f( d) d( b) b( g) c( b) b( g) g( e)
      }
      f-. f( e f d' c) h-. g( fis g c b) a-. f!( e f d' c) h-. g( fis g c b)
      a4 f, a c f a c a, c f a c es d c b a g f e( f fis g a)
      b2( f4) d( f b) d( g e f) r f, f( b d) f2( h,4) c2( g4) es( g c)
      es( a fis g) r g, g( c es) g2( a,4)
      \repeat unfold 2 {b4.( f8 d f) b4.( d8 g f) f4.( e8 es c a) f( e f g a)}
      \repeat unfold 2 {b-. b( a b c d) es!-. f,( e f g a)}
      \repeat unfold 2 {b( d f g f d) b( f d b d f)}
      b4 d, f b d f g f d b f d b2.
      \bar "|."
    }
  }
  \score {
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "ETUDE"
          "4"
        }
      }
    }
    \transpose b c''
    \relative {
      %\clef bass
      \time 3/4
      \key c \major
      \override Score.RehearsalMark.extra-offset = #'(4 . 2)
      \mark "Allegretto con moto"
      c'2.~( c8 h d c h a g4) a-.( h-. c-. d-. e-.) f( g) e d( e) c
      h8( d) h g d h g4 r r 
      c'2.~( c8 h d c h a g4) a-.( h-. c-. d-. e-.) f( a,) d
      \acciaccatura c8 b4( a) b c2 e4 e4.( f8 d h a4) e c'( h) e, e'(
      d c) d d4.( e8 c a g4) d h'( a) d, d'( c h) d d( e fis) g( h, e)
      d8( cis h a h cis) d2( cis4) c!2( h8 a) g4-.( fis-. g-.)
    }
  }
}