\version "2.19.15"
\language "deutsch"
fluteMusicErste = \relative {
  \time 6/4
  \key b \major
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  e''2.( c4 h e, es!1) r2 R1. a'4( f des8 c as4 es'') r8 r16 f,,(
  \times 2/3 {b8 c des} es8 f) r4 des( des, e f1) r8 a''~ a as
  r2 r4 r16 \times 2/3{a,,32( g fis)} r8 r2 R1.*2
  r2 \times 2/3 {r8 as( des} e2) r4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2 2 2)
  as,4. r8 r4 g4.( a8) c32 e g e c'-> e, c g r1.
  r4 f'32( as h d f as f d h as f d 
  h as f d des16) r8. 
  \set subdivideBeams = ##f
  des'16( es f as) ces4 as'2 r1
  \set subdivideBeams = ##t
  r e,4 f8~( f32 as des es f des as f des as f es) r1
  r16 f'16.( fes) r16 g16.( as~ as16 g16. f! fes32) r16.
  r a32~ a a'8.. ais4.( a8~ a1) r2
  e2.( c4 h e, es!4) r4 r1 f'2.( des4 c f, e) r2
  r32 c'( d c g c d c a c d c g c d c a c d c g c d c)
  r8 \acciaccatura es8 e~ e1 r4 r2 r4
  \times 8/11 {r32[ e,( f fis g gis a b h c cis]} d2) c1.
  \bar "|."
}
fluteMusicZweite = \relative {
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  %\once\override Score.RehearsalMark.extra-offset = #'(15 . 0)
  %\mark\markup { \text \small {Wiederholen viermal \italic { ad lib. } }}
  R1*4 \bar ":|." R1*10
  g''8^\markup {\italic legato} c es f
  \repeat unfold 2 {g as g f es c b es, d b d es b' c es f} g as g f es c b
  \repeat unfold 4 {es, d b d es g b c es f g as g f es c b g}
  es d b d es f g b c es f g as
  b( g es c b g es c b g f es b' g es c c' b c b) ces'2( b1~ b)
  es'8( c as g as g es c as g es c es c as g) d''2( g~ g c,~ c) r
  ces'8( as f es ces as f es ces as f es as f es des) es''1 f~
  \override Glissando.style = #'trill
  #(define afterGraceFraction (cons 15 16))
  \afterGrace f {\hideNotes d16\glissando \unHideNotes} g1
  d,,8( es g as c es f g b c d es g es d c b as g f) es( c f es 
  g f b g c b es c g'1~ g2) r R1*6 r4 f,,2( c'4~ c f,2.~ f4 f-- c'-- f--~
  f2 c es1)
  h2~^\markup {\italic legato} h8 e fis gis h a g! fis e fis a d
  fis h, e cis h fis e h dis cis ais fis cis' ais fis e
  dis fis h cis h e fis gis h a g! fis e fis a d
  dis his gis fisis his gis fisis dis
  aisis' fisis eisis disis eisis disis his aisis gis'1~ gis~ gis e'! es
  R1*3 r2. b,4~ b1~ b R1*4 g'1~ g~ g~ g2 r
  g( f b,2. es4 c' b2.~ b2) g( f b,~ b1) ces~ ces
  fes2( es as,2. des4 b' as2.~ as4 g8 f es4 c f,1~) f( ges)( 
  f)~ f~ f~ f~ f~ f~ f~ f R1*3 g'1( f)
  \repeat unfold 9 {R1*2 g1( f)} d'4-- d-- d-- d^\markup {\italic sim.}
  \repeat unfold 20 {d4} g,,! g g g \repeat unfold 27 {b'} b\fermata
  \bar "|."
}
fluteDynamicZweite = {
  s1*4
}