\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetTwoMusic = \relative es'' {
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*6 r4 f-. r g-. b-. r R2*5 es2~ es~ es
  a,8 r as r g r ges r f r fes r es r d r des r c r ces r b r a r r4
  R2*7 des'8( ces) r4 R2*7 <es f>4 r R2 r4 as,,~ as2~ as R2*2
  r4 <g' ces>_(
  <<
    {
      b4 as
    }
    \\
    {
      f2
    }
  >>
  <es as>4<d g>~ q8) r r4 es2~ es4 r R2*2 fes2( f!8) r r4 R2*6
  r4 <f ces'> r <g des'> r <heses es> r <as f'>
  d8. a16 <f d'>8. <d a'>16 <des! b'>8 r r4
  r8. <ces' fes>16<as ces>8. <fes as>16<des f!>8.<as des>16<f as>8 r R2
  e''8 r r4
  <<
    {
      f,8. des16 f8 r ges8. es16 ges8 r f8. des16 f8 r
    }
    \\
    {
      des2( es f)
    }
  >>
  <d' g>8 r <g! des'>4 R2 r4 r8. <ges! b>16 <ges b>8 r r8. <a c>16 q8 r r4
  \times 4/6 {fes16 fes fes fes fes fes}  \times 2/3 {es8. c16 es8}
  <ces! fes>2<des g>
  \set tupletSpannerDuration = #(ly:make-moment 2 8)
  \times 4/6 {
    es16( des ces b as ges
    \override TupletNumber.transparent = ##t
    fes es des ces b as
  }
  b4)( <ces es><b ges'>2)<b g'> r32 es( f g as b c d es8) r r8. <g b>16 q4
  <as,_~ g'>2<as f'><g es'><es c'>
  <es c'>8.<es as>16<es c'>8 r <b' es>8. <g es'>16 <b es>8 r <es, b'>2 <f c'>
  g16 as b c as b c d <g, b><as c><b d><c es><as c><b d><c es><d f>
  <b d><c es><d f><es g><c es>< d f><es g><f as>
  <d f><es g><f as><g b><es g><f as><g b><as c>
  <f d'><es c'><d b'><c as'><b g'><as f'><g es'><f d'>
  <e c'>2 <c' es>( <h~ f'><h e>) R2*2
  b2( c)
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      \stemDown
      c'4( des c2) des,2( \stemUp des4 c) b2
    }
    \\
    {
      g2( as) b( as) f
    }
  >>
  R2*35 R2*4 r4 f~( f4. as8 des2~ des) R2*15 r4 <as b>(<ges es'>2) R2*3
  <des ges>2~( q <ces ges'>~ q <ces f>~ q <b f'>) r4 r8. ges''16(
  eses fes des heses ces as ges heses f ges ces heses f as ges des des8) r r4
  R2*3 as'4 r R2*2 <es' ges>2  r4 r8. heses'16(
  ges f as fes c des eses heses b! heses as heses as ases c ges as8) r r4
  \override TupletNumber.transparent = ##f
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  R2 \times 2/3{<fes as>4. <eses as>8 <fes as>4} R2*2
  \times 2/3{<as des>4. <f as>8 <f des'>4} R2*7 r4 <g c>-. r <fes eses'>-.
  <b, f''>-. r R2  e'8 r es r d r des r c r ces r b r a r as r g r ges r f r R2*8
  <des' b'>2(<es a><f as!> g8) r r4 R2*17 <d a'>2~ q <b f'>~( q <ges des'>~ q)
  <as des>~ q R2*4 r8 as ges( fes) r4 r8 fes
  \repeat unfold 5 {es( des) r4} \repeat unfold 4 {f8( es) r4}
  \repeat unfold 8 {des8( ces) r4}
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  g''2~ \startTrillSpan g~ g~ g
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  g \startTrillSpan
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  as\startTrillSpan
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  as~\startTrillSpan as
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #1.65 \teeny  \natural
  }
  b~\startTrillSpan b b4-.\stopTrillSpan r R2*15
  es,2\fermata R2 des\fermata R2*6 <b ges'>2~( q4 <des b'><b ges'><ges des'>)
}