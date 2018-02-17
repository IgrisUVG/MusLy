\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 22
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\header {
  title = "VIk"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout{
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define RH rightHandFinger)

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                             further 2) 0)
         #})

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
  #{
    \override TextSpanner.font-size = #-5
    \override TextSpanner.dash-fraction = #0.3
    \override TextSpanner.dash-period = #1.5
    \override TextSpanner.bound-details.right.arrow = ##t
    \override TextSpanner.arrow-width = #0.2
    \override TextSpanner.arrow-length = #0.7
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
  #})

stringNumSpan =
#(define-music-function (parser location StringNumber) (string?)
  #{
    \override TextSpanner.font-size = #-5
    \override TextSpanner.dash-fraction = #0.3
    \override TextSpanner.dash-period = #1.5
    %\override TextSpanner.bound-details.right.arrow = ##t
    %\override TextSpanner.arrow-width = #0.2
    %\override TextSpanner.arrow-length = #0.7
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
  #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \relative {
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
  \layout {
    indent = 0
  }
}
%%%%%%%%%%%%%%% VAR 5 %%%%%%%%%%%%%%%%
\score {
  \relative {
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
        \once\override TextScript.extra-offset = #'(19.6 . 0)
        d8~-"IV"
        \once\override TextScript.extra-offset = #'(12.7 . -1)
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
        \once\override TextScript.extra-offset = #'(19.9 . 10.3)
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
  }
}