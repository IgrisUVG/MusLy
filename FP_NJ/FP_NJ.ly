\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #5
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #5
  system-system-spacing.basic-distance = #15
  score-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

circle =
\once \override NoteHead.stencil =
#(lambda (grob)
   (let* ((note (ly:note-head::print grob))
          (combo-stencil (ly:stencil-add
                          note
                          (circle-stencil note 0.1 0.5))))
     (ly:make-stencil (ly:stencil-expr combo-stencil)
       (ly:stencil-extent note X)
       (ly:stencil-extent note Y))))

#(ly:font-config-add-font "gothicg_.ttf")

sopranoErste = \relative c'' {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  g4 g c h e, e a2
  \repeat unfold 2 {g4 g c a8 g g4 fis g2}
  \repeat unfold 2 {
    d'4 a g h d g, g a g g c a8 g g4 fis g2
  }
  \bar "|."
}

sopranoZweite = \relative c'' {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  g4 g c h e, e a2
  \repeat unfold 2 {g4 g {\circle h} a8 g g4 fis g2}
  \repeat unfold 2 {
    d'4 a g h d g, g a g g {\circle h} a8 g g4 fis g2
  }
  \bar "|."
}

sopranoDritte = \relative c'' {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  g4 g c h e, e a2
  g4 g c a8 g g4 fis g2
  g4 g {\circle h} a8 g g4 fis g2
  d'4 a g h d g, g a g g {\circle h} a8 g g4 fis g2
  d'4 a g h d g, g a g g c a8 g g4 fis g2
  \bar "|."
}

sopranoVierte = \relative c'' {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  g4 g c h e, e a2
  g4 g c a8 g g4 fis g2
  g4 g {\circle h} a8 g g4 fis g2
  d'4 a g h d g, g a g g c a8 g g4 fis g2
  d'4 a g h d g, g a g g {\circle h} a8 g g4 fis g2
  \bar "|."
}

alt = \relative c' {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  d4 e d h d c8 h a2
  e'4 d d8 e e4 d4. c8 h2
  c4 d d8 e e4 d2 d
  \break
  \repeat unfold 4 {e8 d d4} c d d8 e e4 d2 d4 c
  \repeat unfold 4 {e8 d d4} c d d8 e e4 d2 d
  \bar "|."
}

tenor = \relative c' {
  \clef bass
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  h4 a8 g g4 g8 fis g4 g d2
  h'4 a8 g g4 g a2 g
  a4 a8 g g4 g a2 h
  \repeat unfold 2 {\repeat unfold 8 {g4} a a8 g g4 g a2 g}
  \bar "|."
}

bas = \relative c {
  \clef bass
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  g4 c d e a, g fis2
  e4 h' c h d2 e
  d4 h c a d2 g,
  \repeat unfold 2 {a4 h c d}
  d h c h d2 e
  \repeat unfold 2 {a,4 h c d}
  d h c a d2 g,
  \bar "|."
}

\book {
  \paper {
    print-all-headers = ##t
    scoreTitleMarkup = \markup {
      \fill-line {
        %\null
        \override #'(font-name . "GothicG")
        \fontsize #6
        \bold
        \fromproperty #'header:title
      }
    }
  }
  \header {
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup <<
      \new Staff {
        <<\sopranoErste \\ \alt>>
      }
      \new Staff {
        <<\tenor \\ \bas>>
      }
    >>
    \header {
      title =  "A"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
  %\pageBreak
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup <<
      \new Staff {
        <<\sopranoZweite \\ \alt>>
      }
      \new Staff {
        <<\tenor \\ \bas>>
      }
    >>
    \header {
      title = "B"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
%%%%%%%%%%%%%%%%%%%%% DRITTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup <<
      \new Staff {
        <<\sopranoVierte \\ \alt>>
      }
      \new Staff {
        <<\tenor \\ \bas>>
      }
    >>
    \header {
      title = "C"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
%%%%%%%%%%%%%%%%%%%%% VIERTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup <<
      \new Staff {
        <<\sopranoDritte \\ \alt>>
      }
      \new Staff {
        <<\tenor \\ \bas>>
      }
    >>
    \header {
      title = "D"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
}