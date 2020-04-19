\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"
\include "MostschaTema.ly"

EGtFour = \relative {
  \clef "treble_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  %\override MultiMeasureRest.expand-limit = #2
  \bar ".|:"
  r4 r r8
  \ottava #1
  <b' d g>16 q q q q q
  \ottava #0
  R1
  \bar ":|."
  R1*3 r4 r8 dis,,16 e dis d h b a g fis f
  \bar ".|:"
  r4 r r8
  \ottava #1
  <b'' d g>16 q q q q q
  \ottava #0
  r2
  \hideNotes
  \grace { <a, d g d'>16\glissando }
  \unHideNotes
  <c fis b f'!> 8 r r4
  \bar ":|."
  R1 e8 b f e->~ e4 fis->
  \bar "||"
  \tag #'Part {\break}
  r2. h!4 e8~ <e g h>-> r4 <d g b>16->[ r8 <des f b>16->] r4
  \repeat unfold 3 {
    \override Stem #'(details lengths) = #'(5)
    <<
      {
        \once \override Stem #'length = #20
        \displaceHeads #'(0 0 0 1 -1)
        <\parenthesize cis, g' h e f>8_>
      }
      \\
      {
        \voiceThree
        \once \override NoteHead #'X-offset = #2
        \once \override Stem #'rotation = #'(40 0 0)
        \once \override Stem #'extra-offset = #'(0.2 . -0.2)
        \once \override Stem #'length = #9.5
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental #'extra-offset = #'(3.7 . 0)
        b'
      }
    >>
    r
    \revert Stem #'details
    r4 r8
    \ottava #1
    <b' d g>16 q q q q q
    \ottava #0
    r8 <e, g h>-> r4 <d g b>16->[ r8 <des f b>16->] r4
  }
  r2 h!4.( b8) r4 r8. cis'16( c2) r2 h,!4.( b8) R1
}


