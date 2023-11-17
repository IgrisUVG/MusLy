\version "2.19.15"

\language "deutsch"

oboeMusicErste = \relative {
  \time 6/4
  \key b \major
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  d''2.( f,4 es c des1) r2 R1.
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  r32 c' c c des( as) es'( c) r d( c b c e d c)
  r b([ as h) r \set stemLeftBeamCount = #1 a( g b)] r4 r r8 des,16( es
  \times 2/3 {des8 es f} g8 as) r4 f( des2 c1) 
  r16 f'~ f[ f]~ f[ es]~ es[ es] r2. \times 2/3 {f,32( e d)} r16
  r8 \times 2/3 {a'32( g fis)} r16 r8 \times 2/3 {f32( e d)} r16 r8
  R1.*2 r4 \times 2/3 {r4 c8(} f4 g2) r4
  des4. es'16 d! \times 2/3 {h8 as f} es4.( f8) r4 r1.
  r8 f32( as h d) f4~ f16 r8. des,16( es f as) r4 ces
  b2 r4 des4.~( des32[ as des f] as es' cis a fis es cis a)
  r2 r4 r16 \times 2/3 {r32[ d,16]~} d8~ d4 des32( f as des f16) r r1.
  r2 r32 e16.( g) r32 r fis16.( g) r32 dis4.( es8) d!1 r2
  g2.( es4 e gis,) 
  \set subdivideBeams = ##f
  \times 4/6 {as16[( g fes es des) r]} r4 r1
  a''2.( f4 e as, gis) r r2 a r16. d32~\noBeam d8~ d1 r4
  r2 \times 4/5 {r16[ a( b c d]} es2.) e1.
  \bar "|."
}

oboeMusicZweite = \relative {
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  %\once\override Score.RehearsalMark.extra-offset = #'(15 . 0)
  %\mark\markup { \text \small {Wiederholen viermal \italic { ad lib. } }}
  R1*4 \bar ":|." R1*26
  es''1~ es b8( g b g) ces2( b1~ b) c2 es--~ es1 d2( g~
  g c,~ c) g8( as g f g4 es'2.~ es1~ es) f~
  \override Glissando.style = #'trill
  \afterGrace f {\hideNotes d16\glissando \unHideNotes} g1
  c,4( b f2) f4( fis g2) as1 g as~ as2 r R1*3 r2. des,4~ des1~ des2 r
  r4 c2( f4~ f c2.~ c4 c-- f-- c'--~ c2 f, ces'1)
  dis,1-\markup {\italic legato} d!4 fis8 a d a d fis
  h e, h' gis fis e cis gis cis ais gis fis ais gis dis cis
  h dis e fis gis h gis fis d! e fis a d a d fis
  fisis gis eis dis fisis dis cisis his
  eisis disis his aisis his aisis fisis disis dis1( ais' h) fis f!
  r2 h e h~ h4 h e h'~ h e,2 f!4~ f1~ f
  r4 h,2 e4~ e h2.~ h4 h e h'~ h2 e, r as,~ as des~ des as
  c( b es,2. as4 f' es2.~ es2) c( b es,~ es1~ es) es2( fes ges1~ ges)
  fes ges2 fes'8( ces des as b1~ b~ b)( ces)( c!)~ c~ c~ c~ c~ c~ c~ c
  R1*3 b1( a) \repeat unfold 9 {R1*2 b1( a)}
  gis'4-- gis-- gis-- gis^\markup {\italic sim.}
  \repeat unfold 20 {gis4} gis, gis gis gis 
  \repeat unfold 27 {es'} es\fermata
  \bar "|."
}

oboeDynamicZweite = {
  s1*4
}