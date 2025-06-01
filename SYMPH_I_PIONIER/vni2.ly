\version "2.19.15"

\language "deutsch"

vniTwoMusic = \relative {
  \key as \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  as16(c es as c as es c) as( c f as des as f des)
  c( as es' c b4) es16( g b es as, f es des)
  des( f as c b g des b) as( des e a b f d b~ b2) des?
  b'32( as g es c8~ c2.~ c) es4_(
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  f32 fis g as a b h c des d es e f fis g as
  b as g fis f e es  d des c h b a as g fis fis2 fis)
  e1~ e2 es es4-- es-- es2--~ es r
  \time 3/4
  R2.*18 r2 r8 as,8~ as2.~ as2 r4 R2.*2
  \time 4/4
  c1:32 r2. r8 f\turn( es4) es_( des b c4. c'8 b2
  \set subdivideBeams = ##f
  as4~ as16) des,( f as~ as) des,( es as~ as) des,( f as~
  as) c,( es g~ g) b,( des f~ f) b,_( c f g) b es f g4 es c r
  es,4. r8 r2 r2. g8( as16 des
  es) g as b( des) fes g-- g, des'8( es g, e des4) r2.
  r4 es,( des) des des( c2.)
  \bar "|."
}

vniTwoMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*4 r4 d''8 h a h e, d R1
  \bar "||"
  \override Score.RehearsalMark.extra-offset = #'(10 . 2)
  \mark "Allegro pastorale"
  fis4( gis a d,) h'( d a2) d,4( fis cis2)
  d4 e \tuplet 3/2 {fis8( g a)} a8. gis16 a2 a a
  <<
    {
      r4 cis
    }
    \\
    {
      b2
    }
  >>
  h!16-"legato" a h cis d cis h a g d' h g a h cis g
  fis a d fis e fis d fis cis d a b d, h' a g
  \tuplet 3/2 8 {
    \omit TupletBracket
    fis16( g a h cis d
    \omit TupletNumber
    e fis g a h cis
    d cis h a g fis e d cis h a g
  }
  fis2) r
  \tuplet 3/2 8 {
    \undo \omit TupletNumber
    d16( d' d,)
    \omit TupletNumber
    fis( d' fis,) ais( d ais) a( d a)
    as( d as) g( d' g,) fis( d' fis,) e( d' e,)
  }
  d'8
  \tuplet 3/2 8 {
    g,16( d' g,) a( d a) fis( d' fis,) g( h g) fis( a fis) e( a e)
  }
  fis8( e d) a'8( d cis4) d8( e, fis g a) cis,( h) g'( e) a,(
  gis) e'( d4)
  \undo \omit TupletNumber
  \repeat percent 4 {\tuplet 3/2 8 {a'16 cis e a, cis e}}
  \omit TupletNumber
  \repeat percent 2 {\tuplet 3/2 8 {fis,16 a d fis, a d}}
  \tuplet 3/2 8 {g,16 ais cis g ais cis fis, h d gis, h d}
  \repeat percent 2 {\tuplet 3/2 8 {a16 h dis a h dis}}
  \tuplet 3/2 8 {a16 cis e a, cis e a, cis e cis cis cis}
  e32 d cis h a g fis e h' a g fis h8 gis2 r
  \undo \omit TupletNumber
  r4 \tuplet 3/2 {r16[ d' d]}
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      \omit TupletNumber
      s4 \tuplet 3/2 {a'16 d d} d4~ d2
    }
    \\
    {
      \omit TupletNumber
      \stemUp
      s8 \tuplet 3/2 {fis,16 a a}
      \stemDown
      a4.^~
      \stemUp
      a2
    }
    \\
    {
      \tuplet 3/2 {d,16 fis fis}
      \stemDown
      fis2_~ fis
    }
    \\
    {
      d8~ d2~ d
    }
  >>
  r2 r cis32 b a g e d cis b r4 R1
  \repeat tremolo 16 {a''32 d} \repeat tremolo 16 {a32 d}
  \repeat tremolo 8 {h32 d} \repeat tremolo 8 {b32 cis}
  \repeat tremolo 8 {a32 d}
  \repeat tremolo 4 {h32 d} \repeat tremolo 4 {a32 cis}
  a2 a a r R1 a2 a
  cis,,4( d2 e4 fis2. g4 a2 d,) e4( fis g a) a,_( h' a g fis1)
  r4 \tuplet 6/4 4 {
    eis'16 gis  h
    \ottava #1
    \set Staff.ottavation = #"8"
    cis eis gis h
    \ottava #0
    eis,, gis  h
    \ottava #1
    \set Staff.ottavation = #"8"
    cis eis gis h gis eis cis h
    \ottava #0
    gis eis cis h gis eis
  }
  r2 gis4 a2 a a r R1 a'2 a
  \repeat tremolo 8 {a32 cis} \repeat tremolo 8 {a32 c}
  \cadenzaOn
  b1~ b  s4. s16
  \cadenzaOff
}

vniTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  b'2.:16~ b2.:16~ b2.:16~ b2.:16~ b2.:16~ b2.:16(
  h2.:16~) h2.:16( as2.:16~) as2.:16~ as2.:16(
  b2.:16 as2.:16~) as2.:16( g8) r r2 R2.*2
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. des4( c8)
  es'8( f g) g4( d8) des!( es f) f4( c8)
  c( des es) es4( d8) d( c b) a4( g8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  f2.:16~ f2.:16~ f2.:16~ f2:16 \tuplet 3/2 {f'4( es8)}
  f,2.:16~ f2.:16 fis2.:16~ fis2.:16
  \repeat unfold 3 {\tuplet 3/2 {fes4->( es8)}}
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  fis8( g a) a4( e8) e( fis g) g4( d8) d( e fis) fis4( e8) e( dis cis) h4.
  R2.*7 r4. e4~ e32 es16. es4.->( d8) r r R2.*7
  b'4.~ b4 c,8 d4.~ d8. es16. f
  es4.~ es8. d16. c b4.~ b8. c16. g b4.( a) g2.
  g'2.:16~ g2.:16~ g2.:16~ g2.:16  a2.:16  R2.*22
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    \tuplet 3/2 4 {g8( as b h des d e f g) as4( g8)}
  }
  r4 ces,-> r des-> r eses-> r fes-> r2 R2.*3
  \key a \major
  \time 2/4
  a,2( gis fis~ fis4) r8 fis~( fis2 gis~ gis4) r8 e(
  e4. fis8 e4. d8 cis4. h8 a4) r8 a( cis4. d8~ d4. a8 gis4) r R2*2
  \tuplet 3/2 4 {
    a'8 h cis h a gis
    fis gis a gis fis e
    cis d e gis, cis h
  }
  h2
  \tuplet 3/2 4 {
    a'8 h cis h a gis
    fis gis a gis fis eis
    dis eis fis gis fis eis
    dis eis fis gis fis eis
    es f g as g f
  }
  es2  
  \key as \major
  R2*5
  b'4.( as8 g4) r8 g(
  es'4. f8 es4. des8 c4. b8 as4) r8 as R2*3
  as2~( as a4. h8~ h2 c~ c~ c~ c)
  f,~( f~ f4 e~ e es~ es d~ d des~ des2) R2
  \repeat unfold 2 {\tuplet 3/2 2 {r4 c es as2( g4)}}
  R2 \tuplet 3/2 {as2( g4)} R2 f-> f->
  \time 3/4
  c'2.( des4 c b as2. b4 as f e2.) f4 as b g r2
  c'2.( des4 c b as2. b4) r8 des,,16( es f g as b
  \override Score.RehearsalMark.extra-offset = #'(6 . 1)
  \mark "Moderato" 
  c2. des4 c b as2.) b4( as f e2.)
  f4( as b g2. f4) f r
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "Adagio"
  R2.*8
  \bar "|."
}