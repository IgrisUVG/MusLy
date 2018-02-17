\version "2.19.15"

\language "deutsch"

vikRubato = \relative {
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \cadenzaOn
  \override StringNumber.staff-padding = #'()
  \textSpannerDown
  \stringNumSpan "5"
  \override TextScript.extra-offset = #'(0 . 2)
  a32[(^\markup{\italic rubato}\startTextSpan h) \set stemRightBeamCount = #1 cis
  \set stemLeftBeamCount = #1 d(\glissando e)\stopTextSpan
  \stringNumSpan "4"
  fis\startTextSpan \set stemRightBeamCount = #1 g
  \set stemLeftBeamCount = #1 a(\glissando h)\stopTextSpan
  \once\override StringNumber.extra-offset = #'(0 . -0.5)
  cis_\3 d]
  \bar "|"
  <<
    {
      \once\override StringNumber.extra-offset = #'(-0.7 . -3.5)
      fis8\2([ g) a
      \once\override StringNumber.extra-offset = #'(-0.6 . -4.3)
      d,\3]
    }
    \\
    {
      <d,, a' d>2\arpeggio
    }
  >>
  <<
    {
      \arpeggioBracket
      r8
      \once\override Arpeggio.positions = #'(3 . 4.5)
      \once\override Arpeggio.padding = 0.1
      \once\override Fingering.extra-offset = #'(-0.2 . -3.8)
      a'''-4[\arpeggio
      \once\override Fingering.extra-offset = #'(-0.2 . -2.6)
      d-4
      \once\override Arpeggio.padding = 0.1
      <h e>]\arpeggio
    }
    \\
    {
      \voiceOne
      e,4. s8
    }
    \\
    {
      \voiceTwo
      \once\override Arpeggio.padding = 0.1
      <d,, fis' b>4.\arpeggio
      %\once \override Arpeggio.X-offset = 3
      \once \override Arpeggio.positions = #'(-4 . 4)
      \once\override Arpeggio.padding = 1
      <a' cis' e>8\arpeggio
    }
  >>
  \bar "|"
  <<
    {
      \override TupletNumber.stencil = ##f
      \override TupletBracket.bracket-visibility = ##f
      \textSpannerUp
      \stringNumberSpanner "2"
      \once\override TextSpanner.extra-offset = #'(-0.6 . -3)
      a''8[\startTextSpan \times 2/3 {g16(\stopTextSpan a g)]}
      fis8[ \times 2/3 {e16( fis e)]}
      \override TextScript.extra-offset = #'(0.5 . 1.5)
      d!4-\markup{\italic rit.} <fis, cis'>
    }
    \\
    {
      <d, a' d>2\arpeggio dis'8([ e)] r <a, g'>
    }
  >>
  \cadenzaOff
  \bar "||"
}