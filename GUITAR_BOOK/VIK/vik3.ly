\version "2.19.15"

\language "deutsch"

vikDritte = \relative {
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
  \mark \markup{\fontsize #-2 {\bold {Var 3} \italic {a tempo}}}
  <<
    {
      \stringNumberSpanner "2"
      \textSpannerUp
      \override Fingering.staff-padding = #'()
      \once\override Fingering.extra-offset = #'(-0.8 . -5.3)
      \once\override TextSpanner.extra-offset = #'(-0.8 . -4.75)
      <d' fis'-4>16\startTextSpan
      \once\override Fingering.extra-offset = #'(0 . 0.3)
      g_0
      \once\override Fingering.extra-offset = #'(0 . 0.3)
      d_0 <e g'>\stopTextSpan g d <a fis''><d g>
      <g, e''> g' d cis g' <h, d'> g' d
      <d fis' a>16 g d
      \set fingeringOrientations = #'(left)
      \once\override Fingering.extra-offset = #'(0.2 . 0)
      <e g'-4 h-3> g d <a fis'' a><d g>
      <g, e'' g> g' d cis g' d <h d' fis> <d g>
      <e h''>
      \once\override Fingering.extra-offset = #'(0 . 0.3)
      h'_0
      \once\override Fingering.extra-offset = #'(0 . 0.3)
      g_0
      \set fingeringOrientations = #'(right)
      \once \override Arpeggio.positions = #'(-4 . -1)
      \once\override StringNumber.extra-offset = #'(-0.7 . -8.6)
      <h, d-0 fis\5 cis''>\arpeggio h' g <g, a''><d' g h>
      \set fingeringOrientations = #'(left)
      \once\override Fingering.extra-offset = #'(0.2 . 0)
      <fis a'-3 d-4> g d
      \once\override Fingering.extra-offset = #'(0.2 . 0.3)
      <e g'-3> g d
      \once\override Fingering.extra-offset = #'(0.4 . 0.7)
      <a fis''-3><d g>
      %\compoundMeter #'((4 4) (1 8))
      \time 7/8
      \override Fingering.extra-offset = #'(0.5 . 0.9)
      <g, fis''-4>[ g' d <cis e'>]
      \once\override Beam.positions = #'(4.3 . 4)
      g'[ d <d, d''-1> g'] fis[ a, g' fis] d g
      \time 4/4
      <e h''> h' g
      \once \override Arpeggio.positions = #'(-4 . -1)
      <h, d fis cis''>\arpeggio h' g <g, a''><d' g h>
      <fis a' d> g d <e g'> g d <a fis''><d g>
      %\compoundMeter #'((4 4) (1 8))
      \time 7/8
      <g, fis''>[ g' d <cis e'>] g'[ d <d, d''> g'] fis[ a, g' fis] d g
      \break
      \compoundMeter #'((3 8) (2 4))
      \once \override Arpeggio.positions = #'(-4 . -2)
      \once\override StringNumber.extra-offset = #'(-0.7 . -7.25)
      <g, e'\5 fis'>\arpeggio g' d <a e''> g' d <d, d''> g' fis a, g'[ fis d g]
      \once \override Arpeggio.positions = #'(-5 . -2)
      <g, e' fis'>\arpeggio g' d <a a''> g' d
    }
    \\
    {
      \dotsUp
      \once\override Fingering.extra-offset = #'(0.2 . 3)
      \once\override StringNumber.extra-offset = #'(-1.7 . -6.6)
      d8.-1\5
      \once\override Fingering.extra-offset = #'(0.2 . 4)
      e-2
      \once\override Fingering.extra-offset = #'(0.2 . 2.5)
      \once\override StringNumber.extra-offset = #'(-1.8 . -7.6)
      a,8-3\6 g8. cis8 h8. d8.
      \once\override Fingering.extra-offset = #'(-1.3 . 6)
      e-2 a,8 g8. cis h8
      \once\override StringNumber.extra-offset = #'(-1.7 . -6.4)
      e8.\5
      \once\override StringNumber.extra-offset = #'(0.6 . -8.2)
      h\6 g8
      \once\override Fingering.extra-offset = #'(-1.3 . 5.3)
      \once\override StringNumber.extra-offset = #'(0.6 . -6.3)
      fis'8.-1\5
      \once\override Fingering.extra-offset = #'(-1.3 . 5.3)
      e-1
      \once\override Fingering.extra-offset = #'(-1.3 . 4.2)
      \once\override StringNumber.extra-offset = #'(0.6 . -8.8)
      a,8-2\6 g8.[ cis] d,[ a' d8]
      e8. h g8 fis'8. e a,8 g8.[ cis] d,[ a' d8]
      \once\override StrokeFinger.extra-offset = #'(-3.8 . -0.3)
      g,8.[\RH #1
      \once\override Fingering.extra-offset = #'(0 . 2.6)
      a-0] d,[ a' d8] g,8.[ a]
    }
  >>
  <<
    {
      \once\override Beam.positions = #'(7.4 . 6.5)
      \once \override Arpeggio.positions = #'(-6 . -1)
      \once\override StringNumber.extra-offset = #'(-0.7 . -9)
      <d, fis'\5 d''>16\arpeggio a''' g, d
      \stringNumberSpanner "2"
      \textSpannerUp
      \once\override TextSpanner.extra-offset = #'(-0.8 . -3.4)
      a''[\startTextSpan g, d h'']\stopTextSpan
      \time 2/4
      a,, a'' g, d a'' g, a, g''
    }
    \\
    {
      \dotsUp
      s4
      \once\override Beam.positions = #'(-5.4 . -4.7)
      a8. \set stemLeftBeamCount = #1 h16	s
      \once\override Beam.positions = #'(-5.4 . -5.5)
      a8.[ a \set stemLeftBeamCount = #1 g16]
    }
    \\
    {
      \voiceTwo
      \dotsUp
      d,,8. d' d8 a8. d a8
    }
  >>
  \pageBreak
  \time 4/4
  <<
    {
      <d fis'>16 g d <e g'> g d <a fis''><d g>
      <g, e''> g' d cis g' <h, d'> g' d
      <fis a'> g d <d h''> g d <h cis''><d g h>
      <g, d'''> h' g d h' g e <g h>
      \break
      <d a''> h' g fis h g <e h''><g h>
      \stringNumberSpanner "2"
      \textSpannerUp
      \once\override TextSpanner.extra-offset = #'(-0.8 . -3.5)
      \once\override Beam.positions = #'(5.3 . 5)
      <g, fis''>\startTextSpan g' d\stopTextSpan a g' d <h a''><d g>
      \compoundMeter #'((3 8) (2 4))
      <d g'> g d <a e''> g' d <h d'> g' d g, g'[ d <cis e'> g']
      <d fis'> g d <a cis'> g' d <d, d''> g' fis a, g'[ fis d g]
      \time 4/4
      \override TextScript.extra-offset = #'(1 . 1.5)
      fis g d e g d cis-\markup{\italic rit.}
      \once\override Slur.positions = #'(1.5 . 1)
      g'~( g4 fis)
    }
    \\
    {
      \dotsUp
      d8. e a,8 g8. cis8 h8. fis'8.
      \once\override StringNumber.extra-offset = #'(0.6 . -7.3)
      d\6 h8 g8. d'
      \once\override StringNumber.extra-offset = #'(0.6 . -6.8)
      e8\5
      \once\override StringNumber.extra-offset = #'(0.6 . -7.3)
      \once\override Beam.positions = #'(-5.3 . -5)
      d8.\5 fis e8 g,8.
      \once\override Fingering.extra-offset = #'(0 . 2.6)
      a-0
      \once\override StringNumber.extra-offset = #'(0.6 . -8.2)
      h8\6
      \once\override StringNumber.extra-offset = #'(0.6 . -7.3)
      d8.[\5
      \once\override Fingering.extra-offset = #'(0.2 . 2.6)
      a-0] h[ g cis8]
      d8.[ a] d,[ a'
      \once\override Fingering.extra-offset = #'(0.2 . 4)
      d8-3]-\markup { \postscript #"1.7 5 moveto 5.7 1 rlineto stroke" }
      \once\override StringNumber.extra-offset = #'(0.6 . -6.3)
      \once\override Fingering.extra-offset = #'(-1.2 . 3.2)
      fis8.-3\5
      \once\override Fingering.extra-offset = #'(0.2 . 3)
      e-3
      \once\override Fingering.extra-offset = #'(0.2 . 2.6)
      cis8-3
      \once\override Fingering.extra-offset = #'(1.3 . -5.5)
      \once\override StrokeFinger.extra-offset = #'(-3 . -0.3)
      \once \override Arpeggio.positions = #'(-5.5 . -2.5)
      <d,\RH #1 d'-3>2\arpeggio
    }
  >>
  \bar "||"
}