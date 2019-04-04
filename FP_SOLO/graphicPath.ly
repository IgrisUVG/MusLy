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