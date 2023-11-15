\version "2.19.15"

\include "noteHeads.ly"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\header{
  title = ""
  composer = "I. G"
  tagline = ##f
}

tema = {
  e8[ b] fis'
  \once \override Glissando.bound-details.left.X = #33
  f'4\glissando c''8 g''4 | e8 b fis' f'4 a16( bes a8) g |
}

\score {
  \new StaffGroup
  <<
    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \clef treble
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \tema
      <e b>8 q r4 r2 | <e b>8 q r4 \acciaccatura e'8 \glissando fis'2 |
      <e b>8 q r4 r2 | <e b>8 q r4 \acciaccatura e'8 \glissando fis'2 |
      r8.
      \override Stem #'(details lengths) = #'(5)
      <<
        {
          \once \override Stem #'length = #22
          \displaceHeads #'(0 0 0 1 -1)
          <\parenthesize cis' g' b' e'' f''>16
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
          bes'
        }
      >>
      r4 r16
      <<
        {
          \once \override Stem #'length = #22
          \displaceHeads #'(0 0 0 1 -1)
          <\parenthesize cis' g' b'! e'' f''>16
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
          bes'
        }
      >>
      r8 r4 |
      \revert Stem #'details
      r2 \hideNotes
      \grace { <a' g''>16\glissando }
      \unHideNotes
      <cis'' bes''> 8 r r4 |
    }
    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \clef treble
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \tema
      <e b>8 q r8. <bes f' c''>16~ q8. \deadNotesOn q16 \deadNotesOff \afterGrace des'4\glissando {
        \stemDown \hideNotes
        a16
      }\unHideNotes
      | <e b>8 q r4 \acciaccatura e'8 \glissando fis'2 |
      <e b>8 q r8. <bes f' c''>16~ q8. \deadNotesOn q16 \deadNotesOff \afterGrace des'4\glissando {
        \stemDown \hideNotes
        a16
      }\unHideNotes
      | <e b>8 q r8 dis'16 e' dis' d' b bes a g fis f |
      \tema
    }
    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \clef treble
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \tema
      <e b>8 q r8. <bes f' c''>16~ q8. \deadNotesOn q16 \deadNotesOff \afterGrace des'4\glissando {
        \stemDown \hideNotes
        a16
      }\unHideNotes
      | <e b>8 q r4 r2 |
      <e b>8 q r8. <bes f' c''>16~ q8. \deadNotesOn q16 \deadNotesOff \afterGrace des'4\glissando {
        \stemDown \hideNotes
        a16
      }\unHideNotes
      | <e b>8 q r8 dis'16 e' dis' d' b bes a g fis f |
      \tema
    }
    \new Staff \with {
      instrumentName = "E.Gt."
    }
    {
      \clef treble
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      r4 r r8 \ottava #1 <bes'' d''' g'''>16 q q q q q \ottava #0 | r1 |
      r1 | r | r |r4 r8 dis'16 e' dis' d' b bes a g fis f |
      r4 r r8 \ottava #1 <bes'' d''' g'''>16 q q q q q \ottava #0 | r2 \hideNotes
      \grace { <a' d'' g'' d'''>16\glissando }
      \unHideNotes
      <c'' fis'' b'' f'''!> 8 r r4 |
    }
    \new Staff \with {
      instrumentName = "Bass"
    }
    {
      \clef bass
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \bar ".|:" e,8 r r e, r e16 e e e e e | e,8 r r e, r a,16( bes, a,8) g, \bar ":|." \break
      e,8 e, r4 r2 | e,8 e, r4 r2 | \break
      e,8 e, r4 r2 | e,8 e, r8 dis16 e dis d b, bes, a, g, fis, f, \bar "||" \break
      \bar ".|:" e,8-> g16 c b,8 e,-> bes,16 d e e e e e e |e,8-> g16 c b,8 e,-> dis a,16( bes, a,8) g,
      \bar ":|." \break
      
    }
  >>
}