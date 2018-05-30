\version "2.19.15"

\language "deutsch"

\header {
  title = "Fin"
  composer = "I. G."
  meter = "A"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 5
  markup-system-spacing.basic-distance = 20
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 22
  last-bottom-spacing.basic-distance = 20

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



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new Staff \with {
    instrumentName = "G"
  }
  \relative {
    \clef "treble_8"
    \key e \major
    \time 4/4
    \override Staff.TimeSignature.stencil = ##f
    <<
      {
        e'4 cis' gis a fis4. e8
      }
      \\
      {
        h4 e dis
        \voiceOne
        fis,
        \once\override NoteColumn.force-hshift = #0.2
        gis
        \voiceTwo
        a
      }
      \\
      {
        \voiceTwo
        gis,4 a h c
        \override NoteColumn.force-hshift = #0.2
        h c
      }
    >>
    <<
      {
        gis''4 a
        \once\override NoteColumn.force-hshift = #-0.2
        fis4. e8 e2
      }
      \\
      {
        e2
        \voiceOne
        gis,4 a
        \voiceTwo
        \once\override NoteColumn.force-hshift = #0.2
        e,2
      }
      \\
      {
        fis'4. e8 e2 fis4. e8
      }
      \\
      {
        \voiceTwo
        h4 c h c h c
      }
    >>
    <<
      {
        h'4 gis' <h, dis> <cis \parenthesize e>
      }
      \\
      {
        e,8 dis cis h <a e'>2
      }
    >>
  }
}
\score {
  \new Staff \with {
    instrumentName = "G"
  }
  \relative {
    \clef "treble_8"
    \key e \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    <<
      {
        cis'4 h
      }
      \\
      {
        s4. <a fis'>8
      }
      \\
      {
        \voiceTwo
        <gis, f'>4 <fis e'>
      }
    >>
    <<
      {
        <e'' h'>4 <e a>
      }
      \\
      {
        <e, gis c>4 <h fis' a>
      }
      \\
      {
        \voiceTwo
        \once\override NoteColumn.force-hshift = #0.2
        a8 gis 
        \once\override NoteColumn.force-hshift = #0.2
        fis e
      }
    >>
  }
}
