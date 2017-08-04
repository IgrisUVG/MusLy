\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoTwoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  %\clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  R1*8
  <<
    {
      gis2( g <des f>2.<cis dis fis>4<d! f! as>2<es g>4
      \override TieColumn.tie-configuration =
      #'((-4.0 . 1) (-8.0 . -1))
      <e gis>~ q2)
    }
    \\
    {
      e1 s1*2 s2
    }
  >>
  r2 r2 r4 r16<a c>(<gis h><g c>)
  <<
    {
      \once\override Slur.positions = #'(1 . 1)
      h2( d c1)
    }
    \\
    {
      \stemUp
      \once\override Slur.positions = #'(1 . 1)
      gis2( a \stemDown as g)
    }
  >>
  \breathe
  R1*2 r4 d'2.( cis4 c h2~ h) r4 <des f>4(<a cis>--)<b c>--<as h>--<c e>--~
  q2 r R1*5 r2 d,8( es^> b'4~ b2.) as4( a! as b b ces1~
  ces4) r2. R1 r2. as4( a! as b b c1~ c4) r2. f2-- r R1*10 r4 f,4( as2->)
  r4 g( a!2->) r4 a( d2->) r4 h_( f'2->) r b,!4( b'!~ b2 h c4) r2. R1*7
  d,2-- b( a) des--( f eis f1) R1*2 es4( gis, a4. h8 ) c-. r r2. es2->( gis)
  r2. <g, b>4--(<fis h>2) r R1*13 r2 a4( d,) R1 r4 <cis gis'>2. R1
  r2. <h' dis>4~ q2 r R1*6 r2. as4-> r8 ges--\noBeam ges'( fes) eses4-- r
  r2 es~ es4 r2. r r8.. d32-> a'4-> r r r8.. d,32-> a'4-> r c,16-> c-> c8-> <a cis>4
  R1 r2. r16 ges( a a') r4 c,2 r4 R1
  r16 f,8 f16 r f8 f16 r fis8 fis16 r g8 g16
  fis4 h cis4. dis8 e cis dis[ eis] fis2
  g c, des1-> fis,2<fis a><f! b><g b><g h><g b> a g <gis h> r d'!~ d8[ f,]( fis fis')
  g,( d') r a'16( cis, f2) <f, h>-> r a1( b2 e,)<f a><fes as>
  <es g> r a1( b2 e,) es'4( d des c) h2-> r R1 d1
  b,4( as8.) c16 b4( as8.) c16 des4( c8.) f16 des2 R1
  c4( b8.) d16 es4( f8.) g16 as4( c8) r r2 as4( c8.) as16 g4( <fis a>) R1
  des4( c b as ges ges' f es f) r2. r2 a,4( b d cis) r2 R1*2
  c'4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d e2)
  R1*4 f,4( as8.) f16 es2 f4( ges8.) as16 b4( c) des r2. R1*6
  <a, ges' es'>1 R1*11 r2 b'~ b1~ b~ b2 r r4 b2( es,4) es1(~ es g f)
  <es~ g>(<es as^~><fes as>2<fis a>~ q4 <es g>2.)<d~ f>1(<d g^~><es g>)
  r4. d'8( c h a g c,)\noBeam b-> r2. R1*2
  des'4( c8.) es16 des4( c8.) es16 f4( es8.) as16 as4->( ges)
  ges( f8.) as16 ges4( f8.) as16 ges4 r2. g,4 fis g fis
  \repeat unfold 3 {ges2. ges8. ges16} f2. f8. f16
  g2. g8. g16 ges2. ges8. ges16 f4 r2. R1 a1~ a b R1
  \bar "||"
  R1*11
  \bar "||"
  R1*5 ais1(
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  a!2.) ges
  R2.*26
  <<
    {
      R2.*2 g2.~( g~ g~ g f~ f)
    }
    \\
    {
      d2.(~ d~ d~ d~ d~ d c ais)
    }
  >>
  R2.*3
  \repeat unfold 2 {ases''2(-> ges4)}
  \repeat unfold 2 {heses2(-> as4)}
  \repeat unfold 2 {geses2(-> fes4)} g!2. R2.*4
  r2 des,4~_( des es'2)
  \cadenzaOn
  fis2.~ fis~ fis~ fis~ fis~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  fis2 r R1*3 \repeat unfold 8 {
    \times 2/3 {es8[( des ces])}
  }
  \repeat unfold 4 {
    \times 2/3 {eses8[( des ces])}
  }
  c!1~ c4 r2. R1*5
   R1*8
  \bar "||"
  \cadenzaOn
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1. r4.
  \cadenzaOff
  \bar "||"
  \time 4/2
  R1*10
  \bar "||"
  \time 4/4
  R1*18
  \bar "||"
  R1*9
  \override TupletBracket.bracket-visibility = ##f
  r2.^\markup {\italic Solo} \times 2/3 {r8[ gis-- fis--]} R1
  gis4.( a8 g'!4) des16 es, d' b32_( ges e'4.) f,8( h!4 c)
  r2. dis,16( cis gis'32 a) r16 ges-- r8. r2 h!4(
  d) d!( f!) r32 <g,! d'>8.. r16 q8.~ <g d'>4 r2
  R1*9
  \bar "|."
}
