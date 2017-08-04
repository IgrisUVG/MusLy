\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

cornoOneMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*3 h2( e,4 f fis2.) des4_( ges ges'2.) R1*2
  <<
    {
      <h, e>2~(<b e><as des>2.<a cis>4<b d>2<es g>4<e gis>~ q2) r2 s2
    }
    \\
    {
      s1*2 s2 \once\override Slur.positions = #'(1 . -2.5) h2~( h4 e, h' fis'^~ fis2)
    }
  >>
  r4 r16 es( f! g) gis2(<f~ a><f as><es g>)\breathe
  R1*2 r4 d2.( cis4 c h2~ h) r4 b'(
  fis--) e-- fis-- g--~ g2 r R1*5 r2 d,8( es^> b'4~ b2.) ces4( c! des d es fes1~
  fes4) r2. R1 r2. ces4( c! des d es f1~ f4) r2. f2-- r R1*10 r4 f,4_( f'2->)
  r4 g,_( g'2->) r4 a,_( a'2->) r4 h,_( h'2->) r b,!4( b'!~ b2 h c4) r2. R1*7
  g2-- b( a) f--( a gis b1) R1*2 es,4( gis, a4. h8 ) c-. r r2.
  es2->( gis) r2. es4--( d2) r R1*5 d,2( f ces2. g'4 gis2 h d1) R1*4
  r2 a4( d,) R1 r4 <dis' gis>2. R1 r2. gis4~ gis2 r R1*6 r2. as,4->
  r8 ges--\noBeam ges'( fes) eses4-- r r2 es~ es4 r2. r r8.. d32-> a'4-> r r r8.. d,32->
  a'4-> r es16-> es-> es8-> <fis a>4 R1 r2. r16 ges,( a a') r4 c,2 r4 R1
  r16 <b d>8 q16 r <b es>8 q16 r <h e>8 q16 r <c f>8 q16
  <dis fis>4 h cis4. dis8 e cis dis[ eis] fis2
  g c, des1-> fis,2 c' d d d e d c dis r d!~ d8[ f,]( fis fis')
  g,( d') r a'16( cis, f2) d-> r
  a'1( b2 e,)<cis es><b des><a c> r a'1( b2 e,) g4( as a b)
  \times 2/3 {h4-> ais-> gis->} r2 R1 d'1
  des,,4( c8.) es16 des4( c8.) es16 f4( es8.) as16 f2 R1
  es4( d8.) f16 g4( as8.) b16 c4( es8) r r2
  c4( es8.) c16 b4(<c es>) R1 des,4( c b as ges ges' f es f) r2. R1*4
  c'4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d e2) r ais
  R1*3 f,4( as8.) f16 es2 f4( ges8.) as16 b4( c) des r2. R1*6
  r2. r8.. f,32 f16. c'32 c8 des2~ des8.. f,32 f16. c'32 c8 des2. R1*3
  \set subdivideBeams = ##t
  r4 r8.. f,32 f16.( c'32) c16.( des32) des8.. r32 R1*5
  r2 d! R1 r4 g,8 c <es, g>2~ q r r4 b''2( g4) R1*4 <b, es~>1\(<c es> des2( cis) d4 c2.\)
  b1~( b2 h c b) r4. f'8( es d c h c)\noBeam b-> g4 g8. g16 g4
  b b8. b16 as2->~ as1\fermata
  des4( c8.) es16 des4( c8.) es16 f4( es8.) as16 as4->( ges)
  ges( f8.) as16 ges4( f8.) as16 ges4 r2. h,4 h h h
  b2. b8. b16 ces2. ces8. ces16 c!2. c8. c16 ces2. ces8. ces16
  b2. b8. b16 a2. a8. a16 as4 r2. R1 a1~ a fis'4( f d2) R1
  \bar "||"
  R1*5
  g,!1~_( g2. as4 f'2 e4) ces( as'2 es4) d( ces'2 b~ b1)\fermata
  \bar "||"
  R1 r2. ais,4( c2 b4 h~ h) c( d2 eis,2.) r4 cis'1(
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  c!2.) b
  R2.*28
  <<
    {
      s2.*2 r2 d4~( d es2 f2.~ f)
    }
    \\
    {
      a,2.(~ a~ a~ a b~ b)
    }
  >>
  R2.*3
  \repeat unfold 2 {ases'2(-> ges4)}
  \repeat unfold 2 {heses2(-> as4)}
  \repeat unfold 2 {geses2(-> fes4)} g!2. R2.*4
  r2 c,4~_( c h'!2)
  \cadenzaOn
  cis2.~ cis~ cis~ cis~ cis~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  cis2 r R1*3 \repeat unfold 8 {
    \times 2/3 {es,8[( des ces])}
  }
  \repeat unfold 4 {
    \times 2/3 {eses8[( des ces])}
  }
  c!1~ c4 r2. ces2( b fis1~ fis~
  fis8)[ h16 h,] es8.[ ges16] h8 cis h[ dis,]
  \times 2/3 {e8 fis cis} d!2.
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
  R1*6
  r2 d'8( c b4~ b1) g'2 f~ f1 gis4-. r2.
  R1*5 fis,1
  R1 \bar "||"
  R1*9
  \override TupletBracket.bracket-visibility = ##f
  r2.^\markup {\italic Solo} \times 2/3 {r8[ a-- g!--]} R1
  r2 r8 e'16.( es32) h'8 r 
  r a( b8. d,16) r fis gis g des4
  \set subdivideBeams = ##f
  r8 a'16-. b-. e,16.[( f,32) dis'16-. h'!]-.
  g( ges) a,-. a-. r16. d32 c16( des) b'16-- r8. r2 f4(
  gis) gis( h!) r32 <cis, gis'!>8.. r16 q8.~ <cis gis'>4 r2
  R1*9
  \bar "|."
}
