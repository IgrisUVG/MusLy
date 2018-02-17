\version "2.19.15"

\language "deutsch"

vikErste = \relative {
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