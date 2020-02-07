\version "2.18.0"

\language "deutsch"

fluteMusic = \relative {
  \clef treble
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override TupletNumber.transparent = ##t
  \override TupletBracket.stencil = ##f
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #1.65 \teeny  \flat
  }
  \override TextScript.extra-offset = #'(-1 . -2)
  a'1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4( d es4.) b'8( eis,2) cis--
  %\break
  a1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4.( d8 f4) b-- cis1~(
  %\break
  cis d4.) r8 r gis,( b, es,)
  \shape #'((-1 . -1.5) (-0.5 . 0.7) (0 . 0) (0 . 0)) Slur
  c2( d'
  a'2~ \tuplet 3/2 4 {a8) b( a b fis cis' a b a} b16 a f d'
  \tuplet 6/4 {cis16 a b a e a}
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  b32 a es a b a gis a)
  \set subdivideBeams = ##f
  e'4( d es~ es16) g( h, e, dis2 cis8) gis' dis' eis c2. ~ c8 g,(
  d' e h4.) b'8( c, f,) cis2( eis' c'1~
  \bar "||"
  \time 3/4
  c4) fis,( a cis,4.) d8\noBeam( e a fis2.)
  r16 a,( h his gis' g fis8) dis16( d cis8~
  cis4) gis'( h dis,4.) e8\noBeam( fis h g2) r8 c,(
  gis e dis) a'[( e cis] f4.) as8\noBeam b es as4. cis8( dis, gis,)
  eis2 fis16( h cis g'
  \bar "||"
  \time 4/4
  ais f c h a' e ais, a h' dis, a gis e d e d
  \tuplet 6/4 {e d e d e d}
  \set subdivideBeams = ##t
  es32 d es d es d es d es d es d es d cis d)
  \set subdivideBeams = ##f
  es16( gis b e!
  gis e b a g' dis gis, g a' d, g, fis eis dis eis dis
  \tuplet 6/4 {f es f es f es}
  \set subdivideBeams = ##t
  \repeat unfold 7 {e32 es} d es)
  \set subdivideBeams = ##f
  \tuplet 5/4 4 {e16( a h fis' gis b a b fis cis'}
  \tuplet 6/4 {a b a b a f}
  \tuplet 7/4 {d' cis a b a e a}
  \set subdivideBeams = ##t
  b32 a es a b a gis a)
  \tuplet 5/4 1 {e'4( h' e,) d-- a-- his,( gis' dis' eis cis)}
}
