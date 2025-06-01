\version "2.19.15"

\language "deutsch"

vleMusic = \relative {
  \key as \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef alto
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  es16( as b c es des as8) f16( as c des f des as f)
  es8( g4 f16 es~ es8 b'16 c~ c as g f)
  b( des es as es b ges des) f( as c e ges es b f~ f1)
  as16( g es8~ es2.~ es) es4( f1 fis2 fis4 e) d1~ d2 des
  f16( g as b c des es f as2~ as) r
  \time 3/4
  R2.*18 r2 r8 es,8~ es2.~ es2 r4 R2.*2
  \time 4/4
  des16_( f as c es g b g es c as f es4)
  r4 es'16 as,8.~ as2 c4_( b as g as2 b4. b'8 as4 des, es f
  g b, c f, g) r2. R1 g'1~ g2 r es,1~ es4 es es es es es2.
  \bar "|."
}

vleMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef alto
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*2 r8 fis' e2 h8 cis a4. g8 fis4 e c4. d e8 g a4 cis2.
  \bar "||"
  \override Score.RehearsalMark.extra-offset = #'(10 . 2)
  \mark "Allegro pastorale"
  \unset beamExceptions
  R1*3 fis,4 h8 cis d4( fis e) g8( fis e d cis h d4) fis8( e d cis h a
  gis2) g a1~ a
  \tuplet 3/2 8 {
    \omit TupletBracket
    a16( h c) fis,( g a)
    \omit TupletNumber
    d,( e fis) e( fis g) g( a h) a( h c) d( a fis) g( fis cis?)
  }
  d8 a' fis fis' f e d a
  \undo \omit TupletNumber
  \tuplet 3/2 {h16( d h)} r8 fis d' g, a a
  \tuplet 3/2 8 {
    d16( cis h
    \omit TupletNumber
    a g fis) h( a g fis e d) a'( g fis e d cis
  }
  d4) r8 R1*4 r8
  <<
    {
      \omit TupletBracket
      \omit TupletNumber
      s8 \tuplet 3/2 8 {cis'16 a' a a a a}
    }
    \\
    {
      \omit TupletBracket
      \tuplet 3/2 {r16[ cis, cis]} cis4
    }
  >>
  <g' b>8 r4. f2 r4 r8 \tuplet 3/2 {r16[ d d]}
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      s8 \tuplet 3/2 {fis16 a a} a4~
      \stemDown
      a2~ a
    }
    \\
    {
      \voiceOne
      \tuplet 3/2 {d,16 fis fis}
      \stemDown
      fis4._~ fis2~ fis
    }
    \\
    {
      \voiceTwo
      d2~ d~ d
    }
  >>
  r2 r2. g32 e d cis b a g e R1*2
  a4 d8 e fis4( a g) h8( a g fis e d fis4) a8( g fis e d cis)
  R1 r2 a a a r
  \undo \omit TupletNumber
  \tuplet 9/8 2 {a'16 fis d a fis eis fis a d}
  \tuplet 3/2 4 {
    a8( h cis)
    \omit TupletNumber
    d4( h8) fis'( e d) d4( cis8) cis( d e) fis4( d8) a'( g fis) fis4( e8)
    e( fis g) a4( fis8) fis( g a) h4( a8)
    a,8( h cis) d4( h8) fis'( e d) d4( cis8)
    cis( d e) fis4( d8) a'( g fis) fis4( e8)
    e( fis g) a4( fis8) g( a h) c4( a8)
  }
  \undo \omit TupletNumber
  \tuplet 6/4 {h,16 cis eis gis h cis} r2. R1*2 r2 a, a a
  \tuplet 9/8 2 {
    cis'16 a fis cis a gis a cis fis
    \omit TupletNumber
    a fis cis a fis eis fis a cis
  }
  R1
  \cadenzaOn
  cis1~ cis  s4. s16
  \cadenzaOff
}

vleMusicVier = \relative {
  \key as \major
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef alto
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  des'2.:16~ des2.:16~ des2.:16~ des2.:16(
  c2.:16~) c2.:16( h2.:16~) h2.:16( c2.:16~) c2.:16
  ces2.:16_( b2.:16 as2.:16~) as2.:16( b8) r r2 R2.*2
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. b4( as8)
  R2.*3 r4. dis4( e8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  as,2.:16~ as2.:16~ as2.:16~ as2.:16
  g2.:16~ g2.:16 fis2.:16~ fis2.:16
  \repeat unfold 3 {\tuplet 3/2 {fes'4->( es8)}}
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  d8( e fis) fis4( cis8) cis( d e) e4( h8)
  h( cis d) d4( cis8) cis( h a) a4( gis8)
  R2.*7 r4. e'4~ e32 es16. es4.->( d8) r r R2.*7
  es4.( d) b2.( a g fis d) r4. r8 a'( b c->) r c( d->) r d(
  es->) r4 r4. R2.
  g,16 as g a g b g h g c g des'
  g, d' g, es' g, e' g, f' g, fis' g, g'
  g, as' g, a' g, b' g, a' g, as' g, g'
  g, fis' g, f' g, e' g, es' g, d' g, des'
  g, c g h g b g a g as g8 r2 d'4 R2.*17
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    \tuplet 3/2 4 {g8( as b h, des d e f g) as4( g8)}
  }
  r4 eses-> r f-> r geses-> r as r2 R2.*2 r2 r8 e,(
  \key a \major
  \time 2/4
  cis'4. d8 cis4. h8 a4. gis8 fis4) r8 fis(
  d'4. cis8 h4. a8 gis4) r8 e(
  e'4. fis8 e4. d8 cis4. h8 a4) r8 a( cis4. d8~ d4. a8 gis4) r R2*6
  \tuplet 3/2 4 {
    a8 h cis h a gis
    fis gis a gis fis eis
    dis eis fis gis fis eis
    dis eis fis gis fis eis
    es f g as g f
  }
  es2
  \key as \major
  R2*7
  es'4.( f8 es4. des8 c4. b8 as4) r8 as R2*6
  fis'2( g) g4( f! e d c b as2)
  as'~( as4 g~ g ges~ ges f~ f fes~ fes2) R2
  \tuplet 3/2 2 {r4 as, as as2( g4) as as as as2( g4)}
  R2 \tuplet 3/2 {as2( g4)} R2 f-> f->
  \time 3/4  
  c'2.( des4 c b as2. b4 as f e2.) f4 as b g r2
  R2.*3
  r4 r8 des16( es f g as b
  \override Score.RehearsalMark.extra-offset = #'(6 . 1)
  \mark "Moderato" 
  c2. des4 c b as2.) b4( as f e2.)
  f4( as b g2. f4) f r
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "Adagio"
  R2.*8
  \bar "|."
}