\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
    %\omit BarLine
    %\omit SpanBar
  }
}

\include "myNoteHeads.ly"

top = \change Staff = "RH"
bot = \change Staff = "LH"

parallelogramZebraBig =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.1 setlinewidth
      0 .1 moveto
      1.3 .6 lineto
      1.3 -.1 lineto
      0 -.6 lineto
      0 .1 lineto
      stroke
      closepath
      newpath
      -.05 .7 moveto
      1.325 1.2 lineto
      1.325 .5 lineto
      -.05 0 lineto
      -.05 .7 lineto
      fill
      closepath
      newpath
      0 1.3 moveto
      1.3 1.8 lineto
      1.3 1.1 lineto
      0 .6 lineto
      0 1.3 lineto
      stroke
      closepath
      newpath
      -.05 1.9 moveto
      1.325 2.4 lineto
      1.325 1.7 lineto
      -.05 1.2 lineto
      -.05 1.9 lineto
      fill
      closepath
      newpath
      0 2.5 moveto
      1.3 3 lineto
      1.3 2.3 lineto
      0 1.8 lineto
      0 2.5 lineto
      stroke
      closepath
      newpath
      -.05 3.1 moveto
      1.325 3.6 lineto
      1.325 2.9 lineto
      -.05 2.4 lineto
      -.05 3.1 lineto
      fill
      closepath
      newpath
      0 3.7 moveto
      1.3 4.2 lineto
      1.3 3.5 lineto
      0 3 lineto
      0 3.7 lineto
      stroke
      closepath
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

parallelogramAccBig =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 4.25 moveto
      1.3125 4.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      stroke
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

parallelogramAccBigFill =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 4.25 moveto
      1.3125 4.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      fill
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

myBigZebraNoteHeads = \override NoteHead.stencil = \parallelogramZebraBig
myBigAccNoteHeads = \override NoteHead.stencil = \parallelogramAccBig
myBigAccNoteHeadsFill = \override NoteHead.stencil = \parallelogramAccBigFill

blackPath =
#'((moveto 0 0)
   (lineto 20 18)
   (lineto 20 17)
   (lineto 0.5 -0.5)
   (closepath))
whitePath =
#'((moveto 0.6 0.5)
   (lineto 20 18)
   (lineto 20 16.7)
   (lineto 1.2 -0.2)
   (closepath))

\score {
  \new PianoStaff <<
    \new Staff {
      \override TextScript.outside-staff-priority = ##f
      s1*3
      \once\override TextScript.extra-offset = #'(3.7 . 5)
      s16-\markup {
        \musicglyph #"flags.d3"
      }
      \once\override TextScript.extra-offset = #'(3.5 . 4.5)
      s-\markup {
        \musicglyph #"flags.dgrace"
      }
      \once\override TextScript.extra-offset = #'(2.95 . 6)
      s8-\markup {
        \override #'(thickness . 1.5)
        \draw-line #'(0 . 4)
      }
      s2.
      s1
    }
    \new Staff {
      \clef bass
      \override TextScript.outside-staff-priority = ##f
      \once\override TextScript.extra-offset = #'(1.05 . 17.9)
      s2-\markup {
        \override #'(filled . #t) \path #0.15 #blackPath
      }
      \once\override TextScript.extra-offset = #'(-1.6 . 16.8)
      s2-\markup {
        \path #0.15 #whitePath
      }
      s1*4
    }
  >>
}
\score {
  \new PianoStaff <<
    \new Staff {
      s1
      \clef bass
      \bar "||"
      \time 2/4
      \slashedGrace {
        \myBigAccNoteHeadsFill
        \once\override Stem.length = #13
        \ottava #-1
        \set Staff.ottavation = #"8"
        \once \override Arpeggio.positions = #'(-5 . 0)
        h,,,8\arpeggio
        \ottava #0
        \normalNoteHeads
      }
      s2
      \time 4/4
      %\clef treble
      <<
        {
          \once\override TextScript.extra-offset = #'(-0.3 . -4.5)
          \once\override Script.extra-offset = #'(0 . -4)
          <d fis h>1-\markup {
            \override #'(thickness . 1.5)
            \draw-line #'(0 . 4.5)
          }\fermata
        }
        \\
        {
          \once\override NoteColumn.force-hshift = #1.4
          \once\override TextScript.extra-offset = #'(2.2 . 6)
          <e gis>-\markup {
            \override #'(thickness . 1.5)
            \draw-line #'(0 . 4.5)
          }
        }
      >>
    }
    \new Staff {
      \clef bass
      \myBigZebraNoteHeads
      g,,,2 r
      \normalNoteHeads
      \bar "||"
      \time 2/4
      \autoBeamOff
      \crossStaff
      \acciaccatura {
        \myBigAccNoteHeads
        \once\override Stem.length = #13
        \ottava #-1
        \set Staff.ottavation = #"8"
        h,,,8
        \ottava #0
        \normalNoteHeads
      }
      \autoBeamOn
      d,4 s
      <<
        {
          \once\override TextScript.extra-offset = #'(-0.3 . -7.4)
          \once\override Script.extra-offset = #'(0 . -1)
          <d, f,! a,>1-\markup {
            \override #'(thickness . 1.5)
            \draw-line #'(0 . 4.5)
          }_\fermata
        }
        \\
        {
          \once\override NoteColumn.force-hshift = #1.4
          \once\override TextScript.extra-offset = #'(2.2 . 4.6)
          <cis, e,>-\markup {
            \override #'(thickness . 1.5)
            \draw-line #'(0 . 4.5)
          }
        }
      >>
    }
  >>
}

