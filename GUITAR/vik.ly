\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15

  footnote-padding = 8
  footnote-footer-padding = 7
  footnote-separator-markup = \markup \null
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
  <<
    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Guitar"
          \line { \circle 6"= D" }
        }
      }
    }
    \relative {
      \key d \major
      \time 2/4
      \override Staff.TimeSignature.stencil = ##f
      \override Score.RehearsalMark.extra-offset = #'(8 . 5)
      \mark \markup {\fontsize #-2 {Andantino e dolce}}
      <h d>4 <cis e>
      \time 10/4
      <<
        {
          \override TextScript.font-size = -2
          %\override TextScript.extra-offset = #'(0 . 0.5)
          g'
          \once\override Fingering.extra-offset = #'(-0.2 . 0.6)
          d'-4 a'-"V" d
          \once\override TextScript.extra-offset = #'(0 . 0.75)
          fis,-"IIV" g
          \once\override TextScript.extra-offset = #'(0 . 1.5)
          e2-"V" s4 a
        }
        \\
        {
          \override Stem.length = 5
          \override Script.extra-offset = #'(2 . 4.3)
          <e, fis>2 e'\prall e d
        }
        \\
        {
          \voiceTwo
          d,,2 d' a' a, \stemUp <h d>4 <cis e>
        }
      >>
      \time 8/4
      <<
        {
          fis'2 s fis' e4. fis8
        }
        \\
        {
          \voiceOne
          g,,4
          \once\override Slur.direction = #DOWN
          \once\override Slur.positions = #'(2.5 . 3.5)
          \acciaccatura b8-\markup {
            \postscript #"0.5 -3.1 moveto 2.3 0.8 rlineto stroke"
          }
          d4 a' d fis, g e2
        }
        \\
        {
          \voiceTwo
          \override Stem.length = 5.6
          \override Script.extra-offset = #'(2 . 4.3)
          s2 e\prall
          \once\override NoteColumn.force-hshift = #.7
          e
          \once\override NoteColumn.force-hshift = #.7
          d4_( cis)
        }
        \\
        {
          \voiceTwo
          <d,, a' e'>2 d' d, a'
        }
      >>
      \break
      <<
        {
          \revert TextScript.font-size
          \override TextScript.extra-offset = #'(-2 . 0)
          d''4 \glissando a g2-1 s2 h4\rest a4-\markup{\italic rit.}
        }
        \\
        {
          \once\override Fingering.extra-offset = #'(1.2 . -3.6)
          \shape #'((-0.5 . -0.3) (0 . -0.8) (0 . -0.5) (0 . -0.3)) LaissezVibrerTie
          \xLV #4 <h,?-0\laissezVibrer d fis>4 s
          \override Stem.length = 5.6
          \once\override Fingering.extra-offset = #'(1.2 . 4.5)
          e-4( h) s1
        }
        \\
        {
          \voiceTwo
          \revert Stem.length
          \override TextScript.font-size = -2
          s2 \stemDown <g, d'>
          \once\override TextScript.extra-offset = #'(0 . 3)
          <a e' a d>^"II" <a g' cis e>^"V"
        }
      >>
      \time 2/4
      %\set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
      \override Score.VoltaBracketSpanner.Y-offset = 8
      \repeat volta 3 {
        <<
          {
            \once\override StringNumber.extra-offset = #'(-0.7 . -2)
            \once\override Fingering.extra-offset = #'(1.3 . 0)
            a''4\2-4-\markup{\italic {a tempo}} fis
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
            \once\override StringNumber.extra-offset = #'(0 . 0.5)
            \once\override NoteColumn.force-hshift = #.2
            fis_\5 h\rest
            \once\override StringNumber.extra-offset = #'(0 . 0.5)
            a_\4_~
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
        \override Staff.NoteCollision.merge-differently-headed = ##t
        <<
          {
            cis''4. d8 h4.
            \once\override Slur.direction = #DOWN
            \once\override Slur.positions = #'(2.5 . 3.5)
            \acciaccatura h8-\markup {
              \postscript #"2.5 -1.6 moveto 2.5 1 rlineto stroke"
            }
            d8 fis,4. a8
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
      }
      \alternative {
        {
          <<
            {
              \once\override StringNumber.extra-offset = #'(-1.5 . -2.5)
              a''4.\2-1 d8 fis4. e8 a,4. c8 a4 s8
              \once\override StringNumber.extra-offset = #'(-0.6 . -2)
              g\2
            }
            \\
            {
              \revert Stem.length
              e,8\rest
              \once\override Slur.positions = #'(-4 . 0)
              \once\override TextScript.font-size = -6
              \once\override TextScript.extra-offset = #'(-0.3 . -2.45)
              a\harmonic\noBeam(^"XII"
              \set Score.repeatCommands = #'((volta #f))
              \once\override TextScript.font-size = -5
              \once\override TextScript.extra-offset = #'(-3 . -4)
              g'^4^\markup {\circle\bold 5} fis)
              s4 g8\rest a g( fis4) <c e>8 <fis, d'>4
              \override TextScript.extra-offset = #'(-2 . -3)
              d'8\rest^\markup{\italic rit.} s
            }
            \\
            {
              \voiceTwo
              d,,2 e''8 d-\markup {
                \postscript #"1 4.5 moveto 3.3 -1 rlineto stroke"
              }
              b4 d,4\rest g f,8\rest a d_\5 r
            }
          >>
        }
        \bar ":|."
        {
          <<
            {
              a''4. d8
            }
            \\
            {
              e,,8\rest
              \once\override Slur.positions = #'(-4 . 0)
              a\harmonic\noBeam(
              \set Score.repeatCommands = #'((volta #f))
              g' fis)
            }
            \\
            {
              \voiceTwo
              d,,2
            }
          >>
        }
      }
      <<
        {
          \override TextScript.font-size = -2
          \override TextScript.extra-offset = #'(-1 . -2)
          g'''8 fis e cis e-"IX"
          \once\override Fingering.extra-offset = #'(-0.3 . -2.5)
          d-2\glissando
          \once\override Fingering.extra-offset = #'(-0.3 . -2.3)
          h-2
          \once\override StringNumber.extra-offset = #'(-0.4 . -2.6)
          g\2
          \override TextScript.extra-offset = #'(5 . 0)
          \revert TextScript.font-size
          d4. fis8 e2 cis!4.-\markup{\italic rit.} d8~ d2
        }
        \\
        {
          e8 d ais h h\rest fis' g,4
          \once\override Slur.positions = #'(-9 . -4)
          \revert TextScript.font-size
          \override TextScript.extra-offset = #'(0 . 2.5)
          g8\rest( e a4) g8\rest c g
          \once\override TextScript.font-size = -2
          e~^"II" e4 fis
        }
        \\
        {
          \voiceTwo
          s2 h,4 f8\rest d' a2 c g'8\rest a f,8\rest a
          \stemUp
          \override Stem.length = 6.5
          d,2
        }
      >>
      \bar "||"
    }
    \new Dynamics {
      s2 s2*5 s2*4 s2 s8 s8\> s4 s2*2
      \repeat volta 3 {
        \override TextScript.extra-offset = #'(-2.3 . 2.3)
        s2*8\!-\markup {
          \column {
            \line { \teeny 1: \small\dynamic p }
            \line { \teeny 2: \small\dynamic f }
          }
        }
      }
      \alternative{
        {
          s2*4
        }
        {
          s2
        }
      }
      s2*2 s8 s16 s\> s4 s2*2 s2\!
    }
  >>
}
%%%%%%%%%%%%%%% VAR 1 %%%%%%%%%%%%%%%%
\score {
  \relative {
    \key d \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
    \mark \markup{\fontsize #-2 {\bold {Var 1} \italic {a tempo}}}
    <<
      {
        a'8[ <h d e fis> q q]
        fis[ <g a e' fis> q q]
        e[ <g h d e> q q]
        q q f'\rest <cis e a>
        a8[ <h d e fis> q q]
        fis[ <g a e' fis> q q]
        e[ <g h d e> q q]
        q q f'\rest <cis e a>
      }
      \\
      {
        \once\override StrokeFinger.extra-offset = #'(-2.8 . -0.3)
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.5)
        a2\5\RH #1
        \once\override StringNumber.extra-offset = #'(-0.5 . -3.5)
        fis\5
        \once\override StrokeFinger.extra-offset = #'(-2.8 . -0.6)
        \once\override StringNumber.extra-offset = #'(-0.5 . -4)
        e~\5\RH #1 e4
        \override Stem.length = 5.6
        \once\override StrokeFinger.extra-offset = #'(-2.8 . -0.6)
        \once\override StringNumber.extra-offset = #'(0.5 . -4.6)
        h'\4\RH #1 a2 fis e~ e4 h'
      }
      \\
      {
        \voiceTwo
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,,2\laissezVibrer s
        \override NoteColumn.force-hshift = #.2
        \once\override StringNumber.extra-offset = #'(-1.6 . 1.8)
        a'~_\6 a4
        \revert NoteColumn.force-hshift
        a
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,2\laissezVibrer s
        \override NoteColumn.force-hshift = #.2
        a'~ a4 a
      }
      \\
      {
        %1
        \once\override Fingering.extra-offset = #'(3 . -4.3)
        s8^0
        \once\override StringNumber.extra-offset = #'(-1.5 . -2.3)
        \hideNotes
        a^\4
        \unHideNotes
        \once\override Fingering.extra-offset = #'(-2.5 . -0.3)
        s^0
        \once\override StringNumber.extra-offset = #'(-8 . -0.6)
        \hideNotes
        a^\3
        \unHideNotes
        %2
        \once\override Fingering.extra-offset = #'(2.8 . -5.3)
        s8^0
        \once\override StringNumber.extra-offset = #'(-0.8 . -3.3)
        \hideNotes
        a^\4
        \unHideNotes
        \once\override Fingering.extra-offset = #'(-5.2 . -1.6)
        s^0
        \once\override StringNumber.extra-offset = #'(-7.2 . -0.5)
        \hideNotes
        a^\2
        \unHideNotes
        %3
        \once\override Fingering.extra-offset = #'(4.5 . -3.2)
        s8^0
        \once\override StringNumber.extra-offset = #'(-1.5 . -4.5)
        \hideNotes
        h^\4
        \unHideNotes
        \once\override Fingering.extra-offset = #'(-2.6 . -0.3)
        s^0
        \once\override StringNumber.extra-offset = #'(-8 . -1.5)
        \hideNotes
        h^\3
        \unHideNotes
        %4
        s8
        \once\override StringNumber.extra-offset = #'(6.2 . -4.3)
        \hideNotes
        h^\3
        \unHideNotes
        \once\override Fingering.extra-offset = #'(1.5 . -1.8)
        s^0
        \once\override StringNumber.extra-offset = #'(-0.5 . 1.1)
        \hideNotes
        h^\2
        \unHideNotes
        s2*4
      }
    >>
    <<
      {
        a''8\rest <e fis a>[ q] a\rest
        a\rest <d,, g a'>[ q] a''\rest
        \override TextScript.extra-offset = #'(0 . 2)
        \once\override TextScript.font-size = -2
        a\rest^"IX" <h, fis' a e'>[ q] a'\rest-\markup{\italic rit.}
        \once\override TextScript.extra-offset = #'(-0.5 . 1)
        \once\override TextScript.font-size = -2
        a\rest^"VII" <a, e' g d'>[ q <a e' g cis>]
      }
      \\
      {
        \once\override StrokeFinger.extra-offset = #'(-3.3 . 0.6)
        \once\override StringNumber.extra-offset = #'(0.5 . -4.2)
        cis4.\4\RH #2 d8
        \once\override Fingering.extra-offset = #'(-1 . -2.4)
        h4.^0
        \once\override StringNumber.extra-offset = #'(-1.4 . -1.7)
        d8^\4 fis,4.
        \once\override StringNumber.extra-offset = #'(-1 . -2.5)
        a8^\5 e2
      }
      \\
      {
        \hideNotes
        s4 h'8\glissando d s4 g,8\glissando d' s4 e,8\glissando a s2
        \unHideNotes
      }
      \\
      {
        \voiceTwo
        \once\override StringNumber.extra-offset = #'(0.5 . 2)
        h,2_\6 g d d
      }
      \\
      {
        s8
        \hideNotes
        \once\override Fingering.extra-offset = #'(-1.8 . -2.4)
        s^0
        \once\override StringNumber.extra-offset = #'(-7.5 . -2.7)
        d''^\3
        \once\override StringNumber.extra-offset = #'(-10 . -0.5)
        d^\2
      }
    >>
    \bar "||"
  }
}
\pageBreak
%%%%%%%%%%%%%%% VAR 2 %%%%%%%%%%%%%%%%
\score {
  \relative {
    \key d \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    \override Score.RehearsalMark.extra-offset = #'(4 . -2)
    \mark \markup{\fontsize #-2 {\bold {Var 2} \italic {a tempo}}}
    <<
      {
        a''2-1 fis\2 e-2\2 a fis
      }
      \\
      {
        a8[
        \override NoteHead.style = #'harmonic
        fis' d a] e[ a g d] h\rest a'[ d cis]
        \revert NoteHead.style
        a8[
        \override NoteHead.style = #'harmonic
        fis' d a] e[ a g d]
      }
      \\
      {
        \override TextScript.font-size = -5
        \hideNotes
        s8
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        fis'-\markup {\circle\bold 2}
        \once\override TextScript.extra-offset = #'(0 . -3)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -4)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-1.2 . -8.6)
        e-\markup {\circle\bold 5}
        \once\override TextScript.extra-offset = #'(0 . -3.1)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(0 . -2.8)
        g-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -3.9)
        d-\markup {\circle\bold 4}
        s
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        a'-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        cis-\markup {\circle\bold 5}
        s1
        \unHideNotes
      }
      \\
      {
        \override TextScript.font-size = -5
        \hideNotes
        s8
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        fis^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        d^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.7)
        a^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -8.3)
        e^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.8)
        a^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        g^"XII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.7)
        d^"XII"
        s
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        a'^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        d^"VII"
        \once\override TextScript.extra-offset = #'(-0.5 . -6)
        cis^"IV"
        s1
        \unHideNotes
      }
      \\
      {
        \voiceTwo
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,,,2\laissezVibrer s a'
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,2\laissezVibrer s
      }
    >>
    \break
    <<
      {
        \override TextScript.extra-offset = #'(0 . 2)
        e''4. h'8 cis4. d8 h4. d8
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.2)
        \once\override Fingering.extra-offset = #'(-1.3 . -1.3)
        fis,2-4\2
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.2)
        \once\override Fingering.extra-offset = #'(-1.3 . -1)
        e-2\2-\markup{\italic rit.}
      }
      \\
      {
        \override NoteHead.style = #'harmonic
        \override Rest.extra-offset = #'(0 . 1.8)
        e,8\rest a'[ d] s r
        \override NoteColumn.force-hshift = 0
        fis[ h] r r d,[ g] r r a,[ fis' d] r a[ d cis]
      }
      \\
      {
        \hideNotes
        s2 s8
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        fis-\markup {\circle\bold 2}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        h-\markup {\circle\bold 2} s s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        d,-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        g-\markup {\circle\bold 3} s s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        a,-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.5 . -3)
        fis'-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.4 . -3.5)
        d-\markup {\circle\bold 4} s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.4 . -2.8)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        cis-\markup {\circle\bold 5}
        \unHideNotes
      }
      \\
      {
        \hideNotes
        s2 s8
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        fis^"VII"
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        h^"V" s s
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        d,^"VII"
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        g^"V" s s
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        a,^"VII"
        \once\override TextScript.extra-offset = #'(-1 . -5.7)
        fis'^"IV"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.3)
        d^"V" s
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        a^"V"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        d^"V"
        \once\override TextScript.extra-offset = #'(-1 . -6)
        cis^"IV"
        \unHideNotes
      }
      \\
      {
        \voiceTwo
        a,,4. a8\rest s2*4
      }
    >>
    \bar "||"
  }
}
%\pageBreak
%%%%%%%%%%%%%%% VAR 3 %%%%%%%%%%%%%%%%
\score {
  \relative {
    \key d \major
    \time 4/4
    \override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    \override Score.RehearsalMark.extra-offset = #'(4 . -1)
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
        \once\override Fingering.extra-offset = #'(-0.3 . 0)
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
        \once\override Slur.positions = #'(2 . 1.5)
        \override BreathingSign.extra-offset = #'(1.2 . 1.2)
        \override BreathingSign.text = \markup { \fontsize #3 , }
        g'~( g4 fis)\breathe
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
}
%\pageBreak
%%%%%%%%%%%%%%% VAR 4 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% СНОСКА %%%%%%%%%%%%%%%%
%{%}
\markup {
  \null
  \footnote
  \null
  \concat {
    "*" \hspace #1.5
    \score {
      \relative {
        \key d \major
        \magnifyStaff #(magstep -2)
        \override Staff.TimeSignature.stencil = ##f
        \override TupletNumber.transparent = ##t
        <<
          {
            \set subdivideBeams = ##t
            \set baseMoment = #(ly:make-moment 1/8)
            \set beatStructure = #'(2 2 2 2)
            \override Fingering.staff-padding = #'()
            \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
            d32 a'''\RH #4 a\RH #3 a\RH #2 fis, a' a a s
          }
          \\
          {
            \shape #'((0 . 0) (1 . 0) (2 . 0) (3 . 0)) Slur
            d,,,8([ \set stemRightBeamCount = #1 fis'16
            \hideNotes \set stemLeftBeamCount = #1 g16)]
          }
        >>
      }
      \layout {
        indent = 0
      }
    }
  }
}
%}
\score {
  <<
    \new Staff \relative {
      \key d \major
      \time 4/4
      \override Staff.TimeSignature.stencil = ##f
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
      \mark \markup{\fontsize #-2 {\bold {Var 4} \italic {a tempo}}}
      <<
        {
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(2 2 2 2)
          \override TupletNumber.stencil = ##f
          \tuplet 10/8 4 {
            \override Fingering.staff-padding = #'()
            \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
            \textSpannerUp
            \stringNumberSpanner "2"
            \once\override TextScript.font-size = 2
            %\once\override TextScript.extra-offset = #'(0 . 0)
            d32^"*"
            a'''\RH #2 \startTextSpan a\RH #4 a\RH #3 a\RH #2
            fis,\stopTextSpan a' a a a g, a' a a a a, a' a a a
            e, fis' fis fis
            \override TextScript.font-size = -5
            \once\override TextScript.extra-offset = #'(0.7 . -6.3)
            fis-\markup {\circle\bold 6}
            \once\override TextScript.extra-offset = #'(-1.8 . -7.3)
            a,\harmonic-"VII" fis' fis fis fis
            g, fis' fis fis fis d, fis' fis fis fis
            \stringNumberSpanner "1"
            a,, e''\startTextSpan e e e e,\stopTextSpan e' e e e a, e' e e e d e e e e
            h e e e e cis e e e e g, h' h h h a,, h'' h h h
            d,,, a''' a a a fis, a' a a a g, a' a a a a, a' a a a
            e, fis' fis fis fis a,\harmonic fis' fis fis fis
            g, fis' fis fis fis d, fis' fis fis fis
            \pageBreak
            a,, e'' e e e e, e' e e e a, e' e e e d e e e e
            h e e e e cis e e e e g, h' h h h a,, h'' h h h
            d,,, d'' d d d h, d' d d d fis, a' a a a g, a' a a a
            \override TextScript.font-size = -2
            g,,-"V" cis'' cis cis cis d,, cis'' cis cis cis
            a, cis' cis cis cis d, h' h h h
            a,,-"II" fis'' fis fis fis d, fis' fis fis fis
            a, fis' fis fis fis e a_4 a a a
            d, e e e e a, e' e e e e, e' e e e a,, e'' e e e
            d,, a'''_4 a a a a,, a'' a a a fis, d'_1 d d d g, d' d d d
            b, a'' a a a g, a' a a a d, e e e e e, e' e e e
            d,-"II" fis' fis fis fis e fis fis fis fis
            d fis fis fis fis a, fis' fis fis fis
            c, g'' g g g e, g' g g g g, g' g g g c, g' g g g
            \override Fingering.extra-offset = #'(-1.2 . 1.8)
            d a'_4 a a a g, h'_4 h h h fis, h' h h h e,, cis''_4 cis cis cis
          }
          \set stringNumberOrientations = #'(left)
          \revert TextScript.font-size
          d4_4-\markup{\italic rit.} d,\3
        }
        \\
        {
          \override Fingering.staff-padding = #'()
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d,,8(
          \once\override StringNumber.extra-offset = #'(0.6 . -6.3)
          fis'\5
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g^0
          \once\override StringNumber.extra-offset = #'(0.6 . -5.3)
          a\4)
          \once\override StringNumber.extra-offset = #'(-0.6 . -4)
          \once\override Fingering.extra-offset = #'(0.2 . 3.2)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          e-2\5(
          a\harmonic
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g^0
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          d^0)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          a( e' a d)
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          h^0(
          \once\override StringNumber.extra-offset = #'(0.6 . -4.3)
          cis\3
          \once\override StringNumber.extra-offset = #'(0.6 . -5.7)
          g\4 a,)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d,8( fis' g a)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          e( a\harmonic g d)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          a( e' a d)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          h( cis g a,)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d,( h' fis' g)
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          g,^1(
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          d'^1 a' d)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          a,( d a'
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          \arpeggioBracket
          \once\override Arpeggio.positions = #'(1.5 . 2.5)
          \once\override Arpeggio.padding = 0.1
          e'^4)\arpeggio
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d^4( a e a,)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d,( a'
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          fis'^2 g)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          b,( g' d' e,)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d( e' d a)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          c,( e g c)
          d
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g,^0
          \once\override StringNumber.extra-offset = #'(1.2 . -5.7)
          fis\4
          \once\override StringNumber.extra-offset = #'(1.2 . -6.3)
          e\5
          \once\override Fingering.extra-offset = #'(-1.3 . 1.5)
          d4-0
          \set stringNumberOrientations = #'(left)
          <d, a' fis'\4>
        }
      >>
      \bar "||"
    }
%%%%%%%%%%%%%%%%% OSSIA %%%%%%%%%%%%%%%%%
    %{
    \new Staff = "ossia" \with {
      %\remove "Time_signature_engraver"
      %\hide Clef
      \magnifyStaff #(magstep -1)
      %\RemoveAllEmptyStaves
    }\relative {
      \key d \major
      \time 4/4
      \override Staff.TimeSignature.stencil = ##f
      <<
        {
        	\set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(2 2 2 2)
          \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
          d32 a'''\RH #4 a\RH #3 a\RH #2 fis, a' a a g, a' a a a, a' a a
          e, fis' fis fis a,\harmonic fis' fis fis
          g, fis' fis fis d, fis' fis fis
          a,, e'' e e e, e' e e a, e' e e d e e e
          h e e e cis e e e g, h' h h a,, h'' h h
          d,,, a''' a a fis, a' a a g, a' a a a, a' a a
          e, fis' fis fis a,\harmonic fis' fis fis
          g, fis' fis fis d, fis' fis fis
          a,, e'' e e e, e' e e a, e' e e d e e e
          h e e e cis e e e g, h' h h a,, h'' h h
          d,,, d'' d d h, d' d d fis, a' a a g, a' a a
          g,, cis'' cis cis d,, cis'' cis cis
          a, cis' cis cis d, h' h h
          a,, fis'' fis fis d, fis' fis fis
          a, fis' fis fis e a a a
          d, e e e a, e' e e e, e' e e a,, e'' e e
          d,, a''' a a a,, a'' a a fis, d' d d g, d' d d
          b, a'' a a g, a' a a d, e e e e, e' e e
          d, fis' fis fis e fis fis fis
          d fis fis fis a, fis' fis fis
          c, g'' g g e, g' g g g, g' g g c, g' g g
          d a' a a g, h' h h fis, h' h h e,, cis'' cis cis
          d4 d,
        }
        \\
        {
          d,,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
          d,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
          d,( h' fis' g) g,( d' a' d) a,( d a' e') d( a e a,)
          d,( a' fis' g) b,( g' d' e,) d( e' d a) c,( e g c)
          d g, fis e  d4 <d, a' fis'>
        }
      >>
    }
    %}
  >>
}
\pageBreak
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
    \mark \markup{\fontsize #-2 {\bold {Coda} \italic {Dolcissimo, sul tasto}}}
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
        \override Stem.length = 6.6
        d''\harmonic-\markup {\circle\bold 3}
      }
      \\
      {
        \voiceTwo
        c,,2 g'8\rest a f,8\rest
        \override TextScript.font-size = -5
        \once\override TextScript.extra-offset = #'(19.9 . 10.5)
        a-"V"
        %\stemUp
        \override Stem.length = 6.5
        \once\override TextScript.extra-offset = #'(9.2 . 14)
        \stemUp
        d,2-\markup {\circle\bold 5}
      }
      \\
      {
        \voiceOne
        \override TextScript.font-size = -5
        s2 s s4
        \once\override TextScript.extra-offset = #'(-1 . -5.2)
        <a'''\harmonic fis'\harmonic>_\fermata-\markup {\circle\bold 4}
      }
    >>
    \bar "|."
    \revert Score.RehearsalMark.extra-offset
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.direction = #DOWN
    \mark \markup {\teeny MCMXCIX}
  }
}