\version "2.18.0"

\language "deutsch"

\header {
  title = "УШИ ВАН ГОГА"
  %instrument = "Guitar"
  tagline = \markup {\char ##x00A9 "Уши ван Гога"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #17
  %score-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  indent = #0
  ragged-right = ##f
  ragged-last = ##f
}
%%%%%%%%%%%% Some macros %%%%%%%%%%%%%%%%%%%
sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}
crOn = \override NoteHead.style = #'cross
crOff = \revert NoteHead.style

diagramDetails = #'(fret-diagram-details . (
                     (number-type . roman-upper)
                     )
                )

\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords        
        e1*8:m a1*4:m cis:m cis1*5:m e1*4:m
      }
    }
    \new Staff
    \relative e {
      \clef "treble_8"
      \key e \minor
      \time 4/4
      %\override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      \repeat unfold 2 {
        <e g>8^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-7;4-5;4-7;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h' h h
        \nsl
        <e, a>\noBeam
        \sl
        h' h h
        \nsl
      }
      \repeat unfold 2 {
        <fis a>8^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-9;4-7;4-9;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h h h
        \nsl
        <fis h>\noBeam
        \sl
        h h h
        \nsl
      }
      \bar ":|.|:"
      \repeat unfold 2 {
        <e, g>8^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-7;4-5;4-7;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h' h h
        \nsl
        <e, a>^\noBeam
        \sl
        h' h h
        \nsl
      }
      \repeat unfold 2 {
        <fis a>8^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-9;4-7;4-9;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h h h
        \nsl
        <fis h>\noBeam
        \sl
        h h h
        \nsl
      }
      \bar ":|.|:"
      \repeat unfold 2 {
        <a c>^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-x;4-7;3-5;3-7;2-x;1-x;"
        }\noBeam
        \sl
        h h h
        \nsl
        <a d>\noBeam
        \sl
        h h h
        \nsl
      }
      \repeat unfold 2 {
        <h d>^\markup {
          \override \diagramDetails
          \fret-diagram #"6-x;5-x;4-9;3-7;3-9;2-x;1-x;"
        }\noBeam
        \sl
        h h h
        \nsl
        <h e>\noBeam
        \sl
        h h h
        \nsl
      }
      \bar ":|."
      \repeat unfold 4 {
        <cis, gis'>^\markup {
          \override \diagramDetails
          \fret-diagram #"6-9;6-12;5-11;4-x;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h' h h h h
        \nsl
        e,\noBeam
        \sl
        h'
        \nsl
      }
      \bar "||"\break
      \repeat unfold 5 {
        <cis, gis'>^\markup {
          \override \diagramDetails
          \fret-diagram #"6-9;6-12;5-11;4-x;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h' h h h h
        \nsl
        e,\noBeam
        \sl
        h'
        \nsl
      }
      \bar "||"\break
      \repeat unfold 4 {
        <e, h'>^\markup {
          \override \diagramDetails
          \fret-diagram #"6-12;6-15;5-14;4-x;3-x;2-x;1-x;"
        }\noBeam
        \sl
        h' h h h h
        \nsl
        g\noBeam
        \sl
        h
        \nsl
      }
      \bar "|."
    }
    %{
      \new Staff
      \relative e,, {
      \clef "bass_8"
      \key a \minor
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      
      }
    %}
  >>
  \header { piece = "\"Глобальный тантризм\"" }
}