\version "2.19.15"

\language "deutsch"

\header {
  tagline = ##f
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
  indent = 0
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  %ragged-last = ##t
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

\relative {
  \clef "treble_8"
  \key a \major
  \time 2/4
  \mergeDifferentlyDottedOn
  <<
    {
      h'8. a16\prall
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      gis32 e fis gis a h cis dis
      e8. d!16\prall cis8 r8 gis8. h16
    }
    \\
    {
      \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      h16^( gis, h8) h4\rest
      e'16 cis, e8 cis'16 a\glissando dis, \stemUp\acciaccatura e8 \stemDown fis16
      \shape #'((0 . -4.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      gis^( h, dis8)
    }
    \\
    {
      \voiceTwo
      e,,2 a e4
    }
  >>
  <<
    {
      \slurDown\acciaccatura cis'''8 \glissando dis cis
    }
    \\
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \override Fingering.staff-padding = #'()
      a,,32
      \once\override StringNumber.extra-offset = #'(-0.4 . -4.7)
      h^(\6 cis) d!^0
      \once\override StringNumber.extra-offset = #'(-0.4 . -3.4)
      e^(\5 fis)
      \once\override StringNumber.extra-offset = #'(-0.6 . -2.4)
      gis^(\4 a)
    }
  >>
  <<
    {
      \override TextScript.font-size = -2
      h'8. \slurDown\acciaccatura h8 cis16 h8.-"V" a16
      a8.-"II" \slurDown\acciaccatura a8 h16 gis8-"IV" r
      h8. \slurDown\acciaccatura h8 cis16 e8-"IX" d h8.-"VII" cis16 a4\2
      e'8. d16\prall cis a\prall g f~
      \override StringNumber.staff-padding = #'()
      \set strokeFingerOrientations = #'(down)
      \override StrokeFinger.staff-padding = #'()
      \override StrokeFinger.script-priority = #-100
      f32 cis'\RH #4 h\RH #3 a_\2\RH #2 gis\RH #3 fis\RH #2 e_\3 d
    }
    \\
    {
      \shape #'((0.5 . -2.5) (0 . 0) (0.5 . 0) (0 . 0)) Slur
      e16\rest^( d f8)
      \shape #'((0 . -5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      h16^( cis, e8)
      \shape #'((0.2 . -4.5) (-1 . -3) (-0.5 . 0) (0 . 0)) Slur
      d16\rest^( fis, dis'8) gis32 h, cis dis e fis gis a
      \shape #'((0.5 . -2) (0 . 0) (0.5 . 0) (0 . 0)) Slur
      d,16\rest^( d f8)
      \shape #'((0.2 . -4) (-1 . -3) (-0.5 . 0) (0 . 0)) Slur
      f16\rest^( h,8 fis'16)
      \shape #'((0.3 . -3) (-0.5 . -2) (-0.5 . 0) (0 . 0)) Slur
      \override StringNumber.staff-padding = #'()
      \set strokeFingerOrientations = #'(up)
      \override StrokeFinger.staff-padding = #'()
      \override StrokeFinger.script-priority = #-100
      d16\rest^( d gis8) a32 cis,\4\RH #3 h\RH #2 a\5\RH #3
      \override TupletBracket.bracket-visibility = ##f
      \times 4/6 { gis\RH #2 fis e d\6 cis\RH #1 h\RH #1 }
      \break
      \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      e''16^( cis, e8) cis'16 d,,8 a'16~ \stemUp a4
    }
    \\
    {
      \voiceTwo
      gis4 a, h e, gis' fis! e a,8 s a2 a4
    }
  >>
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  cis'32 h_0 a_\3 gis fis e d cis
  <<
    {
      \override TextScript.font-size = -2
      d'8.-"II" cis16\prall
    }
    \\
    {
      \voiceOne
      h,16_( fis' h8)
    }
    \\
    {
      \voiceTwo
      h,4
    }
  >>
  <<
    {
      h'16 a\prall g f <a, e'>4
    }
    \\
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \override StringNumber.staff-padding = #'()
      g4 a32 e fis! gis! a h\5 c d
    }
  >>
  \times 8/12 {e fis gis\4 a h c d e\3 fis gis\2 a h}
  <<
    {
      c8. h16 gis4 c8.^\markup{\italic rit.} h16 gis4\fermata
    }
    \\
    {
      \repeat unfold 2 {
        \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        c16^( d, f8) h,4\rest
      }
    }
    \\
    {
      \voiceTwo
      a,2 a\fermata
    }
  >>
  \bar "||"
  \break
  <<
    {
      c''8.^\markup{\italic {piu mosso}} h16 h8. a16
      \override TextScript.font-size = -2
      e'8.-"IX" d16 d8. cis16
      %\break
      cis8.-"VII" h16 h8.-"IX" a16 e'8. d16 d8. cis16
      c8. h16 gis4
      \revert TextScript.font-size
      c8.^\markup{\italic rit.} h16 gis4
      c8.^\markup{\italic grave} h16 gis4
    }
    \\
    {
      \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      c16^( d, f8)
      \shape #'((0 . -5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      h16^( cis, e8)
      \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      \once\override Beam.positions = #'(-3.5 . -3)
      e'16^( h, fis'8)
      \shape #'((0 . -4.5) (-1 . -2) (-0.5 . 0) (0 . 0)) Slur
      \once\override Beam.positions = #'(-0.3 . -0.7)
      d'16^( e, ais8)
      \shape #'((0 . -4.7) (-1 . -2) (-0.5 . 0) (0 . 0)) Slur
      %\once\override Beam.positions = #'(-0.3 . -0.7)
      cis16^( d, fis8)
      \shape #'((0 . -5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      \once\override Beam.positions = #'(-3.5 . -3)
      h16^( cis, e8)
      \shape #'((0 . -7.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      e'16^( h, gis'8)
      \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      \once\override Beam.positions = #'(-2 . -2.2)
      d'16^( e, a8)
      \repeat unfold 2 {
        \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        c16^( d, f8) gis16 d^( f d)
      }
      %\break
      \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
      c'16^( d, f8) gis16 d^( f d\harmonic)^\fermata
    }
    \\
    {
      \voiceTwo
      a,4 a
      \once \override NoteColumn.force-hshift = #0.2
      fis' fis d
      \once \override NoteColumn.force-hshift = #0.2
      fis e, a \break \repeat unfold 6 {a}
    }
  >>
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . 0)
  \mark\markup {
    %\italic "   "
    \small
    %\raise #1.5
    \musicglyph #"scripts.segno"
  }
  \bar "||"
  \cadenzaOn
  \stopStaff
  s4
  \bar "|"
  \startStaff
  \cadenzaOff
  \mergeDifferentlyHeadedOn
  \once \override Score.RehearsalMark #'extra-offset = #'(-0.5 . -2)
  %\once \override Score.RehearsalMark #'font-size = #1
  \mark \markup {\musicglyph #"scripts.coda"}
  <<
    {
      \override TextScript.font-size = -2
      <a cis'>2->-"II"
    }
    \\
    {
      \teeny
      \set Score.proportionalNotationDuration = #(ly:make-moment 1/64)
      \shape #'((0.3 . 0.7) (0 . 2) (-1.5 . 1) (0 . -0.7)) Slur
      a32^( a' e a'^~^>
      \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
      a8^~ a4)
    }
  >>
  \bar "|."
}