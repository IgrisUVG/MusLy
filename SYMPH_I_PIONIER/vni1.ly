\version "2.19.15"

\language "deutsch"

vniOneMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  es''16( c b as f es as, c b es f as des es f b c es f g as2.)
  b,,,16 des es f g b des es f ges a c
  \ottava #1
  \set Staff.ottavation = #"8"
  es ges a b b8 d,
  \ottava #0
  f, as, f des4. b'32( as g es c8~ c2.~ c) b4(
  b8 d f b d f as a h2 h--) h-- h-- h-- b--
  as16( g f es c b as f es2~ es)
  % solo
  es2:16~
  \time 3/4
  es 2.:16~ es4:16 r2 R2.*6
  c'2.( b4 as g f2.~ f2) as4( f'2~ f8 des b2 f4 es b' g'8 f
  es4.) des8( c b a2~ a8 c f4. des8 b' as b, as f4) r8 as,~(
  as2 c'4~ c2) r4 R2.*2
  \time 4/4
  c1:32 r4 as'2.~( as g4 f1 des2 c4 b c des8 b g4 f
  es16) c( des es~ es) b( c des~ des) as( b c~ c) des es f
  \tuplet 3/2 4 {g,8 b es b es g es g b g b es} b'1~ b2 r
  as,,8( b16 es fes) as b ces( es) ges as8-- es( fes
  as, ges es4) fes8( b as4) g( as2.)
  \bar "|."
}

vniOneMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*3 r4. h''8 ais2 e8 fis d4. cis8 h4 a r2.
  \bar "||"
  \unset beamExceptions
  %\unset baseMoment
  %\unset beatStructure
  a4 d8 e fis4( a g) h8( a g fis e d fis4) a8( g fis e d cis
  d4) h8( ais h4) \tuplet 3/2 {cis,8( d e} d2) e fis
  <<
    {
      g2
    }
    \\
    {
      r4 e
    }
  >>
  e2 h cis1
  #(define afterGraceFraction (cons 31 32))
  \afterGrace d''1\startTrillSpan {cis16(\stopTrillSpan d} a2) d4 e
  fis2 a g h4 a g fis e d8 r R1 r2 cis4( h a g) g( fis e d fis2 e) r R1
  r2.
  <<
    {
      s4 d''2
    }
    \\
    {
      \voiceOne
      %\omit TupletNumber
      s8 \tuplet 3/2 {fis,16 a a^~}
      \stemDown
      a2
    }
    \\
    {
      \voiceTwo
      %\omit TupletNumber
      \omit TupletBracket
      \once \override TupletNumber.Y-offset = -1.3
      \tuplet 3/2 {r16[ fis fis]} fis8~\noBeam fis2
    }
  >>
  cis'32 b a g e d cis b
  g' e d cis b a g e
  cis' b a g e d cis b
  g' e d cis b a g e
  r2 R1
  \repeat tremolo 16 {d''32 fis} \repeat tremolo 16 {d32 fis}
  \repeat tremolo 8 {d32 fis}
  \repeat tremolo 4 {cis32 fis} \repeat tremolo 4 {cis32 e}
  \repeat tremolo 12 {d32 fis}
  \repeat tremolo 2 {cis32 fis} \repeat tremolo 2 {cis32 e}
  \tuplet 9/8 2 {
    d'16 a fis d a gis a d fis
    \omit TupletNumber
    \omit TupletBracket
    a fis d a fis eis fis a d
    fis d a fis d cis d fis a
    d a fis  d a gis a d fis
    a fis d a fis eis fis a d
    fis d a fis d cis d fis a
    d a fis  d a gis a d fis
  }
  r2 R1*3
  \tuplet 3/2 4 {
    \undo \omit TupletNumber
    a8( h cis)
    \omit TupletNumber
    d4( h8) fis'( e d) d4( cis8) cis( d e) fis4( d8) a'( g fis) fis4( e8)
    e( fis g) a4( fis8) g( a h) c4( a8) h( cis? d)
  }
  eis4~
  \undo \omit TupletNumber
  \undo \omit TupletBracket
  \tuplet 3/2 {eis8 gis,,4~} gis4 R1
  \tuplet 9/8 2 {
    cis''16 a fis cis a gis a cis fis
    \omit TupletNumber
    a fis cis a fis eis fis a cis
    fis cis a fis cis his cis fis a
    cis a fis cis a gis a cis fis
    a fis cis a fis eis fis a cis
    fis cis a fis cis his cis fis a
  }
  R1 \repeat unfold 2 {e'8-- fis-- e'4--}
  \cadenzaOn
  b,1~ b  s4. s16
  \cadenzaOff
}

vniOneMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  des''2.:16~ des2.:16~ des2.:16~ des2.:16(
  c2.:16~) c2.:16( d2.:16~) d2.:16( e2.:16~) e2.:16(
  eses2.:16 des2.:16~) des2.:16( ces2.:16 b8) r r2 R2.*2
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. fes4( es8)
  g'8( as b) b4( f8) f( g as) as4( es8)
  es( f g) g4( f8) f( e d) d4( c8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  as2.:16~ as2.:16~ as2.:16~ as2:16 \tuplet 3/2 {f''4( es8)}
  g,,,16( as a b h c des d es e f fis g as a b h c des d es e f fis)
  a,2.:16~ a2.:16
  \repeat unfold 3 {\tuplet 3/2 {fes'4->( es8)}}
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  d8( e fis) fis4( cis8) cis( d e) e4( h8)
  h( cis d) d4( cis8) cis( h a) a4( gis8)
  R2.*16 b'4.~ b4 c,8 d4.~ d8. es16. f
  es4.~ es8. d16. c b4.~ b8. c16. g b4.( a) g,2.
  d''2.:16~ d2.:16~ d2.:16~ d2.:16  es2.:16  R2.*3
  g2.( fis4 es d c) r2 R2.*16
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    \tuplet 3/2 4 {g8( as-> b h des d e f g) as4( g8)}
  }
  r4 as-> r as-> r ceses-> r ces-> r2 R2.*2 r2 r8 e,,(
  \key a \major
  \time 2/4
  cis'4. d8 cis4. h8 a4. gis8 fis4) r8 fis(
  d'4. cis8 h4. a8 gis4) r8 e(
  e'4. fis8 e4. d8 cis4. h8 a4) r8 a( cis4. d8~ d4. a8 gis4) r R2*2
  \tuplet 3/2 4 {
    a'8 h cis h a gis
    fis gis a gis fis e
    cis d e gis, cis h
  }
  h2
  \tuplet 3/2 4 {
    a8 h cis h a gis
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
  as'2~( as a4. h8~ h2 c~ c~ c~ c)
  f,~( f~ f4 e~ e es~ es d~ d des~ des2) R2
  \repeat unfold 2 {\tuplet 3/2 2 {r4 c es as2( g4)}}
  R2 \tuplet 3/2 {as2( g4)} R2 f-> f->
  \time 3/4
}