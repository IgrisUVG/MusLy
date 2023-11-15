\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "S"
  meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
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
#(define RH rightHandFinger)
tema = \relative d'' {
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) c8 d4-> a |\break
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) cis!8 d2-> |\break
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) c8 d4-> a |\break
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) cis!8 d2-> |\break
  \stemDown
  fis4 g8( fis) a( fis) g4 | e8( fis4) d8 e4-> c4 |\break
  fis4 g8( fis) e( cis!) d4 |
  \stemUp
  a8_( h4) g8 a2 |\break
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) c8 d4-> a |\break
  \stemDown
  a'4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) cis!8 d2-> |\break
}
temaSym = \relative d'' {
  \stemDown
  a'4\RH #3 h8\RH #2( a)
  \once \override StringNumber #'self-alignment-X = #RIGHT
  g\RH #3 \2( e)
  \override StrokeFinger #'extra-offset = #'(0 . 0.5)
  fis4\RH #2 |
  \stemUp
  \once \override StringNumber #'self-alignment-X = #RIGHT
  \override StrokeFinger #'extra-offset = #'(-0.7 . 0)
  d8\RH #3 \3_( e4)
  \override StrokeFinger #'extra-offset = #'(-1.5 . 2.3)
  c8\RH #2
  \override StrokeFinger #'extra-offset = #'()
  d4\RH #3 ->
  \once \override StringNumber #'self-alignment-X = #RIGHT
  a\RH #2 \4 |\break
  \stemDown
  a'4\RH #4 h8\RH #3( a) g\RH #2( e) fis4\RH #3 |
  \stemUp
  \override StrokeFinger #'extra-offset = #'(-1.5 . 1.8)
  d8\RH #2 _( e4)
  \override StrokeFinger #'extra-offset = #'()
  cis!8\RH #3 d2\RH #2 -> |\break
  \stemDown
  a'4\RH #3 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) c8 d4-> a |\break
  \stemDown
  a'4\RH #4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) cis!8 d2-> |\break
  \stemDown
  fis4\RH #3 g8( fis) a( fis) g4 | e8\2( fis4) d8 e4-> c\3 |\break
  \override StrokeFinger #'extra-offset = #'(0 . 0.5)
  fis\RH #4 g8( fis) e\2( cis!) d4 |
  \override StrokeFinger #'extra-offset = #'()
  \stemUp
  a8_( h4) g8 a2 |\break
  \stemDown
  a'4\RH #3 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) c8 d4-> a |\break
  \stemDown
  a'4\RH #4 h8( a) g( e) fis4 |
  \stemUp
  d8_( e4) cis!8 d2-> |\break
}
dynamic = {
  s1\f|s|s|s|s\mf|s|s|s|
  s1\f|s|s|s|s\>|s|s\!\p|s|
}
\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \line { \circle 6"= D" }
      }
    }
  }
  {
    \clef treble
    \key d \major
    \time 4/4
    \override Staff.TimeSignature #'stencil = ##f
    <<
      \override NoteColumn.ignore-collision = ##t
      {
        \temaSym
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \tema
        \tema
        \temaSym
%%%%%%%%%%%%%%%%%%%%%%% VAR %%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \relative d'' {
          \stemDown
          d'8(^"X" a) fis a[( h) d] fis,( g)
          a h( c) d c( h) a g
          fis d( e) g[ fis( a)] h g(
          a) c h( cis) d( h) a fis(
          g) e c( d) fis g( a) d(
          h) a fis gis([ a) g] e cis(
          d) e g a( fis) h d a(
          h) g d fis([ e) d]
          \stemUp
          c( h)
          g([ a) h] d[
          \once\override Script.extra-offset = #'(2 . -4.3)
          cis(\prall h)] c( h)
        }
      }
      \\
      {
        \repeat unfold 8 {<d a>1~|<d a>}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \repeat unfold 16 {<d a>1}
        \repeat unfold 16 {<d a>2 <d a>2} \bar ".|:"
        \repeat unfold 16 {<d a>4. <d a> <d a>4} \bar ":|."
        \repeat unfold 16 {<d a>4. <d a> <d a>4}
        %{
        \repeat unfold 16 {<d a>4. <d a> <d a>4}
        \repeat unfold 16 {<d a>4. <d a> <d a>4}
        \repeat unfold 16 {<d a>4. <d a> <d a>4}
        %}
      }
      \\
      {
        \dynamic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \dynamic
        \dynamic
        \dynamic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \repeat unfold 8 {s1 s\break} % 8 <- 16
        %\repeat unfold 16 {s1 s\break}
      }
    >>
  }
}