\version "2.19.15"

\language "deutsch"

schauspiel = \relative {
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
      \override Slur.positions = #'(0 . 4.2)
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
      %\override TextScript.font-size = -2
      \fretNumSpan "V"
      cis4 h8\startTextSpan a fis e\stopTextSpan
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
  \acciaccatura <d a'>8-\markup {
    \postscript #"0.5 0.3 moveto 2.2 0.4 rlineto stroke"
  } <e h'>4\fermata
  \bar "||"
  \once \override Script.outside-staff-priority = #100
  cis2~\startTrillSpan\fermata
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  cis32\stopTrillSpan d e
  \once\override TextScript.extra-offset = #'(0 . 2)
  fis^\markup{\italic rit.} gis a h cis
  d e fis gis a h cis^\markup{\italic {ad lib}} d
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
      \textSpannerDown
      \stringNumSpan "5"
      a,,2~(\startTextSpan a8.[ b16] h8\glissando e4.)^\fermata\stopTextSpan
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
      a2~ a16[
      \textSpannerDown
      \stringNumSpan "4"
      d\startTextSpan e f]\glissando a8.[ gis16]~\stopTextSpan
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
  \override Score.RehearsalMark.extra-offset = #'(0 . -2)
  \mark \markup {
    \fontsize #-2 {Adagio con moto}
    \concat {
      \smaller \general-align #Y #DOWN \teeny\note #"4" #1
      \fontsize #-4 {" = "}
      \smaller \general-align #Y #DOWN \teeny\note #"8" #1
    }
  }
  \mergeDifferentlyDottedOn
  \repeat volta 3 {
    <<
      {
        \override TextScript.extra-offset = #'(-3 . -5)
        e''8.^\markup {\small\musicglyph #"scripts.segno"}
        d16\prall cis a\prall
        \stringNumSpan "3"
        g\startTextSpan f~ f8\stopTextSpan \slurDown\acciaccatura h,-\markup {
          \postscript #"3.5 -0.3 moveto 2.2 0.3 rlineto stroke"
        }
        cis~ cis s
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
        e'''8. d16\prall cis a\prall-\markup {
          \postscript #"3.3 -1.2 moveto 2.1 -1 rlineto stroke"
        }
        fis \slurDown\acciaccatura gis-\markup {
          \postscript #"3.5 -0.3 moveto 2.2 0.4 rlineto stroke"
        }
        a
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
        f8 \slurDown\acciaccatura h,-\markup {
          \postscript #"3.5 -0.3 moveto 2.2 0.3 rlineto stroke"
        }
        cis~ cis s
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
      g16 e e,32^( f g16)-\markup {
        \postscript #"0.8 4 moveto 3 1 rlineto stroke"
      }
      b8. as16
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
  c d e f g a h-\markup {
    \postscript #"0.6 6.7 moveto 2 0.9 rlineto stroke"
  }
  d\fermata
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
      e'16 cis, e8 cis'16 a-\markup {
        \postscript #"1.2 6.6 moveto 3.3 -2 rlineto stroke"
      }
      dis, \stemUp\acciaccatura e8-\markup {
        \postscript #"0.5 4.3 moveto 2.2 0.4 rlineto stroke"
      }
      \stemDown fis16
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
      \slurDown\acciaccatura cis'''8-\markup {
        \postscript #"0.5 -1.5 moveto 3.5 0.3 rlineto stroke"
      }
      dis cis
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
      h'8. \slurDown\acciaccatura h8-\markup {
        \postscript #"0.5 -4.6 moveto 2.2 0.5 rlineto stroke"
      }
      cis16 h8.-"V" a16
      a8.-"II" \slurDown\acciaccatura a8-\markup {
        \postscript #"0.4 -4.3 moveto 2.1 0.3 rlineto stroke"
      }
      h16 gis8-"IV" r
      h8. \slurDown\acciaccatura h8-\markup {
        \postscript #"0.5 -4.6 moveto 2.2 0.5 rlineto stroke"
      }
      cis16 e8-"IX" d h8.-"VII" cis16 
      \once\override StringNumber.extra-offset = #'(-0.3 . -1)
      a4\2
      \set subdivideBeams = ##f
      e'8. d16\prall cis a\prall g f~
      \set subdivideBeams = ##t
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
      e16\rest^( d f8)
      \shape #'((0.2 . -4) (-1 . -3) (-0.5 . 0) (0 . 0)) Slur
      f16\rest^( h,8 fis'16)
      \shape #'((0.3 . -3) (-0.5 . -2) (-0.5 . 0) (0 . 0)) Slur
      \override StringNumber.staff-padding = #'()
      \set strokeFingerOrientations = #'(up)
      \override StrokeFinger.staff-padding = #'()
      \override StrokeFinger.script-priority = #-100
      d16\rest^( d gis8) a32\RH #4 cis,\4\RH #3 h\RH #2 a\5\RH #3
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