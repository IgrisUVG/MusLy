\version "2.19.15"

\language "deutsch"

\header {
  title = "N"
  meter = "Allegretto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 5
  markup-system-spacing.basic-distance = 15
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 20
  score-system-spacing.basic-distance = 20
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

global = {
  %\key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
}

ossia = \relative {
  \set Staff.fontSize = #-3
  \override Staff.StaffSymbol.staff-space = #(magstep -3)
  \override Staff.StaffSymbol.thickness = #(magstep -3)
  \global
  d''2~ d8 cis-. r   b-. c!2 r as~ as8 g-. r e fis2 r
  b~    b8   a-. r fis-. as2 r f~   f8 e-. r d  es2 r
  %a8 c-. r es h2~ h8
}

classicalGuitar = \relative {
  \global
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \override StrokeFinger.extra-offset = #'(-2.3 . 0.8)
      d''32\RH #1 d\RH #2 d\RH #3 d\RH #4 as d d d d d d d e, d' d d
      b, d' d d <a cis>8-.\noBeam r <g b>-.
    }
    \\
    {
      d8\rest as'( g4) <g, b>4 cis,
    }
    \\
    {
      \voiceTwo
      s4. e'8 s2
    }
  >>
  <<
    {
      f!32 c'!\2 c c as c c c c c c c cis, c'! c c
    }
    \\
    {
      f,8 as( g4)
    }
    \\
    {
      \voiceTwo
      s4. cis,8
    }
    \\
    {
      \voiceTwo
      e,4\harmonic s
    }
  >>
  b'16-\markup {
    \postscript #"1.2 2.2 moveto 3.6 -2.5 rlineto stroke"
  } as,\( d f b( h) e8\)
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      as32 as as as ges as as as as as as as c, as' as as
      g, as' as as <es g>8-.\noBeam r <c e>
    }
    \\
    {
      h8\rest ges'( f4)
      \once\override Fingering.extra-offset = #'(-0.5 . -3)
      <e, g!-0>4 b
    }
    \\
    {
      \voiceTwo
      s4. c'8 s2
    }
  >>
  <<
    {
      \override TextScript.font-size = -2
      \once\override TextScript.extra-offset = #'(-0.5 . -1.5)
      d32^"II" fis fis fis fis fis fis fis
      a, fis' fis fis f,! fis'! fis fis
      e, g' g g b, gis' gis gis cis, gis' gis gis a a a a
    }
    \\
    {
      d,8( cis4) s8
    }
    \\
    {
      \voiceTwo
      \hideNotes
      \shape #'((0.8 . 0.3) (0 . 0) (0 . 0) (0 . 0)) Slur
      d4(\unHideNotes a8 f) e( b' cis4)
    }
    \\
    {
      \voiceTwo
      c,!1
    }
  >>
  <<
    {
      \once\override TextScript.extra-offset = #'(-0.7 . -1.5)
      b''32^"IV" b b b e, b' b b b b b b h,! b'! b b
      fis, b' b b <f! a>8-.\noBeam r <d fis>-.
    }
    \\
    {
      d8\rest e( es4) <d, fis> gis,
    }
    \\
    {
      \voiceTwo
      s4. h'8 s2
    }
  >>
  <<
    {
      h32 gis' gis gis gis gis gis gis fis, gis' gis gis gis gis gis gis
    }
    \\
    {
      h,8( b4.)
    }
    \\
    {
      \voiceTwo
      s4 fis8( es)
    }
    \\
    {
      \voiceTwo
      a,2
    }
  >>
  c16-\markup {
    \postscript #"1.7 1.2 moveto 3.5 1 rlineto stroke"
  } h!_\6\( es b'! c( cis) g'8\)
  \break
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      f32 f f f d f f f f f f f a, f' f f
      d, f' f f <cis e>8-.\noBeam r <b d>-.
    }
    \\
    {
      h8\rest d( cis4) <h, d> f
    }
    \\
    {
      \voiceTwo
      s4. a'8 s2
    }
  >>
  \mergeDifferentlyHeadedOn
  <<
    {
      h32 es es es es es es es es es es es es es es es
      gis,, d'' d d d d d d d d d d cis cis cis cis
    }
    \\
    {
      h8( b4) s8 s4 a
    }
    \\
    {
      \voiceTwo
      \hideNotes
      \shape #'((0.8 . 0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
      h4(\unHideNotes fis8 d) s8 fis4.
    }
    \\
    {
      \voiceTwo
      a,2 gis
    }
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup<<

    %\new Staff \ossia

    \new Staff \with {
      instrumentName = "Guitar"
    }
    {
      \clef "treble_8" \classicalGuitar
    }

  >>
}
