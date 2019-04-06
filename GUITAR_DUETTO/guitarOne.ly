\version "2.19.15"

\language "deutsch"

\include "guitarScript.ly"
\include "global.ly"

guitarOne =
\relative{
  \global
  \override Staff.TimeSignature.stencil = ##f
  \override TextScript.font-size = -2
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  \override StrokeFinger.staff-padding = #'()
  \time 8/4
  <d'' h'>4 <h a'>8 <<
    {
      \override TextScript.font-size = -2
      \once\override TextScript.extra-offset = #'(-0.3 . -1.5)
      h'8-"V"[( a])
    }
    \\
    {
      c,4
    }
  >>
  <g e'>8 <a fis'>
  \once\override TextScript.extra-offset = #'(-0.5 . 0)
  <e d'>^"VII"
  <<
    {
      <fis a e'-0>4
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \once \override NoteColumn.force-hshift = #1.7
      g4-0
    }
  >>
  r2.
  \time 6/4
  <h' d>4<a c>8
  <<
    {
      d8[( c])
    }
    \\
    {
      e,4
    }
  >>
  <d g>8 <c a'><h h'>
  \once \override StringNumber.extra-offset = #'(0.5 . 2.8)
  <a_\5 e''>4 r
  \tag #'Part {
    \break
  }
  \time 5/4
  \once \override StringNumber.extra-offset = #'(-0.5 . -2.3)
  <g, g''\2>8[( a'
  \once\override Fingering.extra-offset = #'(0 . -4)
  g-0])<e a'\2>[( c'
  \once\override Fingering.extra-offset = #'(0 . 3.3)
  g_0])
  \stemUp
  \set stringNumberOrientations = #'(left)
  \once\override Fingering.extra-offset = #'(-0.2 . 3)
  <a,_0 e''\4 c'\2>(
  \unset stringNumberOrientations
  \once\override Fingering.extra-offset = #'(-0.2 . -6)
  g'-0)
  \once \override StringNumber.extra-offset = #'(-0.5 . -3.3)
  a\5( h)
  \stemNeutral
  \time 4/4
  d4\4 c,_\6 h a g8[( d' g]) a,[( d a'])(g) e(
  \tag #'Part {
    \break
  }
  d[)( a' d])
  \once \override StringNumber.extra-offset = #'(-0.5 . -4.5)
  h,\6[( e h'])
  \stemDown a,
  \set stringNumberOrientations = #'(left)
  \override StringNumber.font-size = #'-7
  <e''\harmonic\5 a\harmonic\4> \stemNeutral
  \revert StringNumber.font-size
  \unset stringNumberOrientations
  g,,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])( a) g\5
  e\5[( h'^"IV" fis]) d\5[\(( a'^"II" e])( fis) d, a'\) d_0 a'_3-\markup {
    \postscript #"1 2.3 moveto 2.5 1.2 rlineto stroke"
  }( d)
  \once\override Fingering.extra-offset = #'(0 . -4.8)
  e,-3^"V"( g c) e, d(
  \once\override Fingering.extra-offset = #'(0 . -3.5)
  a'-3) g_0 \appoggiatura a-\markup {
    \postscript #"0.2 1.5 moveto 1.5 -1.2 rlineto stroke"
  }
  \once\override Fingering.extra-offset = #'(-2 . -3.5)
  fis-3 e,( h' fis' g)\acciaccatura fis-\markup {
    \postscript #"0.5 0.4 moveto 2.3 1 rlineto stroke"
  }
  \once \override StringNumber.extra-offset = #'(-2 . -2)
  a\4\noBeam
  \acciaccatura fis'-\markup {
    \postscript #"0.5 3.9 moveto 2.3 1 rlineto stroke"
  }
  \once \override StringNumber.extra-offset = #'(-2.8 . -1)
  a\2 <e g><a, fis'>
  <<
    {
      \override StringNumber.staff-padding = #'()
      \once \override StringNumber.extra-offset = #'(-0.5 . -4.2)
      \override StringNumber.font-size = #'-7
      e'8\3 a\harmonic_\4 h\harmonic_\2 g\harmonic_\3
      \revert StringNumber.font-size
    }
    \\
    {
      <d,, a'>4 s
    }
  >>
  \tag #'Part {
    \break
  }
  a''8_\5 
  \once\override StringNumber.font-size = #'-7
  d\harmonic _\4 g,_0
  \once\override Fingering.extra-offset = #'(0 . -3.5)
  h~-0 <h c\4> d\3 g\2 e-0
  <<
    {
      \once \override StringNumber.extra-offset = #'(-0.5 . -2.8)
      \stemDown g,4\5 \stemNeutral fis e d c h a <d, a'> s4
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \stemUp g'16^( d_0 g_0 a')\stemDown fis,( d g c') e,,( d g fis') d,( d g g')
      c,,( d g e') h,( d g d') a,( d g cis)
      \hideNotes d,,16(\unHideNotes
      e'^1[ g d'^3])~
      \tag #'Part {
        d8[-\markup {
          \postscript #"1.4 4 moveto 1.9 1 rlineto stroke"
        }
      }
      \tag #'Partitur {
        d8[-\markup {
          \postscript #"1.5 4 moveto 4.2 1.2 rlineto stroke"
        }
      }
      a'\2]
    }
    \\
    {
      s8. \stemDown
      \once \override StringNumber.extra-offset = #'(0.7 . -3.2)
      a4\2 \stemUp c fis, g e d cis \hide Flag d16 fis4^2
    }
  >>
  e'8\harmonic fis\harmonic[ e\harmonic] h\harmonic[ 
  \override StringNumber.font-size = #'-7
  cis\harmonic\5 a\harmonic\4]
  \revert StringNumber.font-size
  <<
    {
      \override TextScript.font-size = -2
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      \once \override StringNumber.extra-offset = #'(-0.5 . -2.5)
      fis4\2 e8\noBeam fis[
      \once \override Fingering.extra-offset = #'(0 . -2.5)
      e-0]
      \once \override Fingering.extra-offset = #'(-0.2 . -4.3)
      h-0
      \once \override StringNumber.extra-offset = #'(-0.5 . -3.8)
      c!\4
      \once \override Fingering.extra-offset = #'(-0.2 . -5.2)
      g-0 a4-"VII" fis'16_\2 h,_\3( g_0)
      \tag #'Part {
        e_(-\markup {
          \postscript #"0.6 -6.8 moveto 2 0.5 rlineto stroke"
        }
      }
      \tag #'Partitur {
        e_(-\markup {
          \postscript #"0.7 -6.8 moveto 2 0.3 rlineto stroke"
        }
      }
      fis) a a'
      \tag #'Part {
        a,_(-\markup {
          \postscript #"0.6 -7.7 moveto 2 0.5 rlineto stroke"
        }
      }
      \tag #'Partitur {
        a_(-\markup {
          \postscript #"0.6 -7.7 moveto 1.8 0.6 rlineto stroke"
        }
      }
      h) g' c, g
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      gis16( a) g^0 a fis g^0
      \once \override StringNumber.extra-offset = #'(-0.5 . 0)
      a_\4
      \textSpannerDown
      \stringNumSpan "3"
      \tag #'Part {
        \once\override TextSpanner.extra-offset = #'(0 . 0.6)
      }
      \tag #'Partitur {
        \once\override TextSpanner.extra-offset = #'(0 . 0.5)
      }
      h\startTextSpan cis( d)
      \once \override NoteColumn.force-hshift = #1.3
      e^( fis)
      \once \override NoteColumn.force-hshift = #1.3
      g\stopTextSpan
      \stringNumSpan "2"
      a\startTextSpan
      \once \override NoteColumn.force-hshift = #1.3
      h\stopTextSpan c!^2_\1
      \once \override NoteColumn.force-hshift = #1.3
      d a d,^( e) s8 g,4 s8 h c
    }
  >>
  \repeat unfold 4 {
    g,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
  \tag #'Part {
    \break
  }
  \stemUp
  \acciaccatura e,-\markup {
    \postscript #"0.7 0.3 moveto 2 0.8 rlineto stroke"
  }
  \once \override StringNumber.extra-offset = #'(-2.8 . 0.3)
  g4_\5
  <f f'>8<g g'>[(<f f'>]) \stemNeutral<c c'><d d'><b b'>
  <<
    {
      \shape #'((0 . -0.7) (0 . -0.5) (0 . -1) (0 . 3)) Slur
      c'16_( d, b' f')
    }
    \\
    {
      <c, c'>4
    }
  >>
  <<
    {
      \set fingeringOrientations = #'(left)
      <g'-0 e'-0>8 es'
    }
    \\
    {
      s16 \stemUp a,8 s16
    }
    \\
    {
      \stemDown g16 a_\4 es'-3 g-4
    }
  >>
  \stemNeutral
  b,-\markup {
    \postscript #"0.7 4.5 moveto 1.9 0.5 rlineto stroke"
  }( c) d f
  <<
    {
      s8. a16
    }
    \\
    {
      g e-\markup {
        \postscript #"0.8 4.8 moveto 1.8 0.5 rlineto stroke"
      }^( f8)
    }
  >>
  <g b\2>4 <f a>8^"X"
  <<
    {
      b[( a])
    }
    \\
    {
      c,4
    }
  >>
  \once\override TextScript.extra-offset = #'(-1 . 0)
  <b es>8\noBeam^"VIII" <a f'><g g' b>
  \tag #'Part {
    \break
  }
  <f a' c>4<g g' b>8<a f' c'>
  <<
    {
      <b es b'>8 s
    }
    \\
    {
      b16( c) d^( es)
    }
  >>
  g16-\markup {
    \postscript #"1 5.8 moveto 2.3 0.8 rlineto stroke"
  }( b) d( es)
  <f, a f'> b c d <es, g es'> a b c
  <<
    {
      des8 s
    }
    \\
    {
      <f, des'>16 a^\2 as g
    }
  >>
  fis^\3 f e es
  \tag #'Part {
    \break
  }
  <<
    {
      <d b'>8 s
    }
    \\
    {
      d16 f
      \once \override Fingering.extra-offset = #'(-0.5 . -1)
      g^4-\markup {
        \postscript #"0.9 5.9 moveto 2.9 0.4 rlineto stroke"
      }^( as)
    }
  >>
  g( f) es
  \tag #'Part {
    d-\markup {
      \postscript #"0.7 4.3 moveto 2 0.7 rlineto stroke"
    }
  }
  \tag #'Partitur {
    d-\markup {
      \postscript #"0.8 4.3 moveto 2 0.8 rlineto stroke"
    }
  }
  f8 a,!16^\4( h) c d es f
  \once\override TextScript.extra-offset = #'(-1 . 0)
  <b, g'>4^"VIII" <g f'>8
  <<
    {
      g'[( f])
    }
    \\
    {
      as,4
    }
  >>
  <es c'>8\noBeam
  \once\override TextScript.extra-offset = #'(-0.8 . 0)
  <f d'>^"III" <c b'>
  <b c'>[( f'
  \once\override Fingering.extra-offset = #'(0 . -3)
  g-0])<c, es'>[( fis
  \once\override Fingering.extra-offset = #'(0 . -4)
  g-0])
  \stemUp
  \once \override StringNumber.extra-offset = #'(-0.5 . 0.3)
  <d_\5 a' g'>(
  \once \override StringNumber.extra-offset = #'(-3.7 . -1)
  \once \override Fingering.extra-offset = #'(0 . -7.5)
  g-0\2)\stemNeutral
  \tag #'Part {
    \break
  }
  \time 4/4
  \repeat unfold 3 {
    g,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
  <<
    {
      d'8[( g, d])
      \shape #'((0 . 0.3) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
      d'[(\( c) fis,]\)
    }
    \\
    {
      h,4. h8( a4)
    }
  >>
  <e' h'>8 <c g'>~ q <d a'>4 <e' c>8[ <h d> <e, g>] <g h> <d fis>
  <h' d> <a c>4 <d, fis>8[ <fis a>] <c e>4 <h e'>8[
  <fis' h> <cis a'>] <ais d'> r16 g''( fis) e d h a( g) r8
  \repeat unfold 2 {
    g,,8[( d' g]) a,[( d a'])(g) e( d[)( a' d]) h,[( e h'])
    \stemDown a, <e''\harmonic a\harmonic> \stemNeutral
  }
  <gis eis'>4<eis dis'>8
  <<
    {
      eis'[( dis])
    }
    \\
    {
      fis,4
    }
  >>
  <cis ais'>8\noBeam
  <dis h'>^\markup \fontsize #-3 {\parenthesize \sharp}<ais gis'>
  <<
    {
      \override Fingering.staff-padding = #'()
      \set fingeringOrientations = #'(down left up)
      <his ais'>4
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \once \override NoteColumn.force-hshift = #1.5
      cis4
    }
  >>
}