\version "2.19.15"

\language "deutsch"

vikFunfte = \relative {
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
  \mark \markup{\fontsize #-2 {\bold {Var 5} \italic {a tempo}}}
  <<
    {
      a''4 fis
    }
    \\
    {
      \override TextScript.extra-offset = #'(-5.5 . 3.5)
      <d,, a' fis' a e'>2-\markup arph
    }
  >>
  <<
    {
      e''2
    }
    \\
    {
      d4 cis
    }
    \\
    {
      \voiceFour
      <a, e' a>2
    }
  >>
  <<
    {
      a''4 fis
    }
    \\
    {
      <d,, a' fis' a e'>2
    }
  >>
  <<
    {
      e''2
    }
    \\
    {
      \override StringNumber.staff-padding = #'()
      \override Glissando.minimum-length = #3
      \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
      d4 \stemUp\acciaccatura a8 \glissando \stemDown cis4\3
    }
    \\
    {
      \voiceFour
      <a, e' g>2
    }
  >>
  <<
    {
      \once\override StringNumber.extra-offset = #'(2 . -12)
      cis''4.\6
      \once\override StringNumber.extra-offset = #'(-8.6 . -11.5)
      d8\5
      \once \override Dots.extra-offset = #'(-1.7 . 0)
      h4. d8
    }
    \\
    {
      \set stringNumberOrientations = #'(left)
      <h,, fis' g fis'>2<g d' a'\4 d\3>
    }
    \\
    {
      \set stringNumberOrientations = #'(right)
      \once\override NoteColumn.force-hshift = #0.3
      d'\4 h'\2
    }
  >>
  <<
    {
      \override TextScript.extra-offset = #'(0.5 . 1.5)
      fis'4. a8-\markup{\italic rit.} e2
    }
    \\
    {
      <d,, a' e' a d><a'' d>4<g cis>
    }
    \\
    {
      \voiceFour
      s2 <a, e'>
    }
  >>
  \break
  \time 2/4
  <<
    {
      \override TextScript.extra-offset = #'(0 . .4)
      a''4.-\markup {\italic {a tempo}}
      d8 fis4. e8 a,4. c8 a4 s8 g
    }
    \\
    {
      e,8\rest
      \once\override Slur.positions = #'(-4 . 0)
      a\harmonic\noBeam( g' fis)
      s4 g8\rest a g( fis4) <c e>8 <fis, d'>4 d'8\rest s
    }
    \\
    {
      \voiceTwo
      d,,2 e''8 d\glissando b4 d,4\rest g f,8\rest a d r
    }
  >>
  \break
  \override Score.RehearsalMark.extra-offset = #'(16 . .4)
  \mark \markup{\fontsize #-2 {\bold {Coda} \italic {Ещё нежнее. Ближе к грифу}}}
  <<
    {
      a''4 fis
      \once\override NoteColumn.force-hshift = #.7
      e4. h'8 a4 fis
      \once\override NoteColumn.force-hshift = #.7
      e4. h'8
    }
    \\
    {
      d,8\rest e4. d4 cis d8\rest e4. d4 cis
    }
    \\
    {
      \voiceTwo
      f,8\rest
      \once\override NoteColumn.force-hshift = #.2
      fis h\rest a_~
      \once\override NoteColumn.force-hshift = #.3
      a2 f8\rest
      \once\override NoteColumn.force-hshift = #.2
      fis h\rest a_~
      \once\override NoteColumn.force-hshift = #.3
      a2
    }
    \\
    {
      \voiceTwo
      d,4 g g,8\rest a4. d4 g g,8\rest a4.
    }
  >>
  \break
  \override Staff.NoteCollision.merge-differently-headed = ##t
  <<
    {
      cis''4. d8 h4.
      \once \override Slur.direction = #DOWN
      \override TextScript.extra-offset = #'(-5 . 0)
      \acciaccatura h8 \glissando d8 fis,4. a8-\markup{\italic {(poco rit.)}}
    }
    \\
    {
      \voiceOne h,,4 s g s a s
    }
    \\
    {
      \voiceFour h8( h' fis'4) g,,8( a' d4) a,8( d e'4)
    }
  >>
  <<
    {
      e2
    }
    \\
    {
      d4 cis
    }
    \\
    {
      \voiceTwo
      e,8\rest g4.
    }
    \\
    {
      \voiceTwo
      g,4.\rest a8
    }
  >>
  \break
  <<
    {
      a''4. d8
    }
    \\
    {
      e,,8\rest
      \once\override Slur.positions = #'(-4 . 0)
      a\harmonic\noBeam( g' fis)
    }
    \\
    {
      \voiceTwo
      d,,2
    }
  >>
  <<
    {
      g'''8 fis e cis e d\glissando h g
      \override TextScript.extra-offset = #'(5 . 0)
      d4. fis8
    }
    \\
    {
      e8 d ais h h\rest fis' g,4
      \once\override Slur.positions = #'(-9 . -4)
      g8\rest( e a4)
    }
    \\
    {
      \voiceTwo
      s2 h,4 f8\rest d' a2
    }
  >>
  \break
  <<
    {
      \override TextScript.extra-offset = #'(0 . 1)
      e''2 cis!4.-\markup{\italic rit.}
      \override TextScript.font-size = -5
      \tag #'Part {
        \once\override TextScript.extra-offset = #'(19.6 . 0)
      }
      \tag #'Book {
        \once\override TextScript.extra-offset = #'(19.2 . 0)
      }
      d8~-"IV"
      \tag #'Part {
        \once\override TextScript.extra-offset = #'(12.7 . -1)
      }
      \tag #'Book {
        \once\override TextScript.extra-offset = #'(12.5 . -1)
      }
      d2-"VII"\fermata
    }
    \\
    {
      g,8\rest c g e~ e4 fis s4
      \once\override NoteColumn.force-hshift = #1.3
      \override TextScript.font-size = -5
      \once\override TextScript.extra-offset = #'(1.5 . 9.8)
      d''\harmonic-\markup {\circle\bold 3}
    }
    \\
    {
      \voiceTwo
      c,,2 g'8\rest a f,8\rest
      \override TextScript.font-size = -5
      \tag #'Part {
        \once\override TextScript.extra-offset = #'(19.9 . 10.3)
      }
      \tag #'Book {
        \once\override TextScript.extra-offset = #'(19.7 . 10.3)
      }
      a-"V"
      %\stemUp
      \override Stem.length = 6.5
      \once\override TextScript.extra-offset = #'(9.2 . 14.2)
      d,2-\markup {\circle\bold 5}
    }
    \\
    {
      \voiceOne
      \override TextScript.font-size = -5
      s2 s s4
      \once\override TextScript.extra-offset = #'(-1 . -2.8)
      <a'''\harmonic fis'\harmonic>_\fermata-\markup {\circle\bold 4}
    }
  >>
  \bar "|."
  \revert Score.RehearsalMark.extra-offset
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \mark \markup {\teeny MCMXCIX}
}