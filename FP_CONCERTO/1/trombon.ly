\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%\include "makeOctaves.ly"

trombonMusic = \relative es {
  \clef bass
  \time 2/4
  \key es \minor
  \set Score.skipBars = ##t
  r4 r8. b'16 \times 2/3{a4 f ges\fermata}
  r4 r8. c16 \times 2/3{ces!4 as a\fermata}
  R2*14 b2~ b~ b R2*9 a4-- ges-- f-- es--
  R2*3 des'8( ces) r4
  <<
    {
      s4 as s
    }
    \\
    {
      b4^( g8 f <es es'>4^.)
    }
  >>
  r4 R2*8
  \clef treble
  \repeat unfold 4 {r8. f'16 f8 r}
  \clef bass
  R2 b,2->~ b4.. b16 b8 r r4 r8. as16 c8 r
  b8. g16 b4 R2
  c8. as16 c4 des8. b16 des4 c8. as16 c4 R2*15
  r4 r8. gis16 des'8 r16 b b8-- r r8. heses16 heses8-- r
  r8. b16 b8 r
  \times 4/6 {d16 d d d d d}  \times 2/3 {des8. b16 des8}
  ges,2( f es) R2*2
  fes'4..-- fes,16-- fes2--^~ fes!4 ces'-- b4.-- as8--
  ges4-- f!-- b4..-- f'16-- f2( es) g--
  b,4.. g16 b2 c4.. as16 c2 b4.. g16
  \times 2/3 {b4-- as-- g--} es4..-- as16-- g4( f)
  \times 2/3 {b4-- as-- g--} es'2--~ es8[ b-- g-- es--]
  d4.-- c8-- c2-- c( d e) R2*9  R2*35 R2*23 R2*13 r4 r8. ges16 ges8 r r4
  R2*9 r8. heses16 heses8 r r8. heses16 heses8 r ces r r4 R2
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  <<
    {
      \times 2/3{ces4. as8 ces4}
    }
    \\
    {
      <ces, eses>2
    }
  >>
  R2*2
  <<
    {
      \times 2/3{des'4. as8 des4}
    }
    \\
    {
      <f, as>2
    }
  >>
  R2*14  f8. des16 f4~( f2 c'16)-> c-> r8 r4 R2*8 <b, f' b>2~ q~ q
  d'4~ d8. b16-> d2-> r4 r8. ges16 ges4 r R2*6 e2~\( e( fes)~ fes c\)
  R2*5 <b f'>2~( q <ges des'>~ q) <as des>~ q R2*23
  \makeOctaves #-1 {
    es'4..-> es,16-> es2-> g-> as-> g4.-> f8-> c'4..-> f16-> f2->~ f
    b,->~ b des4..-> b16-> b2->_"! не des" es4..-> ces16-> es2-> des4..-> b16->
    \times 2/3 {des4-> ces-> b->} ges4..-> ces16-> b4->( as)
    \times 2/3 {des4-> ces-> b->} ges'2->~ ges8[ des---> b---> ges--->]
    f2->~ f ges->~ ges es4->
  } r4 R2*4
  \makeOctaves #-1 {
    b'8. ges16 b4-> ces8. as16 ces4-> b8. ges16 b4-> e8. c16 e4-> f8. des16 f4->
    b,8. ges16 b4-> ces8. as16 ces4-> b8. ges16 b4->
  }
}