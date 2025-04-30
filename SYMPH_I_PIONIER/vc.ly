\version "2.19.15"

\language "deutsch"

vcMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  as,8( b16 es c) f-. as-. g( f2)
  c8( es16 g as-.) b-. c8~ c2
  des,8-. c( b4--)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  des32( es f c d c b a ges b a ges f es d c)
  b'2 r4 as'8 des, es4 r as,8 c es f <c as'>4. c8 es f b,4
  b1 dis e~ e2 es b as~ as r
  \time 3/4
  R2.*18 r2 r8 <as c>8~ q2.~ q2 r4 R2.*2
  \time 4/4
  des2.:16 as4 R1*2 r4 f'2.~ f2:16 es4:16 des4:16 c4:16 b2.:16~
  b2:16 as4:16 g4:16 es2.:16~ es8:16 es8 R1*2
  as1~ as4 as as as as as2.
  \bar "|."
}

vcMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  r2 r16 d( fis) fis fis fis fis g ais ais ais g fis cis d d d d cis h h h h h
  h h h c c c c d es f ges a g e e e e e e e d d d d c h h h b b b b
  a a a a g g g h h h c c c d d d e e e fis fis g a <fis h>~ q2
  \bar "||"
  \unset beamExceptions
  R1*6 h,4 e8 fis g4( h a) cis8( h a g fis e d1)
  \repeat unfold 10 {a8-.} r2. R1 r2.
  g'16 a32( h c h a g
  fis16) g32( a h a g fis
  e16) fis32( g a g fis e
  d16) e32( fis g fis e d
  cis16) d32( e fis e d cis
  h16) cis32( d e d cis h
  a4) r2 R1*2
  <<
    {
      \tuplet 3/2 {r16[ a e']} e4.
    }
    \\
    {
      \omit TupletNumber
      \tuplet 3/2 {s16 a,8~} a4.
    }
  >>
  <cis' e>8 r4. <h d>2 r8 \tuplet 3/2 {r16[ fis fis]}
  <<
    {
      \omit TupletBracket
      \tuplet 3/2 {fis16 a a} a8\noBeam~ a1~ a2
    }
    \\
    {
      fis4~ fis1~ fis2
    }
  >>
  r2 R1 cis'32 b a g e d cis b r2. R1*4
  d4 g8 a h4( d cis) e8( d cis h a g a4) h8( a g fis e d
  e4) g8( fis e d cis h) a4_( h g a~ a h his cis~ cis2 d)
  cis4( d2 e4 fis2. g4 a2 d,) R1 r4
  \tuplet 6/4 4 {
    cis'16 h gis eis cis h gis eis cis eis gis h
  }
  r4 fis'4 h8 cis d4( fis e) g8( fis e d cis h cis4) d8( cis h a g fis
  g4) h8( a g fis e d cis1) 
  \cadenzaOn
  g1~ g  s4. s16
  \cadenzaOff
}

vcMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  f2.( e4 des c b2.~ b2) des4( g2.-> e4 b' a as!2) g4(
  ges2->) f4( fes2->) fes4:16~ fes!2.:16 f!2.:16 fes2.:16
  des2.:16 d2.:16 es8 r r2 R2.*2  
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. fes4( es8)
  es4. d des! c b b' a fis4( g8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  c,2.( h4 as g f2.~ f2) as4( des2. h4 f' e es2) d4(
  des!2) c4( ces2) \tuplet 3/2 {fes4( es8)} 
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  a8( b d4 a) a8( h~ h4 g8 gis) gis( a~ a4 a,) a8( gis fis) fis4( e8)
  R2.*5 es'2.~( es d4. c b2.) R2.*6 r4. e4( es8 b2.)
  b2.( a g fis g8--) g-- g-- g-- g-- g--
  g-- g-- g-- g-- g-- g-- R2.
  g8-- g-- g-- g-- g-- g-- g-- g-- g-- g-- g-- g-- R2.
  r4 g16 as g a g b g h g c g des'
  g, d' g, es' g, e' g, f' g, fis' g, g'
  g, as' g, a' g, b' g, a' g, as' g, g'
  g, fis' g, f' g, e' g, es' g, d' g, des'
  g, c g h g b g a g as g8 g r8 a( b c->) r c( d->) r d(
  es->) r4 r4. R2.*8 r4. r8 a,( b c) r c( d) r d(
  es) r4 r4. R2.*3
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    \tuplet 3/2 4 {g,8( as b h des d e f g) as4( g8)}
  }
  \tuplet 3/2 {g,8( as b}
  ces4)-> \tuplet 3/2 {as8( b ces} des4)->
  \tuplet 3/2 {b8( ces des} eses4)-> \tuplet 3/2 {ces8( des eses}
  fes4)-> r2 R2.*3
  \key a \major
  \time 2/4
  a,2( cis fis,~ fis4) r d'2( dis e4) r
  cis2( h a fis4) r e'2 d cis R2*2
  a4 gis fis e e' eis fis2 a,4 gis fis cis' dis cis dis cis es des es2  
  \key as \major
  as c f,~ f4 r des'2 d es c b as f R2*3
  as2~( as fis~ fis8)[ g( fis e)] e2~( e4 f g as b2 c)
  as~( as4 g~ g ges~ ges f~ f fes~ fes2) R2
  as,2_( es' as, f) f->~ f f-> f-> f->
  \time 3/4
  f2.( des'4 es2 f2. es4 des2 c2.~ c4) des es e f r
  as,2.~ as4 c( b c2.) b4( c b c2.~ c~ c4) as'( c,
  des es) b( c) h( b as2.) e~ e4 r8 des16_( es f g as b
  c2. des4 c b as2. b4 as f e2.)
  f4( b as g2 f4) f2.
  \bar "|."
}