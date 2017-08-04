\version "2.18.0"
\language "deutsch"
vcMusic = \relative es {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*9 r4 <ces' des>(<e, e'>8-.) r r4 f8-. r r4
  R2*2 es2~ es~ es
  a8 r as r g r ges r f r fes r es r d r des r c r ces r b r a r r4
  R2*6 b'8( as) r4 des,8( ces) r4 es4.( b8 b4-.) r4 R2*2
  ces'8.( b16) r4 R2
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \repeat unfold 16 {\times 2/3{es,8 a, b}}
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 2/3 {
    f'8 h, c g' des d as' d, es b' e, f c' g as d a b
  }
  es,8 r r4 r c'( b as g8 f) r4 f,8 r r4 ges!8 r r4 R2*11
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      \stemDown
       f'2( g as~ as cis~ cis~ \hideNotes cis)
    }
    \\
    {
      s2*6 \unHideNotes des2
    }
  >>
  ges,,8( f'4 es8 es4. des8 g2) R2*2
  \override TupletNumber #'transparent = ##f
  \times 4/6 {des16 des des des des des}  \times 2/3 {c8. a16 c8}
  ges'4.( f8) ces'2~( ces8[ es des as] b4. as8) r as4( ges8)
  des'2~( des8[ f es b] as4. g8) f4( es) b'4.( c8 b4 as~ as g)
  r8 f4( es8) d4( c) b4..-- es16-- es2 f4( g) c-- b8.( as16)
  as4.( g8) r4 es'-- as,4.( g8) r4 es'-- as,4.( g8) e'2 R2*4
  r4 d,( es f g as) b4.( as8) r4 es'8( des c b as g) f4.( es8) des2  R2*35
  \set Staff.beatStructure = #'( 4)
  r4 b( ces2 ges) b'8( as ges4 as2~ as~ as~ as)
  des,4( es f2 b as des,) r8 ges'( f es des2~ des)
  r8 f,( as des b'4. as8 ges2) es4( f es2) f4( b,) b2 R2*5 des,2~ des
  ces~ ces des~ des f R2*2 \times 2/3{as8 c, des} r4 R2
  ges2( as b des ces b) R2*21
  e8 r es r d r des r c r ces r b r a r as r g r ges r f r e2~( e4 des c b) R2*5
  r4 b'( a as e8 f ges f) R2*2 ces2~ ces h~ h( ces)~ ces as~ as
  R2*4 c2~ c~ c~ c a~ a b~( b ges~ ges) des'~ des R2*2
  g4( des~ des!) a'( es2~ es) des~ des
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \repeat unfold 3 {\times 2/3{des4 des des}}
  \repeat unfold 4 {\times 2/3{ces4 ces ces}}
  \repeat unfold 8 {\times 2/3{b4 b b}} c2~( c~ c~ c b as
  ces c b as) ges->~ ges ces->~ ces
  \times 2/3 {des4---> ces---> b--->} ges2->~ ges as->~ as
  ges-> des'->~ des~ des~ des~ des b4 r
  \times 2/3{ges4( as a)_\fermata} R2
  \times 2/3{es4( fes ges)_\fermata} R2
  \set Staff.beatStructure = #'( 1 4)
  es8 es' b b' fes, fes' ces ces' es,, es' b b' a, a' c, c' des, des' as as,
  ges ges' des des' ces, ces' as as, ges ges' des des,
}