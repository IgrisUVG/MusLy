\version "2.19.15"

\language "deutsch"

clarinettoMusicErste = \relative {
  \time 6/4
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  a''2.( f4 d c as2) r1 R1.
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2 2 2)
  r32 g b( a f16 fis) r4 r4 \stemUp as32[( f es f] \stemNeutral as[ h d g])
  r c[_( a! f] \stemUp c[ b f c] as des es des' f,16 as~ \stemNeutral
  \times 2/3 {as8 b4} g8 f des4) as'' f,_( g a!1)
  r16. c'32~ c[ c16.]~ c[ des32]~ des[ des16.]
  f,,,2\startTrillSpan r16\stopTrillSpan \times 2/3{c'32( b a)}
  r16 \times 2/3 {e'32( d cis)} r4 r16 \times 2/3 {f32( es d)} r8
  r16 \times 2/3 {des32( ces b)} r8 \times 2/3 {des32( ces b)}
  r16 r8 r4 r1 a4.( c8 d c a4. f8\noBeam des' c
  as4) \times 2/3 {f8( as4~} as4 c2) des'32( c as e c e as b
  c4.) r8 r4 c,2 r4 es2~_( \times 2/3 {es8 f as} es'2.)
  \set subdivideBeams = ##f
  as2.( f4 des) es,16( f as des f2)
  \set subdivideBeams = ##t
  es32( des as f des es f as) r4 r2
  fis8( f4 e8 es d
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 16 {
    e32 a, \set stemRightBeamCount = #2 d
    \set stemLeftBeamCount = #2 e d e
    \omit TupletNumber
    a e \set stemRightBeamCount = #2 a
    \set stemLeftBeamCount = #2 d a d e d \set stemRightBeamCount = #2 a
    \set stemLeftBeamCount = #2 d a e a e \set stemRightBeamCount = #2 d
    \set stemLeftBeamCount = #2 e d a
  }
  as4) r4 cis32( es fis a cis es fis a cis es fis es cis a fis es
  cis a fis) f( as des c as) fis( a des es des c a c)
  \override TrillSpanner #'(bound-details right padding) = #1.5
  des4~\startTrillSpan des!2( cis)\startTrillSpan
  cis4.(\stopTrillSpan\glissando c'!8)
  d1 r2 e,,2.( c4 h e, es!4) r r2 r4 des'8( es)
  f2.( des4 c f,) e32( g a c d e g a c d a' g e f fis g
  a c d c g c d c e8) r r g,,4. r16 g8.~ g1 r4
  r \times 4/5 {r16[ c,( des es fis]} g1) g1.
  \bar "|."
}

clarinettoMusicZweite = \relative {
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  %\once\override Score.RehearsalMark.extra-offset = #'(15 . 0)
  %\mark\markup { \text \small {Wiederholen viermal \italic { ad lib. } }}
  R1*4 \bar ":|."
  r2 fis h fis~ fis4 fis-- h-- fis'->~ fis h,2-> d4->~ d1~ d2 r
  r4 fis,2-> h4->~ h fis2.~ fis4 fis-- h-- fis'->~ fis2 h,-> d1->~ d~ d~ d
  R1*12
  es'1~( es8 c b g c b g es g es g d ces b g es b' g es d es g es c'
  b g es c' b es g b) c2 es es'8( c as g as g es c es c as g c as g es
  c h c as) f''2~ f g8( as g f g2) es' f,8( es ces as ces as g f
  as f es ces f es ces as g f as f b g f d' ces g as b ces des es f
  g2) es,8( f g b) f''4( es b2) b4( ces b2~ b) es8( c b g
  es d b g) c( b g f es1~ es2) r r c' f c~ c4 c-- f-- c'--~
  c f,2 as4~ as1~ as2 r g,1~( g~ g~ g as)
  fis2~-\markup {\italic legato} fis8 gis h dis h' e d h a d, fis a
  h fis' gis fis e h gis fis gis fis e dis cis h ais fis
  dis fis gis h fis gis h dis h' e d h a d, fis a
  his cisis his gis his ais gis fisis
  his aisis fisis disis fisis eis disis aisis
  ais2( dis4 ais' fis2 cis'4 fis e1) g ges
  R1*3 r2. e,4~ e1~ e R1*4 d'1~( d~ d~ d2 es) R1*5
  r2 as,( ges ces,~ ces2. fes4 des' ces~ ces8) b( ces des
  es fes ges as b ces des es fes ces des as ges4 des ces b es,2~
  es) d4( c b1 ces c!2) g~ g1~ g2
  \repeat unfold 11 {f2( g c g') f,( g c f)} f,( g c g') f,~
  f fis h fis~ fis4 fis-- h-- fis'->~ fis h,2-> d4->~ d1~ d
  d4-- d-- d-- d-- f'-- f-- f-- f^\markup {\italic sim.}
  \repeat unfold 5 {f! f f f} f f f f\fermata
  \bar "|."

}
clarinettoDynamicZweite = {
  s1*4
  s4 s4\f s2 s s\< s4\sf s2.\p s s4\p s1\> s4 s2.\!
  s1 s4 s2.\< s4\sf s2.\p s1 s2\p s2\> s1 s s\!
}