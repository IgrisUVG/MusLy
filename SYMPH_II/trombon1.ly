\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "changePitch.ly"

trombonOneMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \clef tenor
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*12 es'16.-. es32 es8~ es4~ es8 d16-> c-> h8-> as--
  gis2( f as c)\breathe R1*3
  r2 <h f'>->(<h e>) r4 b( a--) g-- fis-- g--~ g2 r R1*6
  r2. es4( f fes f es ges1~ ges4) r2. R1
  r2. es4( f fes f es g1~ g4) r2. R1*11
  <b des>2->(<h d>->) d->( es->) es->( f->) fis->( g->)
  f!-> r R1*5 r2. r8 f->~ f b, as[ f] a4 c es1 R1
  g,2-- r r f--( f eis f1)
  r8 c'( as4 b8) a( d4 c8) e( c4) d( e)
  <b es>--<h e>-- c-- d--
  e8-. r r16 b-> r8 a16->[ r8 h16->] r8 h16-> r
  c-> r8. r4 dis,2-> r2. es4--( d2) r R1*19
  <fis a>4 r r <g b>(<fis a>) r r <fis ais>(<gis h>) r2.
  R1*8 r2 r8 <a c>(\noBeam<g cis>)<a cis>--
  <a d>16-. r8. r4 <es a>16-> q-> q8-> r4 R1
  r2. <a es'>8 r r a---> r2. R1
  r16 <b d>8 q16 r <b c>8 q16 r <a cis>8 q16 r <b es>8 q16
  <h! dis>4 h cis4. dis8 e cis dis[ eis] <cis fis>2
  g' c, des1-> <a cis>2<fis a><f b><g b> a4( g) g2
  <<
    {
      g4( f) f( e)
    }
    \\
    {
      d2 c
    }
  >>
  <h dis> r r8 <b' d>(<c es ges>) r <b d>(<c es ges>) r4
  r <cis e>4 \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \override TupletBracket.bracket-visibility = #'if-no-beam
    d16( cis) e( a,) cis( h) cis( f,) h( a) e( b')
  }
  e2-> r R1 r2 b <g b><as b><g b> r R1 r2 b~( b h f) <b es>~( q1 d) R1*4
  r4 r8. c16( fis,2) R1*2 f'4( es8.) as16 f4( ges) f( es2 b4 b) r2. R1*4
  c4:16 h4:16 c4:16 h4:16 g4:16 gis4:16 g4:16 f4:16
  f2:16 e2:16 R1 h4( ais8.) cis16 h4( ais8.) cis16
  dis4( cis8.) fis16 dis2 des4( c8.) es16 des4( c8.) es16
  f4( as8.) f16 es2 f4( ges8.) as16 b4( c) f, r2. R1*16
  r4 es2 f4~ f es2 des4 c~ \times 2/3 {c8 des-> es->} f2-> R1*7
  r8 c( d4.) d8( es f g2) r R1*10 \repeat unfold 2 {des'4:16 c4:16}
  as4:16 heses4:16 as4:16 ges4:16 \repeat unfold 2 {ges4:16 f4:16}
  des'4:16 eses4:16 des4:16 ces4:16 h!4 h h h
  \changePitch {c8 c16 c16 c8 c8 c4 c4}{
    b b b b b b r ces ces ces ces ces ces r a a a a a a r
    as as as as as as r b b b b b b r c c c c c c r
  }
  des4 r2. R1*3 b1 R1
  \bar "||"
  R1*11
  dis,2_( f! es2. gis4 a2 fis~ fis4) ais( h2 cis,2.) r4 R1
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  R2.*15 r4 <f' es'>2 r4 <f des'>2-> r4 <f c'>2->
  r4 <ges b>2-> r4 a2-> R2.*7 r4 es-> es-> f2.
  R2.*6 ais,2._(~ ais4 f!2 ges2.~ ges4 as2 ges2.~ ges
  fes~ fes~ fes~ fes d~ d) R2.*3 f'2. e fis~ fis~
  fis~ fis~ fis~\fermata
  \bar "."
  \time 4/4
  fis2 r R1*3 ges1~ ges~ ges( a!~) a4 r2 <des, ges>4
  <ces fes>2<b es> R1*4
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
  %\override TextScript.extra-offset = #'(-3 . -1)
  r2^\markup {\italic Solo} fis4 fis8. fis16 g2 fis
  fis2. r4 fis4 fis8.[ fis16] fis4 fis8. fis16 a2. r4
  h h8.[ g16] fis4 fis fis2. r4 R1*2
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %\clef bass
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  r16 
  \override Glissando.minimum-length = #4
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \grace a8\glissando gis r16 r8 \times 2/3 {d'16( gis, g'!)} r2
  r4 r16
  \afterGrace fis8\glissando {
  \stemDown \hideNotes
  h,16 }
  \unHideNotes
  r r2 
  \repeat unfold 2 {
		r2.
		\afterGrace <g! gis'!>16\glissando {
		\stemDown \hideNotes
		<d d'>16 }
		\unHideNotes
		r8.
		\set subdivideBeams = ##t
		\set baseMoment = #(ly:make-moment 1 8)
		\set beatStructure = #'(2 2 2 2)
		\override TupletBracket.bracket-visibility = ##f
		r4 r32 es' c! as fis g h dis, f e b' a g! es h' a! b e, f r r8
  }
  \set subdivideBeams = ##f
  r32 as[ r32 as r32 as r32 as] r32 as[ r32 as]
  <<
  	{
  		s8 
  		\override ParenthesesItem.padding = #-0.4
  		\override ParenthesesItem.font-size = #3
  		\parenthesize r4
  	}
  	\\
  	{
  		d,32\rest 
  		\override Glissando.minimum-length = #6
  		\override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  		\override Glissando.thickness = #2
  		\dotsUp c'16.\glissando s16 \once \hideNotes d,8.
  	}
  >>
  fis,4
  R1*10
  \bar "|."
}
