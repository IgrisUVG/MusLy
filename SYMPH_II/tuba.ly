\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
         #(lambda (m p)
            (let ((mu (ly:music-property m 'element)))
              (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
              (ly:make-music-relative! mu p)
              (ly:music-transpose mu (ly:make-pitch arg 0 0)))
            p)
         \transpose c' $(ly:make-pitch arg 0 0) $mus
         $mus
     >>
   #})

tubaMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  %\clef "bass_8"
  \clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature.stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*13 gis,,2( d' f, c')\breathe R1*4 r2. b4(
  fis--) g-- as-- c,--~ c2 r R1*6
  r2. r8 ges''( f es des4) d( es ces1~ ces4) r2. R1
  r2. as'8( ges f es des4) d( es c1~ c4) r2. R1*11
  \makeOctaves #1 {
    b2->( d->) d->( es->) es->( e->) e->( f->)
    f->
  }
  r R1*6 <h, h'>2-> fis'4-><c c'>-><es es'>1-> R1
  g,2-- r r b( f cis' b es) R1 r2 d4( fis)
  g-- gis-- a-- as-- g8-. r r2. r2 <gis, gis'>->
  r2. es4--( h'2) r R1*19 d4 r r g( d) r r g( e) r2.
  R1*14 b'4-- f-- a-- es-- h'1 a4 gis fis2 g c, des1->
  fis2 fis f! c <h h'><b b'> g'4( f) c2 dis r
  b'4~ b16 f ges as b f ges as a e f ges g!2 r R1*3
  es2 d c r r \makeOctaves #-1 {e!~ e es~ es1~ es~ es d} R1*4
  r4 r8. c'16( fis,2) R1 b4( as ges f) des'4_( c b as ges ges f es f) r2.
  R1*4
  a4:16 g4:16 f4:16 e4:16 c'4:16 h4:16 a4:16 g4:16
  f2:16 e2:16 R1*25 r2 b' R1*19 b4:16 as4:16 ges4:16 f4:16
  des'4:16 c4:16 b2:16 b1:16 b4:16 ces4:16 b4:16 as4:16
  h!4 h h h b2. b8. b16 ces2. ces8. ces16 c!2. c8. c16
  ces2. ces8. ces16 b2. b8. b16 a2. a8. a16 as4 r2. R1*5
  \bar "||"
  R1*11
  h,2( d! as2. e'4 f2 as,4 fis'~ fis) fis( a,!2 ais2.) r4
  R1
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  R2.*35 dis2. R2.*14
  \makeOctaves #1 {
    b2.->~ b
    \cadenzaOn
    fis~ fis~ fis~ fis~ fis~\fermata
    \cadenzaOff
    \bar "."
    \time 4/4
    fis2
  } r
  R1*3 es'1~ es~ es( e!)~ e4 r2 ges4 fes2( es h!1~ h~
  h4 b a gis g! fis2.)
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
  r2 es'~ es es-> c g' f1 gis4-. r2.
  R1*5 h,1
  R1 \bar "||"
  r2 h'4 fis8. fis16 e2 h' fis2. r4
  fis h8.[ ais16] h4 d8. a16 a2. r4
  h e,8.[ h'16] fis4 fis h2. r4 R1*3
  r4 r16
  \override Glissando.minimum-length = #3
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \afterGrace f8\glissando {
  \stemDown \hideNotes
  c16 }
  \unHideNotes
  r r4
  \set subdivideBeams = ##t
	\set baseMoment = #(ly:make-moment 1 8)
	\set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  \times 4/5 {r32[ h( c fis) f--]} f16-. r
  \repeat unfold 2 {
  	r2.
		\afterGrace d16\glissando {
		\stemDown \hideNotes
		a16 }
		\unHideNotes
		r8. r2 r32 a' e dis h! g ges' as d,![ r c des] r8
	}
	%\set subdivideBeams = ##f
	h32[ r 
	\set stemRightBeamCount = #1 es r h! r es] r h[ r 
	\set stemRightBeamCount = #1 es r h r es] r
	h16 g'32 gis fis c d cis f!4
	R1*10
	\bar "|."
}
