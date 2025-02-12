\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetOneMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  \override Stem.no-stem-extend = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*6 r4 b,-. r ces-. es-. r R2*5 ges2~ ges~ ges
  a8 r as r g r ges r f r fes r es r d r des r c r ces r b r
  a2~ a4 ges-- f-- es-- R2*5 des''8( ces) r4
  R2*4 r4 as,,~ as2~ as4 r <f'' b> r R2 r4 as,~ as2~ as
  R2*2 r4 es'( c2 b~ b8) r r4 as2( g4) r R2*2 fes'2( f!8) r r4
  R2*3
  b,8. ges16( b4) ces8. as16( ces4) b8. ges16( b4)
  r as' r b r ces r c f,8. d16 a8. f16 es8 r r4
  ces''8. as16 ces8 r R2 a8. fis16 a8 r e' r r4
  b,2 heses b! d'8 r fis4 R2 r8. f,16 c'8 r r8. ges16 des'8 r r8. a16 es'8 r
  \times 4/6 {fes16 fes fes fes fes fes}  \times 2/3 {es8. c16 es8}
  b2 ces
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 4/6 {
    es16( des ces b as ges
    \override TupletNumber.transparent = ##t
    fes es des ces b as
    ges fes es des ces b as ges f! fes es d
  }
  es2) b'' r32 es( f g as b c d es8) r r8. es16 es4 d4. c8
  g'32( f es d c b as g f es d c b as g f g16 f' es as g f es d)
  d8( es) g4 as8. as16 as8 r b8. b16 b8 r r16 es( d c b as g f es2)
  R2*2 es,32( f g as b c d es f g as b as g f es d c b as g f es d c8.) as16
  c4.( b8) a2 g''~ g~ g R2*2
  g2( as) es( f) es~ es des R2*35 R2*4 r4 f,~( f4. as8 des2~ des)
  R2*15 r4 f f(ges) R2*3
  \stemUp b,2~( b as~ as as~ as b)\stemNeutral
  r4 r8. heses'16( g as ges fes f ces es c des heses eses des as ces b f
  \override TupletNumber #'transparent = ##f
  ges8) r r4 r \times 2/3 {as'4( ges8)} R2*5 b2 r4 r8. des16(
  c as ces heses fes ases f ges fes des eses c ces deses as heses ces8) r r4
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  R2 \times 2/3{<eses ces'>4. <eses as>8 <eses ces'>4} R2*2
  \times 2/3{<f des'>4. <f as>8 <f des'>4} R2*7 r4 c'-. r eses-. f-. r R2
  e8 r es r d r des r c r ces r b r a r as r g r ges r f r R2*8
  <f des'>2(<ges ces><as b> b8) r r4 R2*9 e,,2~( e4 d des! ces
  es b as2) R2*3 g''4( fis  a e d2~ d des!~ des) des~ des R2
  r8 f es( d) r4 r8 c b( a) r4 r8 as! ges( fes) r4 r8 fes'
  \repeat unfold 5 {es( des) r4} \repeat unfold 4 {f8( es) r4}
  \repeat unfold 8 {des8( ces) r4}
  <<
    {
      \override Stem.no-stem-extend = ##t
      %\override NoteColumn.ignore-collision = ##t
      \stemDown
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      es'2~\startTrillSpan es~ es~ es
    }
    \\
    {
      \override Stem.no-stem-extend = ##t
      \override TrillSpanner.bound-details.left.text = \markup{
        \musicglyph #"scripts.trill" \raise #1.65 \teeny  \natural
      }
      \once\override TrillSpanner.extra-offset = #'(0 . 2.8)
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      c2~\startTrillSpan c~ c~ c
    }
  >>
  <<
    {
      \stemDown
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      es2~\startTrillSpan es
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      des2~ \startTrillSpan des
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      des2~ \startTrillSpan des des4-.\stopTrillSpan r
    }
    \\
    {
      \override TrillSpanner.bound-details.left.text = \markup{
        \musicglyph #"scripts.trill" \raise #1.65 \teeny  \natural
      }
      \once\override TrillSpanner.extra-offset = #'(0 . 2.8)
      \once \override TrillSpanner #'(bound-details right padding) = #1.2
      c2~\startTrillSpan c s2*5\stopTrillSpan
    }
  >>
  R2*15
  es2\fermata R2 des\fermata R2*6 des2~( des4 b as ges)
}