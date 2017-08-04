\version "2.18.0"
\language "deutsch"
cbMusic = \relative es, {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*6 r4 c'-. r a-. es-. r
  R2*5 es2~ es~ es
  R2*11 \times 2/3{a8( f ges)} r4 \times 2/3{ces8( g as)} r4
  b8( as) r4 des,8( ces) r4 es,( as8 b es,4-.) r4
  \repeat unfold 3 {\times 2/3{es'8 a, b}}
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \repeat unfold 21 {\times 2/3{es8 a, b}}
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 2/3 {
    f'8 h, c g' des d as' d, es b' e, f c' g as d a b
  }
  es,8 r r4 fes8 r r8. as,16-> es'8-> r r4 es8( d c4) f,8 r r4
  ges!8 r r8. b16-> f'8-> r r4 R2*3
  es,4 b' fes ces' es b as es' b fes' ces ges' c, as' d, a' es b'
  fes ces' f,! des' fis, cis' gis cis b f ces ges' des b' d, b'
  es, c' ges es'
  \override TupletNumber #'transparent = ##f
  \times 4/6 {des,16 des des des des des}\times 2/3 {c8. a16 c8}
  f,2 ges g as a b es,~ es b'8. g16 b4~( b8[ d es f])  
  f2 es,~ es b'4.( as8) es2 a8( b) es-- g--
  \override TupletBracket #'bracket-visibility = ##t
  \tuplet 3/2 2 { c2( b4) as f c }
  b2 as g f es e R2*5 des'2( c) f,( fis g as b) R2*35
  \set Staff.beatStructure = #'( 4)
  R2 ces2( ges) ges'8( f es4 des2~ des~ des~ des)
  as~( as~ as ces des f ges~ ges) as4( des) des2~ des
  f,~ f~ f es R2*5 ges,2~ ges as~ as as~ as b R2*2
  \override TupletBracket #'bracket-visibility = ##f
  \times 2/3{as'8 c, des} r4 R2 des2( ces b as) fes'4.( es8) R2 es
  R2*17 r4 fes b, r4 R2*7 b2->~ b~ b R2*5<e, e'>4(<f f'>
  <ges ges'><g g'><as as'><a a'>) R2*4 e2~ e as~ as des~ des
  R2*4 f,2~ f a~ a d~ d b~( b ges~ ges) des'~ des e, g
  b d as~ as des~ des
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \override TupletBracket #'bracket-visibility = ##t
  \repeat unfold 3 {\times 2/3{des4 des des}}
  \repeat unfold 4 {\times 2/3{ces4 ces ces}}
  \repeat unfold 8 {\times 2/3{b4 b b}} c2~( c~ c~ c b as
  ces c b as) ges->~ ges ces->~ ces
  \times 2/3 {des4---> ces---> b--->} ges2->~ ges as->~ as
  ges-> des'-> b-> as-> ges-> f-> es4-> r
  \times 2/3{ges4( as a)_\fermata} R2
  \times 2/3{es4( fes ges)_\fermata} R2
  es4 b' fes ces' es, b' a c des as' ges, des' ces as ges des'
}