fakeBassClef = {
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #2
  \set Staff.middleCPosition = #-6
}
fakeBassClefShift = {
  % Change default prefatory item order so that clef is printed after barline
  \override Score.BreakAlignment.break-align-orders =
  #(make-vector 3 '(span-bar
                    breathing-sign
                    staff-bar
                    clef
                    key
                    time-signature))
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #-10
  \set Staff.middleCPosition = #-8
}

\score {
  \new PianoStaff <<
    \new Staff \relative {
      \clef treble
      \time 2/4
      r4
      <<
        {
          \ottava #1
          <f''' g f'>
          \ottava #0
        }
        \\
        {
          r8 <fis,, c'>-\markup {
            \musicglyph #"slur"
          }
        }
        \\
        {

        }
      >>
    }
    \new Staff \relative {
      \clef treble
      \time 2/4
      r4
      <<
        {
          %\ottava #1
          <f'' a d e>
        }
        \\
        {

        }
        \\
        {

        }
      >>
    }
  >>
}

glissParallOne =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.1 setlinewidth
      0 0 moveto
      -14.5 -17.2 lineto
      -14 -17.75 lineto
      0 -1.3 lineto
      stroke
      closepath
      newpath
      0.1 1 moveto
      -14.9 -16.7 lineto
      -14.51 -17.3 lineto
      0 -0.3 lineto
      fill
      closepath
     grestore" )
   (cons 0 1.3125)
   (cons 2 -2.5))

glissNoteHeadsOne = \override NoteHead.stencil = \glissParallOne

\score {
  \new PianoStaff <<
    \new Staff = "RH" \relative {
      \override Staff.TimeSignature.stencil = ##f
      \override Score.BarLine.stencil = ##f
      \override Score.SpanBar.stencil = ##f
      s1
      \time 2/4
      \bot
      \ottava #-1
      cis,,4
      \ottava #0
      \top
      \clef treble
      s
      s2 s s
      \glissNoteHeadsOne
      \slashedGrace {
        \stemDown
        \once\override Stem.length = #13
        \override NoteHead.no-ledgers = ##t
        \shape #'((0 . 3) (-1 . -0.5) (-0.5 . -0.5) (1 . 0)) Slur
        e'''''8( s4
        \revert NoteHead.no-ledgers
        \stemNeutral
      }
      \normalNoteHeads
      \bot
      cis,,2)
      \top
    }
    \new Staff = "LH" \relative {
      \clef bass
      s1
      s2 s s s
    }
  >>
}