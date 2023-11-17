\version "2.19.15"

\language "deutsch"

fagottoMusicErste = \relative {
  \clef bass
  \time 6/4
  \key b \major
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1)
  f,1.( des1) r2 f1. a'4( f des8 c as4 es) r8 des8~( des!1. f1) a'4 f
  f,2 \times 2/3 {b'32( as g)} r16 \times 2/3 {des'32( ces b)} r16
  r4 r2 r16 \times 2/3 {as32( g fis~} fis8~\noBeam
  \override TrillSpanner #'(bound-details right padding) = #1.5
  fis4~\startTrillSpan fis1) r1.\stopTrillSpan
  r2 r4 c,2 r4 des4. r8 r1 r1.
  f'32( as h d f8-.) d-. h-. as-. f-. des-. ces-. b!-. as-. r4
  ges2 r1 d''8( des4 c8 ces b)
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \times 2/3 {r32[ a16]~} a8.~ a4 as,
  r1 r4 as16-.[ r32 b16-. r32 des,16-.]
  f16-.[ r32 ges16-. r32 g16-.] as-.[ r32 b16-. r32 des,16-.]
  \repeat unfold 2 {a'16-.[ r32 cis16-. r32 g16-.]} fis4.( g8)
  fis1 r2 e'2.( c4 h e,
  \tuplet 6/4 4 {
    es4) r16 b'' as g fes es des b as f! e d! b8~
  }
  b2. f''2.( des4 c f, e) r1 r8 g'8 c,4~ c1 d,16( e g a
  c es fis a) b2~ b2. c,1.
  \bar "|."
}

fagottoMusicZweite = \relative {
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
  \once\override Score.RehearsalMark.extra-offset = #'(15 . 0)
  \mark\markup { \text \small {Wiederholen viermal \italic { ad lib. } }}
  h,,1->~ h~ h~ h \bar ":|." h1->~ h~ h~ \break
  h2 r4 g''->~ g1~ g2 d,4-> cis-> h1->~ h~ h~ h R1*16 \break
  es1~ es~ es g'8( es c b c es c b as es' c b g es4.)
  c1~ c~ c es'8( d es f g es d c b c as g c as g es) ces1~ ces~ ces~ 
  ces2 es'8( ces as ces as f es ces f es des ces)
  b( es g c b2~ b1) es,~ es~ es2 f'8( es b g as1~ as2) as4-> g->
  f1->~ f~ f~ f~ f~ f2 as4-> g-> f1->~( f~ f~ f ges)
  h,2.-\markup {\italic legato} cis4 d!8 a' d fis a e' d fis
  e gis fis e cis gis h e, ais fis gis cis, fis dis cis fis,
  h,2. cis4 d!8 a' d fis a e' d fis gis dis fisis his, cisis fisis, gis his,
  dis his aisis fisis disis2 gis'1( fis e) eis e!
  r2 fis cis' fis,~ fis4 fis cis' fis~ fis cis2 d4~ d1~ d
  r4 e,2 h'4~ h e,2.~ e4 e h' e~ e2 h b1~ b~ b~ b~ b~ b~ b4 r2.
  R1*4 es2( des ges,2. ces4 as' ges2.~ ges4 fes8 es ces4 b es,1~ es~ es
  eses c!~ c) f,->~ \repeat unfold 9 {f1~} f
  f->~ \repeat unfold 6 {f1~} f f->~ \repeat unfold 6 {f1~} 
  f4 c'2 f4~ f c2.~ c4 c f c'~ c2 f, ces'1~ ces f,,~ f~ f
  f->~ \repeat unfold 6 {f1~} f f->~ f~ f~ f f~ f!~ f!~
  f!2. gis4->~ gis1~ gis b'4-- b-- b-- b-- R1 fis2 h! fis2. fis4
  h! fis'2. h,!2 f'!~ f1~ f\fermata
  \bar "|."
}

fagottoDynamicZweite = {
  \override Hairpin.extra-offset = #'(0 . 7)
  \override DynamicText.extra-offset = #'(0 . 7)
  s1*3\sf\> s2. s4\ppp s1*2\sf\> s2. s4\ppp
  \revert Hairpin.extra-offset
  \revert DynamicText.extra-offset
  s2. s4\p s1 s4 
  %\override DynamicText.extra-offset = #'(0 . 6)
  s2.\ff
  \override Hairpin.extra-offset = #'(0 . 7)
  \override DynamicText.extra-offset = #'(0 . 7)
  s1*3\sf\> s2. s4\ppp s1*38
  \override Hairpin.extra-offset = #'(0 . 6.5)
  \override DynamicText.extra-offset = #'(0 . 6.5)
  s1*3\sf\>
  \once\override DynamicText.extra-offset = #'(1 . 6.5)
  s1*21\ppp 
  \revert DynamicText.extra-offset
  s2 s\p s1*2-\markup {\italic {poco dim}} s2. s4\pp s1*2
  s4 s2\p s4-\markup {\italic {poco dim}} s1*3 s1*5\pp 
}