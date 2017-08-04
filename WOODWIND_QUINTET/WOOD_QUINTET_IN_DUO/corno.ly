\version "2.19.15"
\language "deutsch"
cornoMusicErste = \relative {
  \time 6/4
  \key b \major
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  c'2.( b4 fis gis f!1) r2
  \clef bass
  f,1.
  \clef treble
  r16 f''32( e) r8 r4 r2. r8 as,16( h
  \times 2/3 {f8) g( as} c,8 des) r4 f( as b a!1)
  r32 c'16.~ c[ c32]~ c[ as16.]~ as[ as32] R1.*3
  r2. e,2 r4 f4. r8 r1 r1. f'1.~ f2 r1 gis4 a f e16 r8. r4 as,
  r1 r4 as, r2 r4 r32 a'8.. cis4.( c8) d1 r2
  c2.(as4 gis h, c) r2
  \clef bass
  des,8( es f2)
  \clef treble
  d''2.( as4 gis des c) c'' r2. as,4
  r32 as16.~\noBeam as8~ as1 r4
  c,2.~ c h'1.
  \bar "|."
}
cornoMusicZweite = \relative {
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  %\once\override Score.RehearsalMark.extra-offset = #'(15 . 0)
  %\mark\markup { \text \small {Wiederholen viermal \italic { ad lib. } }}
  R1*4 \bar ":|." 
  r2 h fis' h,~ h4 h-- fis'-- h->~ h fis2-> a4->~ a1~ a2 r
  r4 h,2-> fis'4->~ fis h,2.~ h4 h-- fis'-- h->~ h2 fis-> a1->~ a~ a~ a
  R1*12 es1~ es~ es 
  \clef bass
  f,,2 g~ g1 
  \clef treble
  c'2 es~ es1
  \clef bass
  c,,~ c~ c
  \clef treble
  g''4( es'2.~ es1~ es)
  \clef bass
  ces,,1~ ces
  \clef treble
  b''1~ b~ b f'2( e es1) ces~ ces2 r r f, c' f,~ f4 f-- c'-- f--~
  f c2 es4~ es1~ es2 r 
  \clef bass
  c,1~( c~ c~ c des)
  dis2( cis fis,2. h4 gis' fis2.~ fis2)
  dis2( cis fis,~ fis2. h4 gis' fisis2.~ fisis2) r
  \clef treble
  his1~( his2 cis dis1) fis,2( h ais1)
  a!->~ a~ a~ a~ a~ a a->~( a~ a~ a~ a~ a~ a~ a2 as f) r
  g'( f b,2. es4 c' b2.~ b2) g( f b, fes des) R1 as''2( ges
  ces,1) des g2( f b,2. es4 c' b2.~ b2 des, 
  as'1~ as~ as~ as~ as~ as~ as~ as) R1*13
  r2 f, c' f,~ f4 f c' f~ f c2 es4~ es1~ es R1
  r4 f,2 c'4~ c f,2.~ f4 f c' f~ f2 c es1~ es R1*3
  r2 c,2~( c4 c g' c~ c1~ c4) c8( b a c, g'4) f1( e)
  es8( g \times 2/3 {b8 f' es} h2~ h) g4( d' c2) f8( c a' g~
  g2.) c4~ c1~ c r2 h, fis' h,~ h4 h-- fis'-- h->~ h fis2-> a4->~
  a1~ a a,4-- a-- a-- a-- R1 h2 fis' h,2. h4 fis' h2.
  fis2 a~ a1~ a\fermata
  \bar "|."
}
cornoDynamicZweite = {
  s1*4
  s4 s4\f s2 s s\< s4\sf s2.\p s s4\p s1\> s4 s2.\!
  s1 s4 s2.\< s4\sf s2.\p s1 s2\p s2\> s1 s s\!	
}