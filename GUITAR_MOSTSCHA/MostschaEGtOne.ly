\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"
\include "MostschaTema.ly"

EGtOne = \relative {
  \clef "treble_8"
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  \tema
  \bar ":|."
  \tag #'Part {\break}
  \repeat unfold 2 {
    <e, h'>8 q r4 r2 <e h'>8 q r4 \acciaccatura e'8 \glissando fis2
  }
  %<e, h'>8 q r4 r2 <e h'>8 q r4 \acciaccatura e'8 \glissando fis2
  \tag #'Part {\break}
  \bar ".|:"
  r8.
  \override Stem #'(details lengths) = #'(5)
  <<
    {
      \once \override Stem #'length = #20
      \displaceHeads #'(0 0 0 1 -1)
      <\parenthesize cis g' h e f>16
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
  r4 r16
  <<
    {
      \once \override Stem #'length = #20
      \displaceHeads #'(0 0 0 1 -1)
      <\parenthesize cis, g' h! e f>16
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
      \once \override Accidental #'extra-offset = #'(4.7 . 0)
      b'
    }
  >>
  r8 r4 |
  \revert Stem #'details
  r2 \hideNotes
  \grace { <a g'>16\glissando }
  \unHideNotes
  <cis b'>8 r r4
  \bar ":|."
  R1 e'8 b f h,!( c4) <h'! f'!>->
  \bar "||"
  \tag #'Part {\break}
  \repeat unfold 4 {
    \repeat unfold 2 {
      dis,,16( e) g a b cis d dis e8-> r <g b>-> r
    }
    \tag #'Part {\break}
  }
  \repeat unfold 2 {
    <e,, h'>8 q r4 <e'' e'>2 <e,, h'>8 q r4 \acciaccatura e'8 \glissando fis2
  }
  %<e, h'>8 q r4 <e'' e'>2 <e,, h'>8 q r4 \acciaccatura e'8 \glissando fis2
}


