\version "2.18.0"

\language "deutsch"

\header {
  title = "ЭТЮД"
  composer = "К. БЕРМАН"
  arranger = ""
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
  \relative c' {
    \clef treble
    \key as \major
    \time 4/4
    \compressFullBarRests
    %\override BreathingSign.Y-offset = #2.6
    \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
    es16( as c es f es c as) es( as c es f es c as)
    es( as c es f es c es) b'( as es c f es c as)
    f'( g, des' es f es des g,) f'( g, des' es f es des g,)
    as'( g es des c' b g es) as( g es des c' b g es) %\breathe
    f( es c as es as c es) f( es c as es as c es)
    f( es c es b' as es as) des( c as es f es c as)
    es'( des b f' es des g, f') es( des b f' es des g, f')
    es( des b des as' g des es) c'( b g es des b g des)
    c( as g as c as e as c as f as c as e as)
    c( as f as c as e as c as f as c as e as)
    c-. as( g as) des-. as( g as) d-. as( g as) es'-. as,( g as)
    e'-. as,( g as) f'-. as,( g as) ges'-. as,( g as) g'-. as,( g as)
    as'-. as,( g as) es''-. es,( d es) ges-. ges,( f ges) des''!-. des,( c des)
    e'-. e,( dis e h'') h,,( ais h fis'') dis( cisis dis fisis dis cisis dis)
    gis( dis cisis dis gisis dis cisis dis ais' dis, cisis dis gisis dis cisis dis)
    b'! es,!( d es g) b,( a b) es( b f es b' g es c)
    b-. a( as) g-. as-. g( as) a-. b-. a( as) g-. as-. g( as) a-.
    b-. a( b) h-. c-. h( c) a-. b-. a( b) h-. c-. h( c) d
    es es'(d es f es d es es') es,( d es f es d es)
    es,-. es'(d es f es d es es') es,( d es f es d es)
    des,!-. es'(d es f es d es es') es,( d es f es d es)
    ces,-. es'(d es f es d es es') es,( d es f es d es)
    b,-. es'(d es f es d es es') es,( d es f es d es)
    a,,-. es''( d es) c,! es'( d es) es,-. es'( d es) ges,-. es'( d es)
    f( es d f es d f es d f es d f es d f
    es) b( a b g' es d es) b'( g es b g es b g)
    as( f as es' d f, as es' d f, as es' d as b f')
    es es'( d es es') es,,( d es h d f as h es d as')
    es, es'( d es es') es,,( d es h d f as h es d as')
    es,-. es'(d es f es d es) des,!-. es'(d es f es d es)
    c,-. es'(d es f es d es) b,-. es'(d es f es d es)
    as,,( as' c es f es c as) as,( as' c es f es c as)
    as,( as' c es f es c es) b'( as es c f es c as)
    f'( g, des' es f es des g,) f'( g, des' es f es des g,)
    f'( g, des' es f es des g,) as'( g es des) c'( b g es)
    as es( g) es( as) es( a) es( b') es,( a) es( b') es,( h') es,
    c'( as! es c) as'( f des as) es'( c as es) des( es g es')
    as es( g) es( as) es( a) es( b') es,( a) es( b') es,( h') es,
    c'( as! es c) as'( f des as) es'( c as es) des( es g es')
    \repeat unfold 4 {as( es c es)}
  }
}