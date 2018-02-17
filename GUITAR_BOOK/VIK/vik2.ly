\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\header {
  title = "VIk"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout{
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

#(define RH rightHandFinger)

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                             further 2) 0)
         #})

%%%%%%%%%%%%%%% VAR 2 %%%%%%%%%%%%%%%%
\score {
  \relative {
    \key d \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
    \mark \markup{\fontsize #-2 {\bold {Var 2} \italic {a tempo}}}
    <<
      {
        a''2-1 
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.2)
        fis\2 
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.3)
        \once\override Fingering.extra-offset = #'(-1.3 . -1)
        e-2\2 a fis
      }
      \\
      {
        a8[
        \override NoteHead.style = #'harmonic
        fis' d a] e[ a g d] h\rest a'[ d cis]
        \revert NoteHead.style
        a8[
        \override NoteHead.style = #'harmonic
        fis' d a] e[ a g d]
      }
      \\
      {
      	\override TextScript.font-size = -5
      	\hideNotes
        s8
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        fis'-\markup {\circle\bold 2}
        \once\override TextScript.extra-offset = #'(0 . -3)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -4)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-1.2 . -8.6)
        e-\markup {\circle\bold 5}
        \once\override TextScript.extra-offset = #'(0 . -3.1)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(0 . -2.8)
        g-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -3.9)
        d-\markup {\circle\bold 4}
        s
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        a'-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(0 . -3.3)
        cis-\markup {\circle\bold 5}
        s1
        \unHideNotes
      }
      \\
      {
      	\override TextScript.font-size = -5
      	\hideNotes
        s8
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        fis^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        d^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.7)
        a^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -8.3)
        e^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.8)
        a^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        g^"XII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.7)
        d^"XII"
        s
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        a'^"VII"
        \once\override TextScript.extra-offset = #'(-0.6 . -6)
        d^"VII"
        \once\override TextScript.extra-offset = #'(-0.5 . -6)
        cis^"IV"
        s1
        \unHideNotes
      }
      \\      
      {
        \voiceTwo
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,,,2\laissezVibrer s a' 
        \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) LaissezVibrerTie
        \xLV #16 d,2\laissezVibrer s
      }
    >>
    \break
    <<
      {
        \override TextScript.extra-offset = #'(0 . 2)
        e''4. h'8 cis4. d8 h4. d8 
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.2)
        \once\override Fingering.extra-offset = #'(-1.3 . -1.3)
        fis,2-4\2 
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.2)
        \once\override Fingering.extra-offset = #'(-1.3 . -1)
        e-2\2-\markup{\italic rit.}
      }
      \\
      {
        \override NoteHead.style = #'harmonic
        \override Rest.extra-offset = #'(0 . 1.8)
        e,8\rest a'[ d] s r 
        \override NoteColumn.force-hshift = 0 
        fis[ h] r r d,[ g] r r a,[ fis' d] r a[ d cis]
      }
      \\
      {
      	\hideNotes
        s2 s8
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        fis-\markup {\circle\bold 2}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        h-\markup {\circle\bold 2} s s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        d,-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        g-\markup {\circle\bold 3} s s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        a,-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.5 . -3)
        fis'-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.4 . -3.5)
        d-\markup {\circle\bold 4} s
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        a-\markup {\circle\bold 4}
        \once\override TextScript.extra-offset = #'(-0.4 . -2.8)
        d-\markup {\circle\bold 3}
        \once\override TextScript.extra-offset = #'(-0.6 . -3.3)
        cis-\markup {\circle\bold 5}
        \unHideNotes
      }
      \\
      {
      	\hideNotes
        s2 s8
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        fis^"VII"
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        h^"V" s s
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        d,^"VII"
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        g^"V" s s
        \once\override TextScript.extra-offset = #'(-1.3 . -6)
        a,^"VII"
        \once\override TextScript.extra-offset = #'(-1 . -5.7)
        fis'^"IV"
        \once\override TextScript.extra-offset = #'(-0.6 . -6.3)
        d^"V" s
        \once\override TextScript.extra-offset = #'(-0.8 . -6)
        a^"V"
        \once\override TextScript.extra-offset = #'(-0.6 . -5.6)
        d^"V"
        \once\override TextScript.extra-offset = #'(-1 . -6)
        cis^"IV"
        \unHideNotes
      }
      \\
      {
        \voiceTwo
        a,,4. a8\rest s2*4
      }
    >>
    \bar "||"
  }
}