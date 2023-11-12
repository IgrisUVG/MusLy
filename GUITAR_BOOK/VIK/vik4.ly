\version "2.19.15"

\language "deutsch"

%%%%%%%%%%%%%%% VAR 4 %%%%%%%%%%%%%%%%
snoska = \markup {
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
vikVierte = \relative {
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
      %\tuplet 10/8 4 {
        \override Fingering.staff-padding = #'()
        \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
        \textSpannerUp
        \stringNumberSpanner "2"
        \once\override TextScript.font-size = 2
        %\once\override TextScript.extra-offset = #'(0 . 0)
        d32^"*" a'''\RH #4 \startTextSpan a\RH #3 a\RH #2
        fis,\stopTextSpan a' a a g, a' a a a, a' a a
        e, fis' fis
        \override TextScript.font-size = -5
        \once\override TextScript.extra-offset = #'(0.7 . -6.3)
        fis-\markup {\circle\bold 6}
        \once\override TextScript.extra-offset = #'(-1.8 . -7.3)
        a,\harmonic-"VII" fis' fis fis
        g, fis' fis fis d, fis' fis fis
        \stringNumberSpanner "1"
        a,, e''\startTextSpan e e e,\stopTextSpan e' e e a, e' e e d e e e
        h e e e cis e e e g, h' h h a,, h'' h h
        d,,, a''' a a fis, a' a a g, a' a a a, a' a a
        e, fis' fis fis a,\harmonic fis' fis fis
        g, fis' fis fis d, fis' fis fis
        \pageBreak
        a,, e'' e e e, e' e e a, e' e e d e e e
        h e e e cis e e e g, h' h h a,, h'' h h
        d,,, d'' d d h, d' d d fis, a' a a g, a' a a
        \override TextScript.font-size = -2
        g,,-"V" cis'' cis cis d,, cis'' cis cis
        a, cis' cis cis d, h' h h
        a,,-"II" fis'' fis fis d, fis' fis fis
        a, fis' fis fis e a_4 a a
        d, e e e a, e' e e e, e' e e a,, e'' e e
        d,, a'''_4 a a a,, a'' a a fis, d'_1 d d g, d' d d
        b, a'' a a g, a' a a d, e e e e, e' e e
        d,-"II" fis' fis fis e fis fis fis
        d fis fis fis a, fis' fis fis
        c, g'' g g e, g' g g g, g' g g c, g' g g
        \break
        \override Fingering.extra-offset = #'(-1.2 . 1.8)
        d a'_4 a a g, h'_4 h h fis, h' h h e,, cis''_4 cis cis
      %}
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
      d^0) a( e' a d)
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      h^0(
      \once\override StringNumber.extra-offset = #'(0.6 . -4.3)
      cis\3
      \once\override StringNumber.extra-offset = #'(0.6 . -5.7)
      g\4 a,)
      d,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
      d,( h' fis' g)
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      g,^1(
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      d'^1 a' d) a,( d a'
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      \arpeggioBracket
      \once\override Arpeggio.positions = #'(1.5 . 2.5)
      \once\override Arpeggio.padding = 0.1
      e'^4)\arpeggio
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      d^4( a e a,)
      d,( a'
      \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
      fis'^2 g) b,( g' d' e,) d( e' d a) c,( e g c)
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