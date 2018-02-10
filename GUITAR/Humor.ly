\version "2.19.15"

\language "deutsch"

\header {
  title = "Humoreske"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 15
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 25
  system-system-spacing.basic-distance = 23
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 25

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
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
  \new Staff \with {
    instrumentName = "Guitar"
  }
  \relative {
    \clef "treble_8"
    \key e \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    \override Score.RehearsalMark.extra-offset = #'(0 . 3)
    \mark \markup {\fontsize #-2 {Allegretto}}
    <<
      {
        cis''16( d cis8) c a
      }
      \\
      {
        e4 f8 e
      }
      \\
      {
        \voiceTwo
        a,,4 a16 b c8
      }
    >>
    <<
      {
        e'8 d\rest
      }
      \\
      {
        \voiceOne
        \once\override NoteColumn.force-hshift = #.2
        <cis,! gis'>8 s
      }
      \\
      {
        \voiceTwo
        e,16( fis) gis a
      }
    >>
    <<
      {
        r16 h'' a! gis fis8 e
      }
      \\
      {
        ais,,8 h his4
      }
    >>
    <<
      {
        gis''16 e' h d
      }
      \\
      {
        \once\override Beam.positions = #'(-1 . 0)
        <e, gis>8 <e h'>
      }
      \\
      {
        \voiceTwo
        cis,8 gis'
      }
    >>
    <<
      {
        cis'16( d cis8) c a
      }
      \\
      {
        e4 f8 e
      }
      \\
      {
        \voiceTwo
        a,,4 a16 b c8
      }
    >>
    <<
      {
        e'8 d\rest
      }
      \\
      {
        \voiceOne
        \once\override NoteColumn.force-hshift = #.2
        <cis,! gis'>8 s
      }
      \\
      {
        \voiceTwo
        e,16( fis) gis a
      }
    >>
    <<
      {
        r16 h'' a! gis fis8 e
      }
      \\
      {
        ais,,8 h his4
      }
    >>
    <<
      {
        gis''16 e' gis dis e8 r
      }
      \\
      {
        \once\override Beam.positions = #'(-1.3 . -1.3)
        e,8 <e cis'>16 <fis dis'> <h, gis'>8 s
      }
      \\
      {
        \voiceTwo
        cis,8 a16 h e,8 r
      }
    >>
    \override BreathingSign.extra-offset = #'(-.5 . 0)
    \acciaccatura dis'8 e->\breathe
    <<
      {
        e'16(fis)
      }
      \\
      {
        r8
      }
    >>
    <<
      {
        g8. fis16
      }
      \\
      {
        c16\rest d g,8
      }
      \\
      {
        \voiceTwo
        dis4
      }
    >>
    <<
      {
        dis'4 e8. r16
      }
      \\
      {
        g,16\rest fis8 s16 g\rest a8 s16
      }
      \\
      {
        \voiceTwo
        s8 g s h16 s
      }
      \\
      {
        \voiceTwo
        h,8. a16 gis8. <fis fis'>16
      }
    >>
    <<
      {
        r8. gis'16\glissando cis8 h r cis16\glissando e <dis gis>4 s16 h' s8
      }
      \\
      {
        s16 ais,,( h8) s4 gis'16^( a8.) g16\rest\( h cis, dis' fis, h' e,^( fis)\)
      }
      \\
      {
        \voiceTwo
        <e,, e'>4 a8 <gis dis'> fis4 e s
      }
    >>
    <<
      {
        g''8. fis16
      }
      \\
      {
        c16\rest d g,8
      }
      \\
      {
        \voiceTwo
        dis4
      }
    >>
    <<
      {
        dis'4 e8. r16
      }
      \\
      {
        g,16\rest fis8 s16 g\rest a8 s16
      }
      \\
      {
        \voiceTwo
        s8 g s h16 s
      }
      \\
      {
        \voiceTwo
        h,8. a16 gis8. <fis fis'>16
      }
    >>
    <<
      {
        r8. gis'16\glissando cis8 h r cis16\glissando e <dis gis>4 s16 h' s8
      }
      \\
      {
        s16 ais,,( h8) s4 gis'16^( a8.) g16\rest( h cis, dis' fis,^\markup{\italic rit.}
        h')%\glissando
        <h,, g' dis''>8^\fermata
      }
      \\
      {
        \voiceTwo
        <e, e'>4 a8 <gis dis'> fis4 e s
      }
    >>
    \bar "||"
    \break
    \override Score.RehearsalMark.extra-offset = #'(0 . .5)
    \mark \markup {\fontsize #-2 {Lento}}
    <<
      {
        es'''4. c8 g4. fis8 dis'4. his16 ais f4. e8
      }
      \\
      {
        d16\rest g c, es s4 d16\rest d,( g) a~ <a d>4
        d16\rest fisis his, dis s4 c16\rest d,( g) gis~ <gis cisis>4
      }
      \\
      {
        \voiceTwo
        c,4 fis es s his fis'! dis s
      }
    >>
    \bar "||"
    \break
    \override Score.RehearsalMark.extra-offset = #'(1.5 . 1)
    \mark \markup {\fontsize #-2 {Tempo I}}
    <<
      {
        dis'4 e8. dis16 d4 s
      }
      \\
      {
        s8 g, s h s g16( a)%\glissando
        ^\markup{\italic rit.} c8 b
      }
      \\
      {
        \voiceTwo
        a16\rest fis8. h16\rest a8. a16\rest f8. s4
      }
      \\
      {
        \voiceTwo
        h,8. a16 <gis cis>4 b s
      }
    >>
    <g d' a'>8^\markup{\italic lento} <gis dis' fisis> <h d fis>4^\fermata
    <f' c' g'>8^\markup{\italic grave} <fis cis' eis> <gis his e>4^\fermata
    \bar "||"
    \break
    \time 3/8
    <<
      {
        s8.
        \once \override Dots.extra-offset = #'(-0.8 . 0)
        gis'
      }
      \\
      {
        \voiceOne
        eis4.^\markup{\italic {a tempo}}
      }
      \\
      {
        \voiceOne
        cis,4.
      }
      \\
      {
        cis16( gis' g gis' his, gis)
      }
    >>
    <<
      {
        e'!4 s8
      }
      \\
      {
        \voiceOne
        gis,,4.
      }
      \\
      {
        \voiceTwo
        gis16( e' h' e,, h' \stemUp\acciaccatura fis'8 \stemDown gis16)
      }
    >>
    <<
      {
        s8.
        \once \override Dots.extra-offset = #'(-0.8 . 0)
        gis'
      }
      \\
      {
        \voiceOne
        eis4.
      }
      \\
      {
        \voiceOne
        cis,4.
      }
      \\
      {
        cis16( gis' g gis' his, gis)
      }
    >>
    <<
      {
        h'4.
      }
      \\
      {
        \voiceOne
        a,,4.
      }
      \\
      {
        \voiceTwo
        a16( c' e f c g)
      }
    >>
    \time 2/4
    <<
      {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        <fis, ais''>16 ais''32 ais d,, ais'' ais ais
        cis,, ais'' ais ais g, ais' ais ais
        h, h' h h cis, h' h h dis, cis' cis cis ais, cis' cis cis
      }
      \\
      {
        fis,,,8( d' cis g') h( cis) dis( ais)
      }
    >>
    \time 1/4
    \stemDown
    <e, gis' his  dis'>4-.
    \stemNeutral
    \bar "||"
    \break
    \time 2/4
    <<
      {
        cis'''16( d cis8) c a
      }
      \\
      {
        e4 f8 e
      }
      \\
      {
        \voiceTwo
        a,,4 a16 b c8
      }
    >>
    <<
      {
        e'8 d\rest
      }
      \\
      {
        \voiceOne
        \once\override NoteColumn.force-hshift = #.2
        <cis,! gis'>8 s
      }
      \\
      {
        \voiceTwo
        e,16( fis) gis a
      }
    >>
    <<
      {
        r16 h'' a! gis fis8 e
      }
      \\
      {
        ais,,8 h his4
      }
    >>
    <<
      {
        gis''16 e' gis dis e8 r
      }
      \\
      {
        \once\override Beam.positions = #'(-1.3 . -1.3)
        e,8 <e cis'>16 <fis dis'> <h, gis'>8 s
      }
      \\
      {
        \voiceTwo
        cis,8 a16 h e,8 r
      }
    >>
    \override BreathingSign.extra-offset = #'(-.5 . 0)
    \acciaccatura dis'8 e->\breathe
    <<
      {
        g'16( a)
      }
      \\
      {
        r8
      }
    >>
    \bar ".|:"
    \time 3/8
    \override Score.RehearsalMark.extra-offset = #'(0 . .5)
    \mark \markup {\fontsize #-2 {Largo}}
    <<
      {
        s4. s s s8.
        \once \override Dots.extra-offset = #'(-0.7 . 0)
        g
      }
      \\
      {
        \voiceFour
        \stemUp
        \dotsUp
        \shape #'((0 . -1) (2 . 0) (3 . 2) (0 . -1.5)) Slur
        b4.^( a g
        \stemDown
        e4.)
      }
      \\
      {
        \voiceThree
        \repeat unfold 2 {
          \once\override Beam.positions = #'(2 . 4)
          e,,16 fis' g d' g, fis
        }
        \once\override Beam.positions = #'(1.5 . 4)
        e, f' g dis'! g, f
        \once\override Beam.positions = #'(.35 . 1.6)
        \once\override NoteColumn.force-hshift = #-.1
        e,16 f' g \stemDown g' \stemUp g, f
      }
      \\
      {
        \dotsUp
        e,8. cis' e, c' e, h' e,8.
        \once \override Dots.extra-offset = #'(-0.8 . 0)
        b'
      }
    >>
    \bar ":|."
    \break
    \override Score.RehearsalMark.extra-offset = #'(3 . .5)
    \mark \markup {\fontsize #-2 {Largetto}}
    <<
      {
        \repeat unfold 2 {e'4.~ e4 r8}
        gis8\prall fis\prall e cis16\prall h cis8 e
        \break
        gis8\prall fis\prall e cis16\prall h cis8 e
        \repeat unfold 2 {<e, h' e gis>-^ <c' a'>16\prall <h gis'> <c a'>8}
        \repeat unfold 2 {gis'8\prall fis\prall e cis16\prall h cis8 e}
        <e, h' e gis>-^ <c' a'>16\prall <h gis'> <c a'>8
        <gis e' h'>-^ <cis! a'>16\prall <h gis'> <cis a'>8
        <h gis'>8\prall <a fis'>\prall <h e> cis16\prall h <a cis>8 <gis h e>
        <h gis'>8\prall <a fis'>\prall <h e> cis16\prall h <a cis>8 <h e fis>
        gis' fis\prall <e a> <gis, e' h'> e'4
      }
      \\
      {
        \repeat unfold 8 {<e,, h'>4 q8-.} q s4 q8 s4
        \repeat unfold 4 {<e h'>4 q8-.} q s4 <e e'>8 s4
        \repeat unfold 4 {<e h' e>4 q8} <a e' a cis>4 <h e h'>8
        <e, e'> <a e' h' cis> <h fis' a h>
      }
    >>
    \time 2/4
    \grace {
      \override Slur.positions = #'(1 . -0.5)
      e,8[( h' e gis h e
      \override NoteHead.style = #'harmonic
      gis h]
    }
    e2)
    \time 3/4
    <<
      {
        \set harmonicDots = ##t
        \once\override StringNumber.extra-offset = #'(-0.6 . -2.5)
        \override Script.padding = #-1.5
        e,2.\harmonic\5\fermata
      }
      \\
      {
        \set harmonicDots = ##t
        \once\override StringNumber.extra-offset = #'(0.5 . 2.5)
        \override Script.padding = #-1.5
        e,\harmonic _\6\fermata
      }
    >>
    \bar "|."
  }
}
