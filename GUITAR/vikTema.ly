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

#(define RH rightHandFinger)

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

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
      \mark \markup {\fontsize #-2 {Неторопливо и нежно}}
      <h d>4 <cis e>
      \time 10/4
      <<
        {
          \override TextScript.font-size = -2
          %\override TextScript.extra-offset = #'(0 . 0.5)
          g'
          \once\override Fingering.extra-offset = #'(-0.2 . 0.6)
          d'-4 a'-"V" d fis,-"IIV" g e2-"V" s4 a
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
          \override Glissando.minimum-length = #3
          \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
          \once\override Slur.direction = #DOWN
          \acciaccatura b8 \glissando d4 a' d fis, g e2
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
          s2 \stemDown <g, d'> <a e' a d>^"II" <a g' cis e>^"V"
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
            cis''4. d8 h4. \acciaccatura h8 \glissando d8 fis,4. a8
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
              d,,2 e''8 d\glissando b4 d,4\rest g f,8\rest a d_\5 r
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