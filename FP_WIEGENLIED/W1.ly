%%%%%%%%%%% RH %%%%%%%%%%%%
ersteRH = \relative {
  \clef treble
  \key g \minor
  \override Staff.TimeSignature #'stencil = ##f
  g'4 d'
  <<
    {
      b2 g4
    }
    \\
    {
      r8 d es e f r
    }
  >>
  fis'4
  <<
    {
      d2 e4 <d, b'> d' <es, b'> des' <fes, b><es c'>2
    }
    \\
    {
      r8 ces' b a as g 
      \once \override NoteColumn.force-hshift = #1.3
      fis f as g
      \once \override NoteColumn.force-hshift = #1.3
      ges f as g
      \once \override NoteColumn.force-hshift = #1.5
      ges f 
      \once \override NoteColumn.force-hshift = #1.3
      a as g fis
    }
  >>
  g4 d'
  <<
    {
      b2 g4
    }
    \\
    {
      r8 d es e f r
    }
  >>
  fis'4
  <<
    {
      d2 d4 e fis g d b <c e>2
    }
    \\
    {
      as8 g fis f es e f fis g gis a b a as g ges f ges g as
    }
  >>
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicEins = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
ersteLH = \relative {
  \clef bass
  \key g \minor
  \override Staff.TimeSignature #'stencil = ##f
  es,,8 d'' a' f' c4 ces
  es,,,8 es'' b' g' e,,,4 f
  g8 fis'' b es g,,, f'' b d
  g,,, d'' a' es' fis,,, d'' b' f,,
  es8 d'' a' f' c4 ces
  es,,,8 es'' b' g' ces,4 b8 cis,,,
  d f'' b es d,,, fis'' b d
  d,,, b'' fis' d' b4 a8 d,,,
}