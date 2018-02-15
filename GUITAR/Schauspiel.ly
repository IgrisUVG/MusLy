\version "2.19.15"

\language "deutsch"

\header {
  title = "Schauspiel"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
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
\score {
  \new Staff \with {
    instrumentName = "Guitar"
  }
  \relative {
    \clef "treble_8"
    \key a \major
    \time 4/4
    %\override Staff.TimeSignature.stencil = ##f
    %\mergeDifferentlyHeadedOn
    %\mergeDifferentlyDottedOn
    \override Score.RehearsalMark.extra-offset = #'(0 . 3)
    \mark \markup {\fontsize #-2 {Allegretto}}
    \partial 2
    <a' d>8 <e c'>
    <<
      {
        <cis! h'>4
        \voiceThree
        e,,16( h' fis' h \stemDown e) fis\2 a h
      }
      \\
      {
        \override Fingering.staff-padding = #'()
        cis,16 fis fis, h^0^~
        \stemUp h8
      }
      \\
      {
        \voiceTwo
        s4 e,,2
      }
    >>
    <<
      {
        cis'''4( e,)
      }
      \\
      {
        \override Fingering.staff-padding = #'()
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h^0 e) e^0 a,( f, c')
      }
      \\
      {
        \voiceTwo
        a4. \stemUp f8
      }
    >>
    <<
      {
        h'8 s4.
      }
      \\
      {
        \voiceTwo
        e,,2
      }
      \\
      {
        e16( h' fis' h \stemDown e) fis a h
      }
    >>
    <<
      {
        cis4( e,)
      }
      \\
      {
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h e) e a,( f, c')
      }
      \\
      {
        \voiceTwo
        a4. \stemUp f8
      }
    >>
    <<
      {
        h'8 s4.
      }
      \\
      {
        \voiceTwo
        e,,2
      }
      \\
      {
        e16( h' fis' h \stemDown e) fis a h
      }
    >>
    <<
      {
        cis4 h8 a fis e
      }
      \\
      {
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h e) h' e, a cis, fis d e a,
      }
      \\
      {
        \voiceTwo
        a,4 a~ a
      }
    >>
    \repeat unfold 2{
      <<
        {
          h'4
        }
        \\
        {
          \shape #'((0 . -5.5) (-1.5 . -2.5) (-1 . 0) (0 . 0)) Slur
          \once\override Beam.positions = #'(-7.3 . -7)
          h16^( h, fis' gis)
        }
        \\
        {
          \voiceTwo
          \once \override NoteColumn.force-hshift = #0.2
          e,4
        }
      >>
      <c' f>8(\glissando <e a>)
    }
    <<
      {
        h'8 cis!
      }
      \\
      {
        \once\override Beam.positions = #'(-4.3 . -2.5)
        h16 <fis gis> cis' <a e'>
      }
      \\
      {
        \voiceTwo
        e,8 a
      }
    >>
    h'16 <a' d> a, <e' cis'>
    <<
      {
        <cis h'>4 e,,16 a_( cis e) gis a h cis-\markup {
          \postscript #"0.5 -4.8 moveto 2.2 1.1 rlineto stroke"
        }
      }
      \\
      {
        cis16 fis fis, h^~ \stemUp h8 s4.
      }
      \\
      {
        \voiceTwo
        s4 e,,2
      }
    >>
    e''16 fis a h
    <<
      {
        cis4( e)
        \voiceThree
        e,,,16 a h c d[ f g a]
      }
      \\
      {
        <e, a' e'>4 a e2
      }
      \\
      {
        e8 <f' h>
        \voiceOne
        d'[_(\glissando e,])~ e
      }
    >>
    \acciaccatura <d a'>8 <e h'>4\fermata
    \bar "||"
    \once \override Script.outside-staff-priority = #100
    cis2~\startTrillSpan\fermata
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    cis32\stopTrillSpan d e fis gis a h cis d e fis gis a h cis d
    \cadenzaOn
    <<
      {
        e8.[ d16]\prall cis[ a g f] e4-\markup {
          \postscript #"1.2 -1.7 moveto 3.2 -2.2 rlineto stroke"
        }
        r2 e'8\harmonic[\fermata fis,16( f]) b8\fermata r
      }
      \\
      {
        a,,2~( a8.[ b16] h8\glissando e4.)^\fermata
        \set harmonicDots = ##t
        a4.\harmonic e,8
      }
    >>
    \bar ""
    \break
    <<
      {
        e'''8.[ d16]\prall cis[ a \slurDown\acciaccatura a fis e] d8-\markup {
          \postscript #"1.2 -1.7 moveto 3.2 -2.2 rlineto stroke"
        } r8 r4 \stemDown e,,2
      }
      \\
      {
        a2~ a16[ d e f]\glissando a8.[ gis16]~
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        gis32[ fis''^( e) d cis^( h) a gis]^(
        \stemUp
        fis[) e d( cis) h a( gis) fis]
      }
    >>
    e2\fermata
    \cadenzaOff
    \break
    %\pageBreak
    \time 2/4
    \override Score.RehearsalMark.extra-offset = #'(0 . -2.5)
    \mark \markup {\fontsize #-2 {Adagio con moto}}
    \mergeDifferentlyDottedOn
    \repeat volta 3 {
      <<
        {
          \override TextScript.extra-offset = #'(-3 . -5)
          e''8.^\markup {\musicglyph #"scripts.segno"}
          d16\prall cis a\prall g f~
          f8 \slurDown\acciaccatura h, cis~ cis s
        }
        \\
        {
          \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
          e'16^( cis, e8) cis'16 d,,8 a'16~ a e'8^( h16)~ h8 <h' gis'>\noBeam
        }
        \\
        {
          \voiceTwo
          a,,2 a4 e->
        }
      >>
      <<
        {
          e'''8. d16\prall cis a\prall \glissando fis \slurDown\acciaccatura gis a
        }
        \\
        {
          \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
          e'16^( cis, e8) cis'16 d,,8.
        }
        \\
        {
          \voiceTwo
          a2
        }
      >>
      <<
        {
          e''4~ e16\noBeam h'-. cis-. dis-.
        }
        \\
        {
          e,16 g,32^( c h16) g32^( c h4)
        }
        \\
        {
          \voiceTwo
          s4 r8 e,,
        }
      >>
      <<
        {
          e'''8. d16\prall cis a\prall g f~
          f8 \slurDown\acciaccatura h, cis~ cis s
        }
        \\
        {
          \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
          e'16^( cis, e8) cis'16 d,,8 a'16~ a e'8^( h16)~ h8 <h' gis'>\noBeam
        }
        \\
        {
          \voiceTwo
          a,,2 a4 e->
        }
      >>
      <<
        {
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(2 2 2 2)
          e'''8. d16\prall cis h32 a gis fis e d
        }
        \\
        {
          \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
          e'16^( cis, e8) s4
        }
        \\
        {
          \voiceTwo
          a,,4 d
        }
      >>
    }
    \alternative {
      {
        <<
          {
            cis'8~ cis32 h\prall a fis
          }
          \\
          {
            r8 e,
          }
        >>
        \set subdivideBeams = ##f
        e'16-- gis,-. a-. h-.
      }
      \bar ":|."
      {
        <<
          {
            cis'8~ cis32 h\prall a fis
          }
          \\
          {
            r8 e,
          }
        >>
        %\once \override Score.RehearsalMark #'extra-offset = #'(8.7 . -4.1)
        %\once \override Score.RehearsalMark #'font-size = #1
        %\mark \markup { \musicglyph #"scripts.coda" }
        e'16-- <gis, h'>-. <a cis'>-. <h d'>-.
      }
    }
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . -4.1)
    %\once \override Score.RehearsalMark #'font-size = #1
    \mark \markup { \musicglyph #"scripts.coda" }
    <<
      {
        \once\override Fingering.extra-offset = #'(-0.2 . -2.5)
        e'8.-0 d16
      }
      \\
      {
        \voiceOne
        \shape #'((-1.5 . -1) (0 . -1) (0 . 0) (0 . 0)) Slur
        s16_( e, g8)
      }
      \\
      {
        \voiceTwo
        c,4
      }
    >>
    <<
      {
        c'16\prall b as b
      }
      \\
      {
        r16 f,8 g16
      }
    >>
    <<
      {
        g'8 r r4
      }
      \\
      {
        \once\override Beam.positions = #'(-8 . -8.5)
        g16 e e,32^( f g16)\glissando b8. as16
      }
      \\
      {
        \voiceTwo
        \once \override NoteColumn.force-hshift = #0.2
        c8 s4.
      }
    >>
    <<
      {
        e''8. d16
      }
      \\
      {
        \shape #'((0 . -6) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        \once\override Beam.positions = #'(-1.5 . -2.5)
        e16^( c, g'8)
      }
      \\
      {
        \voiceTwo
        c,,4
      }
    >>
    <<
      {
        c''16\prall g as b
      }
      \\
      {
        c16 f,,8 g16
      }
    >>
    <<
      {
        \override TextScript.font-size = -2
        g'4-"VIII"
      }
      \\
      {
        \voiceOne
        c,,16 f32_( g)
        \voiceTwo
        as[ c des es]
      }
      \\
      {
        \voiceTwo
        c,4
      }
    >>
    <<
      {
        \once\override StringNumber.extra-offset = #'(-0.5 . -2.8)
        f'16\3 r r8
      }
      \\
      {
        f16 b,, as8
      }
    >>
    <<
      {
        e''8. d16
      }
      \\
      {
        \voiceOne
        \shape #'((-1.5 . -1) (0 . -1) (0 . 0) (0 . 0)) Slur
        s16_( e, g8)
      }
      \\
      {
        \voiceTwo
        c,4
      }
    >>
    <<
      {
        c'16\prall b as b
      }
      \\
      {
        r16 f,8 g16
      }
    >>
    <<
      {
        g'4
      }
      \\
      {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        g32 c, d e f g a h
      }
    >>
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    c d e f g a h\glissando d\fermata
    \bar "||"
    <<
      {
        h8. a16\prall
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
        h'''8. \acciaccatura h8 cis16 h8.-"V" a16
        a8.-"II" \acciaccatura a8 h16 gis8-"IV" r
      }
      \\
      {
        
      }
      \\
      {
        
      }
    >>
    %\bar "|."
  }
}
