\version "2.19.15"

\language "deutsch"

\include "guitarScript.ly"
\include "global.ly"

guitarTwo = \relative{
  \global
  \override Staff.TimeSignature #'stencil = ##f
  \override TextScript.font-size = -2
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  \override StrokeFinger.staff-padding = #'()
  \time 8/4
  g8^"V"[( d' g]) a,[( d a']) \acciaccatura d,-\markup {
    \postscript #"0.5 0.3 moveto 1.8 0.4 rlineto stroke"
  } e h g4 d8 e4 fis8[ e d]
  \time 6/4
  g8[( d' g]) a,[( d a']) \acciaccatura d,-\markup {
    \postscript #"0.5 0.3 moveto 1.8 0.4 rlineto stroke"
  } e h
  a16_0( h) c d(-\markup {
    \postscript #"0.5 0.3 moveto 2.2 0.5 rlineto stroke"
  } e) fis g( a)
  \time 5/4
  h4\4 a8 h( a) e fis d e4
  \time 4/4
  a,16( h c) d(-\markup {
    \postscript #"0.5 0.3 moveto 2.2 0.5 rlineto stroke"
  } e) fis g( a) h( c) d e( fis) g a( ais)
  <d, h'>4 <h a'>8
  <<
    {
      h'8[( a])
    }
    \\
    {
      c,4
    }
  >>
  <c e>8\noBeam<a fis'><h d>
  \tag #'Part {
    \break
  }
  <g e'>4<a c>8<h d>4<e g>8-.<a, c>4
  \once\override StrokeFinger.avoid-slur = #'outside
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.add-stem-support = ##t
  \set strokeFingerOrientations = #'(up down)
  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)
  <g\4-\RH #1 h-0-\RH #3 >16(
  \unset stringNumberOrientations
  \unset fingeringOrientations
  \override StrokeFinger.avoid-slur = #'inside
  \set strokeFingerOrientations = #'(down)
  h-\RH #2 c) d-\RH #3 e-\RH #2 ( fis) g-\RH #3 a-\RH#2
  h-\RH #3 ( g-\RH #2 d-\RH#1) g(-\markup {
    \postscript #"0.8 6 moveto 2.2 0.5 rlineto stroke"
  } a) e-\RH#1 ( a-\RH#2 c-\RH#3)
  d-\RH#2 ( c) a-\markup {
    \postscript #"0.8 6.3 moveto 2.2 0.5 rlineto stroke"
  }-\RH#2 ( h) c-\RH#3 a-\RH#2 h-\RH#3 c-\RH#2 <h d>4<c e>8<h d>~
  \tag #'Part {
    \break
  }
  q <e, g><fis a><g h><a c>4 <h d>8 <a c>~ q <d, fis><e g><fis a>
  <<
    {
      h8. c16[( h8])
    }
    \\
    {
      g4.
    }
  >>
  <h, g'>8
  <<
    {
      \override TextScript.font-size = -2
      a'8.^"V" h16[( a8])
    }
    \\
    {
      c,4.
    }
  >>
  <d fis\2>8<e g>
  \tag #'Part {
    a(-\markup {
      \postscript #"0.8 6.3 moveto 3.8 0.5 rlineto stroke"
    }
  }
  \tag #'Partitur {
    a(-\markup {
      \postscript #"0.8 6.3 moveto 2.6 0.5 rlineto stroke"
    }
  }
  h) d
  <a fis'>4<fis e'>8
  <<
    {
      fis'[( e])
    }
    \\
    {
      g,4
    }
  >>
  <d h'\2>8\noBeam
  <e c'>^\markup \fontsize #-3 {\parenthesize \sharp}<h a'>
  <<
    {
      \override Fingering.staff-padding = #'()
      \set fingeringOrientations = #'(down left up)
      <cis-3 e-0 h'-4>4
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \once \override NoteColumn.force-hshift = #1.7
      d4^1
    }
  >>
  r8 d'\harmonic\3 r4 h8\harmonic\2 r
  <d, h'>4 <h a'>8
  <<
    {
      h'8[( a])
    }
    \\
    {
      c,4
    }
  >>
  <g e'>8 <a fis'>
  \once\override TextScript.extra-offset = #'(-0.5 . 0)
  <e d'>^"VII"
  \set fingeringOrientations = #'(left up)
  <g-0 e'-0>
  \unset fingeringOrientations
  <<
    {
      a'8[( g])
    }
    \\
    {
      h,4
    }
  >>
  \stringNumSpan "2"
  <fis d'>8\startTextSpan[ <g e'>\stopTextSpan]
  <<
    {
      \override TextScript.font-size = -2
      \once\override TextScript.extra-offset = #'(-0.4 . -2)
      g'8^"II"[( fis])
    }
    \\
    {
      a,4
    }
  >>
  <e cis'>8
  \tag #'Part {
    \break
  }
  <\tweak #'duration-log #1 d, \tweak #'duration-log #1 a'>16(
  e'' d a d, a' h e) g(\( e) h g e g d' e\)
  <\tweak #'duration-log #1 d,, \tweak #'duration-log #1 a'>_\(
  fis' a d a'( e) d a\) d,_\( a' h g'_(\stemUp fis) d g, e\)\stemNeutral
  <<
    {
      \override NoteColumn.ignore-collision = ##t
      \stemUp<\tweak #'duration-log #1 d, \tweak #'duration-log #1 a'>4
    }
    \\
    {
      \stemUp
      \acciaccatura d''8-\markup {
        \postscript #"0.5 2.9 moveto 2.3 1 rlineto stroke"
      } \stemUp
      \once \override StringNumber.extra-offset = #'(-0.5 . -2.3)
      fis4\2
    }
  >>
  e8 fis[( e]) \appoggiatura a,-\markup {
    \postscript #"0.5 1.4 moveto 2.2 0.4 rlineto stroke"
  } h\3 c a
  \tag #'Part {
    \break
  }
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      <g_\4 h-0>4
    }
    \\
    {
      s8 <d' h'>^>
    }
  >>
  <c a'><d h'>(
  -\markup {
    \postscript #"1 7 moveto 2.6 -0.6 rlineto stroke"
  }
  -\markup {
    \postscript #"1.2 4.8 moveto 2.4 -0.4 rlineto stroke"
  }
  <c a'>)<c e>-><a fis'>4
  <h d>8<g e'>4 a16( h) c8 <fis, d'>4 \acciaccatura a'8-\markup {
    \postscript #"0.5 4.9 moveto 2.3 0.9 rlineto stroke"
  } c <d, h'>
  <<
    {
      d'4
    }
    \\
    {
      h8[ g]
    }
  >>
  <e c'>8<d fis>
  <<
    {
      c'4
    }
    \\
    {
      a8[ e]
    }
  >>
  <d h'>8
  <<
    {
      g16( fis) d8
    }
    \\
    {
      h a
    }
  >>
  <fis' d'><d c'><e g><g, e'>4<fis d'>8
  \tag #'Part {
    \break
  }
  <<
    {
      \override Fingering.staff-padding = #'()
      <g h-0>8 s
    }
    \\
    {
      g16_\4 h_\3^(
      \tag #'Part {
        c-\markup {
          \postscript #"1 5.2 moveto 2.4 0.4 rlineto stroke"
        }
      }
      \tag #'Partitur {
        c-\markup {
          \postscript #"0.7 7.4 moveto 1.3 0.3 rlineto stroke"
        }
      }
      d)
    }
  >>
  \textSpannerDown
  \stringNumSpan "2"
  e16(\startTextSpan fis) g a h(\stopTextSpan d) a( d) g, d'( h) g
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) PhrasingSlur
  e_\3\( c_\4 e fis( g)\) a h c
  \tag #'Part {
    d(-\markup {
      \postscript #"1 7.8 moveto 2.4 0.4 rlineto stroke"
    }
  }
  \tag #' Partitur {
    d(-\markup {
      \postscript #"0.8 7.8 moveto 1.5 0.4 rlineto stroke"
    }
  }
  e) h
  \tag #'Part {
    fis(-\markup {
      \postscript #"1 5.3 moveto 2.4 -0.5 rlineto stroke"
    }
  }
  \tag #'Partitur {
    fis(-\markup {
      \postscript #"1 5.3 moveto 1.4 -0.5 rlineto stroke"
    }
  }
  \once\override TextScript.extra-offset = #'(-1 . 0)
  e^"VIII") g c a
  \tag #'Part {
    \break
  }
  <g h> cis,_\4( d)
  \tag #'Part {
    c(-\markup {
      \postscript #"1 4.8 moveto 2.4 -0.5 rlineto stroke"
    }
  }
  \tag #'Partitur {
    c(-\markup {
      \postscript #"1 4.8 moveto 1.5 -0.5 rlineto stroke"
    }
  }
  h) a g fis
  <<
    {
      \override Fingering.staff-padding = #'()
      \override TextScript.font-size = -2
      \once\override TextScript.extra-offset = #'(-1 . 0)
      g^"VII" a d8 s4 a16 h_0 e8_0 s4
    }
    \\
    {
      g,4_3 s a4 s16 h8 s16
    }
    \\
    {
      \stemDown s16 a8_( h16
      \tag #'Part {
        c-\markup {
          \postscript #"1.2 -1.3 moveto 2.4 -1 rlineto stroke"
        }
      }
      \tag #'Partitur {
        c-\markup {
          \postscript #"1.2 -1.3 moveto 1.5 -1 rlineto stroke"
        }
      }
      a) c(
      \once \override Fingering.extra-offset = #'(0.3 . 3.5)
      d_4) s8. c16(
      \stemUp
      \tag #'Part {
        d-1)-\markup {
          \postscript #"0.5 -5.8 moveto 2.6 -1 rlineto stroke"
        }
      }
      \tag #'Partitur {
        d-1)-\markup {
          \postscript #"0.5 -6 moveto 1.7 -1.1 rlineto stroke"
        }
      }
      h( d e)
    }
  >>
  c16( a) g( e) d( h) g( e)
  \tag #'Part {
    \break
  }
  es8[( b' es]) f,[( b f'])(es) c( b[)( f' b]) g,[( c g'])
  <<
    {
      \voiceTwo
      \hideNotes
      s
      \once \override StringNumber.extra-offset = #'(-1.8 . -2.8)
      c'\4
      \unHideNotes
    }
    \\
    {
      f,,,
      \once \override StringNumber.extra-offset = #'(0.8 . -0.8)
      <dis'''\harmonic e\harmonic\3> \stemNeutral
    }
  >>
  \repeat unfold 3 {
    es,,,8[( b' es]) f,[( b f'])(es) c( b[)( f' b]) g,[( c g'])
    \stemDown f, <dis'''\harmonic e\harmonic> \stemNeutral
  }
  \tag #'Part {
    \break
  }
  <d, h'>8^"VII"[( g d])
  %\shape #'((0 . 0.3) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
  <c h'>^"V"[\(( a') e]\)
  \phrasingSlurDashed
  \shape #'((0 . 0.3) (0 . 0) (0 . 0) (-0.5 . 0)) PhrasingSlur
  <a, fis'>^"VII"\(( d)~ <h d g>8\)
  \phrasingSlurSolid
  d'16( c) h a g fis e-0 c'\2 g\3( fis) <d h'>8 <c a'>
  <h d>[( d' a]) <es d'>[\(( c') g]\)
  <<
    {
      \stemDown
      <c, a'>( d)~
      \stemUp
      <d g>8 s
    }
    \\
    {
      s4
      h16( c) d e
    }
  >>
  fis g a h
  <<
    {
      s8. s8
      \once\override Fingering.extra-offset = #'(-0.2 . -3)
      h16-4 c( a) d h c g h fis a h, h' e, a
      \tag #'Part {
        c-\markup {
          \postscript #"0.8 -4.1 moveto 2.2 0.9 rlineto stroke"
        }
      }
      \tag #'Partitur {
        c-\markup {
          \postscript #"1 -4 moveto 2.6 0.8 rlineto stroke"
        }
      }
      e f, fis d'
      c g a cis d g, c e, h' fis a d, g c, e d
    }
    \\
    {
      d'16 a^( g)
      \tag #'Part {
        \once\override Fingering.extra-offset = #'(-1.1 . -2.5)
        c,^2_\4^(-\markup {
          \postscript #"0.7 6.1 moveto 1.8 0.4 rlineto stroke"
        }
      }
      \tag #'Partitur {
        \once\override Fingering.extra-offset = #'(-1.1 . -2.5)
        c^2_\4^(-\markup {
          \postscript #"0.7 6.1 moveto 2.8 0.4 rlineto stroke"
        }
      }
      d8) g <fis d'> <e c'> <d h'> <dis a'> <c h'> <d a'> <c e'> <h fis'>
      <a c'> <g a'> <fis d''> <a c'> <e h''> <c a''> <d g'> <a' e'>
    }
  >>
  \repeat unfold 2 {
    g,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
  r16 cis,^"II" a' fis d' a^"V" e' d a' fis^"X" d' a e' h fis' e\prall
  a,\2 g\3 d' g,
  <<
    {
      \override TextScript.font-size = -2
      fis16 h, cis' fis,
      \shape #'((-0.5 . -3.9) (-0.5 . -4) (-0.3 . -4) (-0.5 . -4.4)) Slur
      \tag #'Part {
        e(-\markup {
          \postscript #"0.3 -1.8 moveto 1.8 -0.4 rlineto stroke"
        }
      }
      \tag #'Partitur {
        e(-\markup {
          \postscript #"0.3 -1.8 moveto 2.2 -0.4 rlineto stroke"
        }
      }
      d) a'^"V" e
    }
    \\
    {
      s16
      \tag #'Part {
        h4(-\markup {
          \postscript #"1.5 3.6 moveto 7.4 -0.3 rlineto stroke"
        }
      }
      \tag #'Partitur {
        h4(-\markup {
          \postscript #"1.5 3.6 moveto 8.2 -0.3 rlineto stroke"
        }
      }
      a8) s16
    }
  >>
  c? g-\markup {
    \postscript #"0.8 0.8 moveto 2.2 1 rlineto stroke"
  } h8-\shape #'((-0.5 . -0.5) (-0.5 . -0.6) (0.5 . -0.6) (0.5 . -0.5))~
  \stemUp
  h
  \stemNeutral
  <a a'>\noBeam <h h'>( <a a'>) <e e'> <fis fis'> <d d'>
  <<
    {
      \override TextScript.font-size = -2
      <e_~ e'~>^"V"  q
    }
    \\
    {
      e16[ g
      %\once \override NoteColumn.force-hshift = #1.7
      cis a']
    }
  >>
  <<
    {
      gis8[ s16 g8]
    }
    \\
    {
      r16 c,8. d16 ais
    }
    \\
    {
      \voiceTwo
      <fis gis'>8[ <f e'>]
    }
  >>
  fis16 h g ais
}