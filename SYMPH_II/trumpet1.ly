\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "changePitch.ly"

trumpetOneMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*12
  es''16.-. es32 es8~ es4~ es8 f16-> g->
  <<
    {
      as4-> h2-> s s1
    }
    \\
    {
      as16 es^(<h f'><c g'>)<h gis'>2^(<d a'><c~ as'><c g'>)
    }
  >>
  \breathe
  R1*4 r2. <des b'>4(<a a'>--)
  <<
    {
      \set baseMoment = #(ly:make-moment 1 8)
      g'2.->(~ g2 f~_\markup {\italic Solo} \stemDown f16.) b32-. b16.-> f32-.
    }
    \\
    {
      c4-- h-- b--~ b2 s s4
    }
  >>
  f'16.-> des32-. des16.-> b32-. b8-> f( g4) r8 g( as4) r8 as( a4)
  r8 d(a'4 c8) r4. R1*3 r2.
  <<
    {
      ces,8 es-- g-- a-- as2.--
    }
    \\
    {
      \shape #'((.5 . 1.3) (2 . 1) (5 . 1) (6 . 2)) Slur
      as,4( a! as b b)
    }
  >>
  <ces ges'>1->~ q4 r2. R1 r2.
  <<
    {
      ces8 es-- g-- a-- as2.--
    }
    \\
    {
      \shape #'((.5 . 1.3) (2 . 1) (5 . 1) (6 . 2)) Slur
      as,4( a! as b b)
    }
  >>
  <c g'>1->~ q4 r2. R1*11 des2->( d->) d->( es->) es->( e->) e->( f->) f-> r
  R1*6 r8 h,-> f'-> as-> a2-> es1-> r2 a,-> b-- r r b--( c cis  des1)
  es4.( f16 g a8) d,4( e16 f g8) c,4( des16 es! f4) cis c!-- h-- c-- d--
  e8-. r fis2.-> R1 r2. b,4--( h2) r R1*9
  r8. des16 des4 r2 r8. f16 f4 r2 r8. fis16 fis4 r2 r8. g16 g4 r2 R1*6
  <fis, a>4-- r r q~ q r r <g ais>(<gis h>) r2. R1*4 r2. des'4 R1*2
  r16. d32 d16.-> f32 f16->( d a f es4) e8-> fis->
  r16. d'32 d16.-> f32 f16->( d a f es4) e8-> fis->
  a16-. r8. d4-> es16-> es-> es8-> r4 R1 r2 r8 ges-- r4 R1*2
  f,4-- b-- d-- f-- fis h, cis4. dis8 e cis dis[ eis] fis2
  g c, des1-> fis,2 r R1*4 r4. es'8 r4 dis8 r
  g,( d') r16 e8. a2 R1*3 <a, a'>1
  \times 2/3 {<h h'>4<ais ais'><gis gis'>} r2 R1 r2 d
  <<
    {
      r2 dis' e1
    }
    \\
    {
      g,1->( as2 d,!)
    }
  >>
  R1*7 r2 h'4( c) des( c8.) es16-. des4->( c8.) es16-.
  f4( es8.) as16-. f4->( ges) f( es2 b4 b) r2. R1*4
  a4( g8.) h16 a4( g8.) h16 c4( h8.) e16 c4( d c d cis2)
  R1*4 f,4( as8.) f16 es2 f4( ges8.) as16 b4( c) des r2. R1*6
  r2. r8.. f,32 f16. c'32 c8 des2~ des8.. f,32 f16. c'32 c8 des2.
  \set subdivideBeams = ##t
  R1*2 r4 r8.. f,32 f16.( c'32) c16.( des32) des8.. r32
  R1*2 as4( g8.) b16 as4( g8.) b16 c4( b8.) c16 as4.( b16) c
  des4( c8.) es16 des4( c8.) es16 f4( es8.) f16 des4.( es16) f
  as4( ges) b,2 R1 r4 g,8( c es f es f es2) r R1*3
  r2 r8 b'( c d es as,2) as8( as as g2) r R1*6 r4. g8( a h c d
  es)\noBeam g-> g,4 g8. g16 g4 g g8. g16 c2->~ c1\fermata
  b4( as8.) c16 b4( as8.) c16 des4( c8.) f16 f4(-> es)
  es( des8.) f16 es4( des8.) f16 ges4( f8.) b16 b4->( as)
  r d, e fis \repeat unfold 3 {ges2. ges8. ges16}
  as2. as8. as16 b2. b8. b16 c2. c8. c16 des4 r2.
  r8 b,-> c4-> es8-> g-> b4-> a1->~ a b, R1
  \bar "||"
  R1*11
  \bar "||"
  fis2( h, c2. cis4 es2 d4 dis~ dis) e( f2 ais,2.) r4
  r2 as'4( b
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  c2.) des
  R2.*14 f2.~( f ges f d4) r2 R2.*6 r4 b-> b-> b2.
  R2.*21 d2. f
  \cadenzaOn
  fis2.~ fis~ fis~ fis~ fis~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  fis2 r R1 r2 r8.. es32 b'4-> R1 r8. b32 b b2.->
  r4. d,,!8( e! c'!4.) f4( d'!16 g, a, e'! g,2) R1
  r2. as4 ges2 ges R1*4
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
  r2 d'8( c b4~ b1) g'2 f~ f1  gis4-. r2.
  R1*5 fis1
  R1 \bar "||"
  %\override TextScript.extra-offset = #'(-3 . -1)
  r2^\markup {\italic Solo} d,4 cis8. e16 e2 d
  cis r8 fis( e[ d]) cis4 d8.[ e16] fis4 a8. fis16
  e2. r4 fis g8.[ e16] d4 cis d2. r4 R1*3
  r4 r16
  \override Glissando.minimum-length = #4
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \afterGrace h'!8\glissando {
  \stemDown \hideNotes
  f16 }
  \unHideNotes
  r r2 r8 cis'16-. d-. c16.[( fis,32) gis16-. g'!]-.
  \set subdivideBeams = ##f
  es( h) a-. a-.
  \override Fingering.staff-padding = #'()
  \stemUp <cis c'!>16\noBeam \stemNeutral
  r8. r16 es32 es es16 r r2 r8 r32 d d r
  r2. <cis c'!>16 r8. r16 es32 es es16 r r2 r8 r32 d d r
  \override TupletBracket.bracket-visibility = ##f
  \times 4/6 {r16[ f-. e!-. b'16.( a,!32) h!16-.]}
  \set subdivideBeams = ##t
  \times 2/3 {e16-.[ g,( gis)} fis32 fis] r16 r4 r8.
  \times 2/3 {g'32 g g}
  r8 r32 fis( gis16) r2.
  R1*9
  \bar "|."
}
