\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"

ritaZwei = \relative c' {
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  %\once \override StringNumber.extra-offset = #'(-.6 . -4.8)
  \once \override Fingering.extra-offset = #'(-.6 . -3.3)
  \stringNumSpan "3"
  \once \override TextSpanner.extra-offset = #'(-.5 . -1.5)
  \once \override TextSpanner.bound-details.right.X = #22.2
  <a h'-4>8
  \startTextSpan
  <fis cis''>
  \stopTextSpan
  <<
    {
      r8 h''\harmonic
      s <ais, fis'>-\markup {
        \postscript #".8 -1.8 moveto 4.5 .3 rlineto stroke"
      } gis'4
    }
    \\
    {
      <gis,, dis''>4 <dis' ais''> r8 eis'
    }
  >>
  \time 15/8
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      cis'4 s8
      \stemDown
      h( ais) fis-\markup {
        \postscript #"1 -2.4 moveto 3 .4 rlineto stroke"
      }
      \stemUp
      gis4 s8 b_\1( as_\2 es_\3) g4 s8
    }
    \\
    {
      h,8\rest <fis dis'> <d' fis>
      s4. h8\rest <g! es'> <g es'>
      s4. c8\rest <as ces> q
    }
    \\
    {
      \voiceTwo
      h,4 s8 f'4 s8 c!4 s8 ces4 s8 es4 s8
    }
  >>
  \break
  \time 4/4
  <as, b'>8 <f' c'>
  <<
    {
      r8 b' s <a, f'> g'4
    }
    \\
    {
      <es, g d'>4 <d a''> r8 e'
    }
  >>
  \time 15/8
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      c'4 s8
      \stemDown
      b( a) f-\markup {
        \postscript #"1 -1.7 moveto 3.5 .4 rlineto stroke"
      }
      \stemUp
      g4 s8 a_\1( g_\2 d_\3) fis4 s8
    }
    \\
    {
      h,8\rest <f d'> <des' f>
      s4. h8\rest <fis! d'> <fis d'>
      s4. h8\rest <g b> q
    }
    \\
    {
      \voiceTwo
      b,4 s8 e4 s8 h4 s8 b4 s8 d4 s8
    }
  >>
  \break
  \time 5/4
  <f a>8 <e h'>
  <<
    {
      s8 a~ <g, a'> <e h''>
    }
    \\
    {
      <fis' cis'>4 s
    }
  >>
  <<
    {
      r8
      \once \override StringNumber.extra-offset = #'(-.6 . -2.5)
      a'\harmonic\4
      r8 g\harmonic
    }
    \\
    {
      <f,,! g' c>4 <g c d'>
    }
  >>
  \time 3/4
  <e h' gis'>8
  <<
    {
      h'''8\harmonic e\harmonic h\harmonic
      %\once \override Score.FootnoteItem.annotation-line = ##f
      %\footnote "*" #'(3.8 . 2) \markup { "*" \hspace #.3 "Катин аккорд" }
      r b
    }
    \\
    {
      <fis,, a'>[ <gis h'> <a cis'>] <h fis'> <as es' as>
    }
  >>
  \time 4/4
  <c d'>8 <a e''>
  <<
    {
      r8 dis''
      \once \override StringNumber.extra-offset = #'(-.6 . -2)
      fis4\harmonic\2
    }
    \\
    {
      s4. <ais,, h'>8 eis'4
    }
    \\
    {
      \voiceTwo
      <h, fis''>4
      \once \override Fingering.extra-offset = #'(.2 . .3)
      \once \override StringNumber.extra-offset = #'(.5 . .8)
      cis-3_\6 h''8\rest gis
    }
  >>
  \time 15/8
  <<
    {
      d'?4 s8
      \stemDown
      cis( c-3)-\markup {
        \postscript #"1.3 -2.3 moveto 3.5 -1.4 rlineto stroke"
      } gis
      \stemUp
      a4 s8 h( b) f-\markup {
        \postscript #".5 -5.2 moveto 3.5 .5 rlineto stroke"
      } g4
    }
    \\
    {
      \set harmonicDots = ##t
      h,8\rest <fis a'> <a f'!>
      \once \override StringNumber.extra-offset = #'(1.3 . 3.5)
      a4.\harmonic_\4 h8\rest <g! d'> <g d'>
      s4. h8\rest <d f> q
    }
    \\
    {
      \voiceTwo
      e,,4 s8
      \once \override NoteColumn.force-hshift = #.3
      a4 s8 fis4 s8 as4 s8 b4 s8
    }
  >>
  \time 4/4
  <<
    {
      \override StringNumber.staff-padding = #'()
      s4
      \override TextScript.font-size = -5
      r8
      \once \override TextScript.extra-offset = #'(-1 . -2)
      \once \override Accidental.extra-offset = #'(.4 . 0)
      fis'''\harmonic-"VII"
      %s <ais, fis'> gis'4
      r16 f( e8~ e16) b as_\3 g
    }
    \\
    {
      \override StringNumber.staff-padding = #'()
      s2 s8. des'16( c_\2)-\markup {
        \postscript #".9 6.1 moveto 3 -.6 rlineto stroke"
      } b8 s16
    }
    \\
    {
      \voiceTwo
      \textSpannerDown
      \stringNumSpan "5"
      \once \override TextSpanner.extra-offset = #'(-.5 . 1.6)
      \tag #'Part {
        \once \override TextSpanner.bound-details.right.X = #81
      }
      \tag #'Book {
        \once \override TextSpanner.bound-details.right.X = #79.5
      }
      <e,, fis'>8
      \startTextSpan
      <cis gis''> <dis ais''>4
      a!4
      \stopTextSpan
    }
  >>
  \time 15/8
  <<
    {
      ges''4 s8
      \stemDown
      ges( f) des-\markup {
        \postscript #"1 -2.2 moveto 3 .4 rlineto stroke"
      }
      \stemUp
      es4 s8 f_\1( es_\2 b_\3) d4 s8
    }
    \\
    {
      h8\rest <es, b'> <heses' des> s4.
      a8\rest <d,! b'> <d b'>
      s4. g8\rest <es ges> q
    }
    \\
    {
      \voiceTwo
      as,4 s8
      \once \override StringNumber.extra-offset = #'(.7 . 2.5)
      c4_\5 s8 g!4 s8 ges4 s8 b4 s8
    }
  >>
  \time 12/8
  <<
    {
      \set harmonicDots = ##t
      \once\override Beam.positions = #'(5 . 4.5)
      <b' es>8 d c
      \once \override Dots.extra-offset = #'(-1.3 . 0)
      %\once \override Accidental.extra-offset = #'(1 . 0)
      <a\harmonic fis'>8. <cis e>
      <es d'>8 <des c'> <h a'>
      \once \override Dots.extra-offset = #'(-1.3 . 0)
      <c h'?>8. gis-\markup {
        \postscript #"1.3 -6.5 moveto 3 -.8 rlineto stroke"
      }
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.2
      <f g'>8. \dotsUp <d a''>
      \once \override NoteColumn.force-hshift = #1.2
      %\once \override Accidental.extra-offset = #'(.7 . 0)
      <e!\harmonic h''!\harmonic>4. \dotsUp <b f''>
      \once \override NoteColumn.force-hshift = #1.3
      %\once \override Accidental.extra-offset = #'(1 . 0)
      <cis e'>
    }
  >>
  \time 4/4
  <es f'>8 <c g''>
  <<
    {
      \override TextScript.font-size = -3
      r8 fis''\harmonic
      s h,4.-"X"
    }
    \\
    {
      s4. d,4_( c8)
    }
    \\
    {
      s2 f!4
    }
    \\
    {
      \voiceTwo
      \once \override Script.extra-offset = #'(.3 . 1.5)
      \once \override Script.font-size = 0.5
      <d,\open a''>4-\markup {
        \postscript #"1.7 9.9 moveto 3.2 1.3 rlineto stroke"
      } <a e'''>2
    }
  >>
  \time 15/8
  <<
    {
      \stemDown
      \once \override Stem.length = #9
      \once \override StringNumber.extra-offset = #'(-1.2 . -.5)
      \override TextScript.font-size = -5
      \once \override TextScript.extra-offset = #'(.5 . -2.3)
      g'''4\harmonic\3-"XXV" s8 <b, f'>( <g e'>) <d c'>
      \stemUp
      <c a'>4.
      \once\override Beam.positions = #'(5 . 4.5)
      d8 <c e> <a d>
      \shape #'((.4 . .8) (1 . 0) (1 . 0) (1.2 . .6)) Tie
      <h_~ e>4.
    }
    \\
    {
      h8\rest <h a'> <d, as''-3\2>-\markup {
        \postscript #"-3 7.5 moveto 2.6 1.2 rlineto stroke"
      }
      s4. f8\rest g'4\harmonic\3
    }
    \\
    {
      s2. s4
      \override StringNumber.staff-padding = #'()
      f8\harmonic _\5 s4. e,8\rest <h' cis> <a c>
    }
    \\
    {
      \voiceTwo
      \dotsUp
      f,4. c' b <h g''>4 g8 a4.
    }
  >>
  \time 4/4
  <<
    {
      \voiceFour
      \once \override NoteColumn.force-hshift = #1.5
      h'?8
      \once \override NoteColumn.force-hshift = #1.3
      b
      \once \override NoteColumn.force-hshift = #1.5
      as4
      \once \override Fingering.extra-offset = #'(.3 . 0)
      h,!-2 r8 cis'
    }
    \\
    {
      \voiceOne
      <as b'>8 <f c''> <g d''>4 s8 <ais d>-\markup {
        \postscript #".9 -2.1 moveto 4 .8 rlineto stroke"
      } f'!4
    }
    \\
    {
      \voiceTwo
      \set harmonicDots = ##t
      s4.
      \once \override Stem.length = #9
      fis'4.\harmonic
    }
  >>
  \time 15/8
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      a,4 s8
      \stemDown
      g( fis) d-\markup {
        \postscript #"1 -2.2 moveto 3.5 .4 rlineto stroke"
      }
      \stemUp
      e4 s8 fis_\1( e_\2 h_\3) dis4 s8 c'4 s8 b_( a) f
    }
    \\
    {
      h,8\rest <d, h'> <b' d>
      s4. a8\rest <dis, h'> q s4. g8\rest <e g> q
      es'^( d) a s4.
    }
    \\
    {
      \voiceTwo
      g,4 s8 cis4 s8 gis4 s8 g4 s8 h4 s8
      b4 s8 <e! h'!>4 s8
    }
  >>

  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -5)
  \mark \markup {\teeny{\char ##x00A9 "MMXXII - VII - XIII"}}
}