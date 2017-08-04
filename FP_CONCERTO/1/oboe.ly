\version "2.18.0"
\language "deutsch"
oboeMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8.  b'16  \times 2/3{a4 f ges\fermata}
  r4 r8.  c16  \times 2/3{ces!4 as a\fermata}
  R2*6 r4 des,-. r es-. ges-. r R2*5 b2~ b~ b
  R2*13 b8( as) r4 des8( ces) r4
  R2*4 r4 as,~ as2~ as4 r R2*2
  r4 as~ as2~ as R2*2 r4 f'( es d as'2 g8) r r4
  es2~ es4 r R2*4 r8g,4( f8) R2*5 r4 es' r fes r ges r as
  r r8. des,16 g8 r r4 R2 as8. f16 as8 r R2*2
  f8. des16 f8 r ges8. es16 ges8 r f8. des16 f8 r b r r4
  r r8. des,16 ges8 r r4 c,8. a16 c8 r a8. ges16 a8 r ges8. es16 ges8 r
  r b4( as8)
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 4/6 {
    as'16( ges fes es des ces b as ges fes es des
  }
  ces8.) fes16 ces8 r ges'4( as b2) es r4 r8. b16 es4-- r r r8. es16
  g4-- r as4.( g8 f4 es) es8. c16 es8 r g8. es16 g8 r es2 f
  r4 r8 as,16 b c d b c d es c d es f d es f g es f g as f g as b g as
  b as g f es d c b a2 c( d e) R2*2
  es4( f es2) as4( b as2) g( f4 es) f2  R2*35  R2*23 r4 d( b2) R2*3
  ges'2~( ges f es des~ des f) r4 r8. ges16( eses fes des heses
  ces as ges heses f ges ces heses f as ges des des8) r r4 R2
  r4 r8 f' as4.( g8) R2 fes4.( es8) R2 ges2 r4 r8. heses16(
  ges f as fes c des eses heses b! heses as heses as ases c ges as8) r r4
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  R2 \times 2/3{as'4. fes8 as4} R2*2 \times 2/3{as4. f8 as4} R2*7
  r4 f-. r ges-. b-. r R2*15 f2~( f~ f e8) r r4 R2*9 e2~( e4 d des! ces
  es b as2) R2*3 d2~ d f~( f ges~ ges) as~ as R2*4  r8 as ges( fes) r4
  r8 fes \repeat unfold 5 {es( des) r4} \repeat unfold 4 {f8( es) r4}
  \repeat unfold 8 {des8( ces) r4} 
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  es2~ \startTrillSpan es~ es~ es
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  es~\startTrillSpan es
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  des~\startTrillSpan des
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  des~\startTrillSpan \afterGrace des
  { c16[ des]\stopTrillSpan } ges4-. r R2*15
  a2\fermata R2 as!\fermata R2*6 des,2~( des4 b as ges)
}