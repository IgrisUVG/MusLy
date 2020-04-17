\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"
\include "MostschaTema.ly"

EGtTwo = \relative {
  \clef "treble_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  \tema
  \bar ":|."
  \break
  \repeat unfold 2 {
    <e, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
    \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
    <e h'>8 q r4 \acciaccatura e'8 \glissando fis2
    \break
  }
  \bar ".|:"
  \tema
  \bar ":|."
  \break
  b,8 f' c'\noBeam h!4 e,8 b'4 e'8 b f h,!( c4) <b'! e>->
  \bar "||"
  \break
  r2 r4^"Solo" h,! e2. fis4\glissando g8-. r b4
  <<
    {
      e2
    }
    \\
    {
      a,4 gis
    }
  >>
  <g b>2 \acciaccatura fis8 g r fis r
  \break
  e4 fis b \acciaccatura <c e>8 <es g> r
  <d fis>4 cis16( b) g( f!) e8 cis16( b) g( e) cis( b)
  g4->\glissando b8-. d-. e cis4.
  \break
  r4 <cis cis'>8 <e e'> <gis gis'> <g g'>4.
  <e, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r4 \acciaccatura e'8 \glissando fis2
  \break
  <e, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r dis'16 e dis d h b a g fis f
}


