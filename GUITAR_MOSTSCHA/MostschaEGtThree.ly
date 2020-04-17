\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"
\include "MostschaTema.ly"

EGtThree = \relative {
  \clef "treble_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  \tema
  \bar ":|."
  \break
  <e, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff 
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r4 r2
  <e h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r8 dis'16 e dis d h b a g fis f
  \break
  \bar ".|:"
  \tema
  \bar ":|."
  \break
  b8 f' c'\noBeam h!4 e,8 b'4 e'8 b f h,!->~ h4 g'->
  \bar "||"
  \break
  \repeat unfold 4 {\tema \break}
  <e,, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r8. cis''16( c2)
  \break
  <e,, h'>8 q r8. <b' f' c'>16~ q8. \deadNotesOn q16 \deadNotesOff
  \afterGrace des4\glissando {\stemDown \hideNotes a16}\unHideNotes
  <e h'>8 q r8 dis'16 e dis d h b a g fis f
}


