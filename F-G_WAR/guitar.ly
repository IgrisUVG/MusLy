\version "2.19.15"

\language "deutsch"

\include "scripts.ly"
\include "footnote.ly"

guitarMusic = \relative {
  \clef treble
  \key e \major
  \time 2/4
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lustig"
  %\override Staff.TimeSignature #'stencil = ##f
  \override Fingering.staff-padding = #'()
  \override Score.VoltaBracketSpanner.Y-offset = 7
  \repeat volta 2 {
    e8 r <gis' h e> r h, r <fis' h dis> r
    dis r <h' fis' h> r e, r <h' e gis> r
    <gis, h' e> r <cis e' a> <dis h' fis'> <e h' gis'> r <cis gis' e'> r
  }
  \alternative {
    {
      <a cis' e> r
      \set Score.repeatCommands = #'((volta #f))
      <h fis' dis'> r <e h' e> r <a, cis' e> r
    }
    {
      <a cis' e> r \noBreak
    }
  }
  <h fis' dis'> r <cis gis' cis> r <h dis' fis>4
  <e h' e>8 r r <h e' gis> <a cis' e> r <h dis' fis>4
  <e h' e>8 r <cis cis' gis'> r <a cis' e> r <h dis' fis>4
  <e h' e>8 r <cis cis' gis'> r <a cis' a'> r <h dis' a'> r
  <cis e' gis> r r4
  <<
    {
      \stringNumSpan "2"
      \textSpannerUp
      \once\override TextSpanner.extra-offset = #'(0 . -0.5)
      \once\override TextSpanner #'(bound-details right padding) = #2
      h'8\startTextSpan <gis, e' h' e>_- r s
      h''16_( a) gis
      \stringNumSpan "3"
      \once\override TextSpanner.extra-offset = #'(0.5 . 0)
      \once\override TextSpanner #'(bound-details right padding) = #2
      fis\stopTextSpan\startTextSpan e_( dis)
      \stringNumSpan "4"
      \once\override TextSpanner.extra-offset = #'(0.5 . 0.5)
      cis\stopTextSpan\startTextSpan c\stopTextSpan
    }
    \\
    {
      s4. <cis, a' e' a>8
      \once \override TextScript.extra-offset = #'(-0.5 . 6)
      h4-\markup{\teeny VII} \FO #'0.2 #'0.2 a-0
    }
  >>
  h'8 <gis, e' h' e>-- r <cis a' e' a>
  <<
    {
      h''16_( a) gis fis e_( dis) cis c
    }
    \\
    {
      h,4                      a
    }
  >>
  h'8 <cis, e'> r <h a' e' a>^\markup{\teeny V}
  r <h gis' e' h'>^\markup{\teeny V}
  \once \override TextScript.extra-offset = #'(-0.5 . -1)
  r <h fis' dis' fis>^\markup{\teeny II}
  <<
    {
      \FO #'1.2 #'-4.5 <gis e'-1 h' e>8
    }
    \\
    {
      \FO #'-1.2 #'3.5 gis16[-4 a]
    }
  >>
  \FO #'0 #'-3.2 h16(-2 cis) dis e fis gis a h cis dis e(\2 fis) gis a
  \mark \markup {\box 1}
  \repeat volta 2 {
    <e,, gis' h'>8 r <e' h' gis'> r <h dis' fis>4 r8 <fis' e' cis'>
    <dis fis' h> r <h fis'' dis'> r <e h' gis'>4 r8 <h a' fis'>
    <gis h' e> r <cis e' a> <dis h' fis'> <e h' gis'> r <cis gis' e'> r
  }
  \alternative{
    {
      <a cis' e> r
      \set Score.repeatCommands = #'((volta #f))
      <h fis' dis'> r <e h' e> r <a, cis' a'> r
      \tag #'Part { \pageBreak }
      \tag #'Partitur { \break }
    }
    {
      <a cis' e> r \noBreak
    }
  }
  <h fis' dis'> r <cis gis' cis> r h''8.( a16
  <e, h' gis'>8) r <gis, e' h'> r <a cis' e> r
  <<
    {
      \once\override Slur.positions = #'(0 . 1)
      \shape #'((0 . 0) (0.8 . 0.5) (0 . 0) (0 . 0)) Slur
      h''8.( a16 \stemDown <e, h' gis'>8)
    }
    \\
    {
      <h fis' dis'>4 s8
    }
  >>
  r8 <gis cis' e> r <a cis' fis> r
  <<
    {
      \once\override Slur.positions = #'(0 . 1)
      \shape #'((0 . 0) (0.8 . 0.5) (0 . 0) (0 . 0)) Slur
      h''8.( a16 \stemDown <e, h' gis'>8)
    }
    \\
    {
      <h fis' dis'>4 s8
    }
  >>
  r8 <gis e' h'> r <a e' cis'> r <h fis' dis'> r
  <cis gis' e'> r
  <<
    {
      \once\override Slur.positions = #'(0 . 1)
      \once\override StringNumber.extra-offset = #'(-0.8 . -3.5)
      h'8.(\5 a16 gis8) s e s fis s
      \once\override Slur.positions = #'(0 . 1)
      \once \override NoteColumn.force-hshift = #.3
      \once\override Beam.positions = #'(3.5 . 3)
      \once\override StringNumber.extra-offset = #'(-1.3 . -6)
      h8.(\2 a16 gis8) s
      \once \override NoteColumn.force-hshift = #.3
      h s e, s
      \once\override Slur.positions = #'(0 . 1)
      \once \override NoteColumn.force-hshift = #.3
      \once\override Beam.positions = #'(3.5 . 3)
      h'8.( a16 gis8) s
      \once \override NoteColumn.force-hshift = #.3
      \set stringNumberOrientations = #'(left)
      h\3 s dis, s
      \override NoteColumn.force-hshift = #.3
      fis s
      \once\override Beam.positions = #'(3 . 2.7)
      gis16_(
      \revert NoteColumn.force-hshift
      a) h e,
    }
    \\
    {
      \voiceOne
      fis''8 s h, s a s
      \once\override StringNumber.extra-offset = #'(-0.6 . -3)
      gis8.(\1 fis16)
      e8 s h' s a s
      \once \override TextScript.extra-offset = #'(-0.5 . -2)
      gis8.(^\markup{\teeny II} fis16)
      e8 s s4
      \set stringNumberOrientations = #'(left)
      \once\override StringNumber.extra-offset = #'(0.3 . 0.5)
      e8\2 s fis s dis s e
    }
    \\
    {
      \voiceTwo
      dis,8 r e, r
      \once\override StringNumber.extra-offset = #'(1 . 2)
      cis'_\6 r a r gis r a r dis r cis r h r e r
      \once\override StringNumber.extra-offset = #'(-1.7 . 4.5)
      a,_\6 r gis r h r
      e,4
    }
  >>
  <<
    {
      \unset stringNumberOrientations
      \once\override StringNumber.extra-offset = #'(-0.5 . -3.5)
      fis'16(\4 gis) a dis, e( fis) gis a
    }
    \\
    {
      a,8.
      \once\override StringNumber.extra-offset = #'(1 . 3.5)
      h16_\6 cis8 s
    }
  >>
  h'16 cis dis e
  \bar "||"
  \break
  \mark \markup {\box 2}
  %\key b \major
  \tag #'Partitur {
    \newSpacingSection
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
  <<
    {
      \once\override StringNumber.extra-offset = #'(-0.6 . -3.5)
      f8\2
      \once\override Fingering.extra-offset = #'(0 . -3)
      b-3 r d-4 d_(
      \once\override Fingering.extra-offset = #'(0 . -2.5)
      c-2) r
      \once\override StringNumber.extra-offset = #'(-0.6 . -3)
      g\2 f c' r es es_( d) s es
      f b, es16_( d) c b d8 f,
      \once \override TextScript.extra-offset = #'(-0.5 . 0)
      b16_(^\markup{\teeny VIII} a) g
      \once\override Fingering.extra-offset = #'(0 . -3.2)
      f-4
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      g8-3
      \once\override Fingering.extra-offset = #'(0 . -2.8)
      b-4 a f'
    }
    \\
    {
      b,,,8 r <b' d> r f4-1
      %\once\override Slur.direction = #DOWN
      \once\override Slur.positions = #'(1 . -4)
      \stemUp
      \acciaccatura {\slashI es'16[ a, c,]}
      \stemDown
      f,8 r
      \once\override Fingering.extra-offset = #'(-1.2 . 3)
      a-0 r <c' es> r b,4
      %\once\override Slur.direction = #DOWN
      \shape #'((0.3 . 0.3) (0 . -0.3) (0.6 . -0.2) (1 . 0.2)) Slur
      \stemUp
      \acciaccatura {\slashIII b'16[ a' d]}
      \stemDown
      g8^. h,,\rest
      as4 g-0 fis? f
      \once\override Fingering.extra-offset = #'(0 . 2.3)
      es8-1
      \once\override Fingering.extra-offset = #'(0 . 3.2)
      c'-2 f, d'
    }
  >>
  <<
    {
      d'8. es16
    }
    \\
    {
      s8 <b, e?>
    }
    \\
    {
      \voiceTwo
      b,4
    }
  >>
  <<
    {
      b''8^\markup{\teeny VI}
      \once\override Fingering.extra-offset = #'(0 . -2.7)
      \tag #'Part {
        g-3-\markup {
          \postscript #"1.7 -3.9 moveto 3.2 -0.4 rlineto stroke"
        }
      }
      \tag #'Partitur {
        g-3-\markup {
          \postscript #"2.1 -3.8 moveto 9.5 -0.3 rlineto stroke"
        }
      }
    }
    \\
    {
      es,4
    }
  >>
  <<
    {
      \once\override Fingering.extra-offset = #'(0 . -3.5)
      \tag #'Part {
        f'8-3-\markup {
          \postscript #"-2 -4.2 moveto 2 -0.2 rlineto stroke"
        }
      }
      \tag #'Partitur {f8-3}
      b r d d_( c) r g-2 f c' r es es_( d) r es-4
      f
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      b,-2
      \once\override Fingering.extra-offset = #'(0 . -2.7)
      es16_(-4
      \once\override Fingering.extra-offset = #'(0 . -3)
      d)-2
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      c-1
      \once\override Fingering.extra-offset = #'(0 . -3.4)
      b-4
      \once\override Fingering.extra-offset = #'(0 . -2.3)
      d8-4
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      f,-3 b16_( a) g
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      f-3
      \once \override TextScript.extra-offset = #'(-0.5 . 0)
      g8^\markup{\teeny VIII}
      \once\override Fingering.extra-offset = #'(0 . -3)
      b-4
      \once\override Fingering.extra-offset = #'(0 . -2.6)
      c-3
      \once\override Fingering.extra-offset = #'(0 . -2.8)
      a-4
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \once\override Fingering.extra-offset = #'(0 . 5)
      b,,8-2 r \stemUp \acciaccatura <a' cis> \stemDown <b d> r f8 r16 a'^4
      \once\override Fingering.extra-offset = #'(.3 . -2.8)
      f^3 es^1
      \once\override Fingering.extra-offset = #'(.2 . 5.5)
      c-4 e,?^1 a,8 r \stemUp \acciaccatura <h' d> \stemDown <c es> r
      b,8 b'16\rest g'^3
      \once\override Fingering.extra-offset = #'(.3 . -2.8)
      f^4 d^1
      \once\override Fingering.extra-offset = #'(.2 . 4.3)
      b-1 fis?^2 d4-1
      \once\override Fingering.extra-offset = #'(0 . 6)
      cis'?8-3
      \once\override Fingering.extra-offset = #'(.2 . 5.5)
      g-3
      \once\override Fingering.extra-offset = #'(.2 . 5.4)
      fis-1
      \once\override Fingering.extra-offset = #'(.2 . 3.3)
      c'-2 h!4-2 b8
      \once\override Fingering.extra-offset = #'(.2 . 5.5)
      g-2
      \once\override Fingering.extra-offset = #'(.2 . 5.5)
      e-1
      \once\override Fingering.extra-offset = #'(.2 . 5.5)
      c-2
    }
  >>
%%%%%%%%%%%% Footnote A %%%%%%%%%%%%%%
  \tag #'Part {
    \override Score.FootnoteItem.annotation-line = ##f
    \footnote \markup "*" #'(0 . 4)
    \markup {
      *
      \null
      \score {
        \new Staff \with {
          \magnifyStaff #0.8
        } \footnotA
        \layout {
          indent = 0
        }
      }
    } Staff.BarLine
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      b''4^\markup{\teeny VIII}
    }
    \\
    {
      e,16\rest f^3 
      \once\override Fingering.extra-offset = #'(0 . 0.5)
      c^(^2^\markup {
        \postscript #"1.2 -0.5 moveto 1.8 -0.4 rlineto stroke"
      } b)^2
    }
    \\
    {
      \voiceTwo
      f4
    }
  >>
  \override Fingering.extra-offset = #'(0 . -3.3)
  a16-1_(g-4) f-1 es-4
  \revert Fingering.extra-offset
  <<
    {
      \once\override Fingering.extra-offset = #'(0 . -2.8)
      a'_(-3 g)
      \once\override Fingering.extra-offset = #'(0 . -3.3)
      f_(-3 es) <cis, cis'>16_( <d d'>) r8
      <h h'>16_( <c c'>) r8 <a a'>16_( <b b'>) r16 es''
      d8 f b, r g c
    }
    \\
    {
      \once\override Fingering.extra-offset = #'(.2 . .2)
      <d,,_2 b'>4 s8 f s f s f
      <b, f''> <fis'? d'> g, <f' cis'?> <fis,? b' es> r
    }
  >>
  <<
    {
      f'''8.( es16 d8) es
    }
    \\
    {
      e,8\rest <h a'> s4
    }
    \\
    {
      \voiceTwo
      f4 <b, f' c'>4
    }
  >>
  <<
    {
      \once\override Fingering.extra-offset = #'(0 . -2.2)
      f'''8-4
      \once\override Fingering.extra-offset = #'(0 . -3)
      b,-4 a b
      \once \override TextScript.extra-offset = #'(-0.5 . 0)
      c^\markup{\teeny VIII}
      \once\override Fingering.extra-offset = #'(0 . -2.7)
      a-3
    }
    \\
    {
      \once\override Fingering.extra-offset = #'(.2 . 4.5)
      g16-2
      \once\override Fingering.extra-offset = #'(.2 . 4.2)
      es-3
      \once\override Fingering.extra-offset = #'(.2 . 4)
      c-2
      \once\override Fingering.extra-offset = #'(0 . 5.7)
      g-1 <es b'>4
      \once\override Fingering.extra-offset = #'(1.5 . -1.3)
      <f g'-4>
    }
  >>
  <<
    {
      b'8-3 s
    }
    \\
    {
      \once\override Fingering.extra-offset = #'(.8 . -1)
      d,16^4 e?^1 fis?^( g)
    }
    \\
    {
      \voiceTwo
      \once\override Fingering.extra-offset = #'(1.2 . 3)
      \once \override NoteColumn.force-hshift = #0.3
      g,8-2 s
    }
  >>
  a'16-2 b c d
  \bar "||"
  \break
  \mark \markup {\box 3}
  \tag #'Partitur {
    \newSpacingSection
    \revert Score.SpacingSpanner.base-shortest-duration
  }
  <<
    {
      <h, gis' e'>8 r <e fis>
    }
    \\
    {
      e,,8 ais h
    }
  >>
  <<
    {

      s8 r16 dis_([^\markup{\teeny I} e) gis]
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      r8 s
      \once\override Fingering.extra-offset = #'(0 . -.2)
      e^3
    }
    \\
    {
      <c a'>8\glissando fis, s
    }
  >>
  <<
    {
      \override Fingering.staff-padding = #'()
      \override Slur.direction = #DOWN
      \once\override Slur.positions = #'(2.5 . 3.5)
      \acciaccatura e'8-\markup {
        \postscript #"0.5 -5.3 moveto 2.3 0.5 rlineto stroke"
      }
      fis16 gis_(^\markup{\teeny VI} a) cis
      \once\override Slur.positions = #'(2.5 . 3.5)
      \acciaccatura a8-\markup {
        \postscript #"0.5 -3.8 moveto 2.3 0.5 rlineto stroke"
      }
      \once\override Fingering.extra-offset = #'(-2.7 . 0)
      h16_4 cis_(^\markup{\teeny VI} dis) fis_2
      \once\override Slur.positions = #'(2.5 . 3.5)
      \acciaccatura dis8-\markup {
        \postscript #"0.5 -2.3 moveto 2.3 0.5 rlineto stroke"
      }
      e16 fis(^\markup{\teeny VII} gis) h
    }
    \\
    {
      s8
      \once\override Fingering.extra-offset = #'(0 . -.2)
      a,^3 s dis s
      \once\override Fingering.extra-offset = #'(0 . -.2)
      gis^4
    }
  >>
  <<
    {
      <h, gis' e'>8 r <e gis>
    }
    \\
    {
      e,,8 ais h
    }
  >>
  <<
    {

      s8 r16 eis_([_1 fis) h]_4
    }
    \\
    {
      r8 s fis^3
    }
    \\
    {
      <dis c'\4>8\glissando gis, s
    }
  >>
  <<
    {
      \override Slur.direction = #DOWN
      \once\override Slur.positions = #'(2.5 . 3.5)
      \acciaccatura fis'8-\markup {
        \postscript #"0.5 -4.8 moveto 2.3 0.5 rlineto stroke"
      }
      \once\override Fingering.extra-offset = #'(-2.7 . 0)
      gis16_3 his(_2 cis) dis_1
      \once\override Slur.positions = #'(2.5 . 3.5)
      \acciaccatura g,8-\markup {
        \postscript #"0.5 -4.3 moveto 2.3 0.5 rlineto stroke"
      }
      \once\override Fingering.extra-offset = #'(-2.7 . 0)
      a16_2 cis(_1 dis) gis_4
      \once\override Slur.positions = #'(2.5 . 3.5)
      \tag #'Part {
        \acciaccatura a,8-\markup {
          \postscript #"0.5 -7 moveto 3.2 0.9 rlineto stroke"
        }
        \once\override Fingering.extra-offset = #'(-3.3 . -.2)
        c16_2 e(_1 fis) a_3
      }
      \tag #'Partitur {
        \acciaccatura a,8-\markup {
          \postscript #"0.5 -3.8 moveto 3.2 0.8 rlineto stroke"
        }
        \once\override Fingering.extra-offset = #'(-3.6 . -.2)
        c16_2 e(_1 fis) a_3
      }
    }
    \\
    {
      s8
      \once\override Fingering.extra-offset = #'(0 . -.2)
      cis,^4 s dis^3 s
      \once\override Fingering.extra-offset = #'(0 . -.2)
      fis^4
    }
  >>
  <<
    {
      <e e'>8
    }
    \\
    {
      <a,, a'>8
    }
  >>
  \acciaccatura h''8 <a cis>
  <<
    {
      fis'
    }
    \\
    {
      <dis,, h'>
    }
  >>
  \acciaccatura a'' <fis h\2>
  <<
    {
      <h,,_\6 fis' gis'>
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.3
      \once\override Fingering.extra-offset = #'(1.2 . -1)
      e'^0
    }
  >>
  r
  <<
    {
      <a,, e' cis'>
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.6
      \once\override Fingering.extra-offset = #'(0.8 . -2)
      h'^0
    }
  >>
  r
  <fis, cis' gis'> r \acciaccatura h' <eis, ais cis> r
  \once\override StringNumber.extra-offset = #'(-0.6 . -2.8)
  <cis gis' e'?\2> r
  \tag #'Part {\set fingeringOrientations = #'(right down)}
  <h'-4 cis-1 fis-2\2> r eis,-3 r
  \once \override TextScript.extra-offset = #'(-0.5 . .5)
  <cis' gis' cis>^\markup{\teeny IX} r fis, r <cis' fis a> r
  <a, cis' fis> r <dis fis' h> <e h' gis'> <fis cis' a'> r <d a' fis'> r
  <h d' fis> r <cis gis' e'> r
  <<
    {
      \once \override StringNumber.extra-offset = #'(-0.6 . -2.8)
      cis'4\3
      \once \override StringNumber.extra-offset = #'(-0.6 . -3)
      h\3 as
    }
    \\
    {
      <d, a'>4 <a e'> <c f>
    }
  >>
  r8
  <<
    {
      \override NoteColumn.force-hshift = #-0.3
      \once\override StringNumber.extra-offset = #'(-0.6 . -2.8)
      g''\2 e!2^0
      \revert NoteColumn.force-hshift
      des4-4
    }
    \\
    {
      \voiceOne
      \override Fingering.staff-padding = #'()
      %\tweak Accidental.extra-offset #'(0.5 . 0)
      c8 b4 as-2
      \once\override Fingering.extra-offset = #'(0 . -.2)
      \once\override NoteColumn.force-hshift = #0.8
      f-1
    }
    \\
    {
      \voiceTwo
      <des as'>8 <as es'>4 h!-3 es-3
    }
  >>
  r8
  <<
    {
      \once\override StringNumber.extra-offset = #'(-0.6 . -2.8)
      fis'\2
    }
    \\
    {
      <c, g'>
    }
  >>
  <<
    {
      \once\override NoteColumn.force-hshift = #-0.3
      h''2 fis4
    }
    \\
    {
      \voiceOne
      e4 dis
      \once\override NoteColumn.force-hshift = #0.6
      h
    }
    \\
    {
      \voiceTwo
      <a, c'>4 <\tweak Accidental.extra-offset #'(2.5 . 0) cis! gis'?>
      <fis, h fis' cis'>
    }
  >>
  d''16( e) fis( gis)
  <<
    {
      \override Fingering.staff-padding = #'()
      \once\override Fingering.extra-offset = #'(-0.2 . -3)
      cis,^2( \tweak AccidentalPlacement.right-padding #0 d) e( fis)
      h,( cis_3) \tweak AccidentalPlacement.right-padding #0 dis( e_4)
      a,( h)
      \tag #'Part {
        cis(-\markup {
          \postscript #"0.5 -2.6 moveto 4.8 0.9 rlineto stroke"
        }
        \once\override StringNumber.extra-offset = #'(0.2 . -6.2)
        dis\2) \stemDown fis4
      }
      \tag #'Partitur {
        cis16(-\markup {
          \postscript #"0.5 -2.6 moveto 6.3 0.9 rlineto stroke"
        }
        \once\override StringNumber.extra-offset = #'(0.2 . -6.2)
        dis\2) \stemDown fis4
      }
      \stemNeutral
    }
    \\
    {
      r8 <a,, cis'> r <h fis'>^\markup{\teeny II} r <cis gis'>^\markup{\teeny IV}
      \stemUp
      \once\override Slur.positions = #'(0 . 1)
      \once\override StringNumber.extra-offset = #'(-0.6 . -2.8)
      \tag #'Partitur {
        \shape #'((0 . 0) (1 . 0) (0.5 . 0.5) (0 . 0)) Slur
      }
      h''8.\2^( a16
      \stemDown
      <e, h' gis'>8)
      )
    }
  >>
  <h'' e>8 <h,, a' fis'> <a'' h>\noBeam
  \tag #'Part {\set fingeringOrientations = #'(up right down)}
  <a,,-0 f'-2 h-3 e-4>
  <<
    {
      s8
      \once\override Slur.positions = #'(0 . 1)
      %\shape #'((0 . 0) (0.8 . 0.5) (0 . 0) (0 . 0)) Slur
      h''8.( a16 \stemDown
      \once \override TextScript.extra-offset = #'(-.5 . -.5)
      <
      \tweak AccidentalPlacement.right-padding #-1
      \tweak Accidental.extra-offset #'(1 . 0)
      eis,
      \tweak Accidental.extra-offset #'(-0.3 . 0)
      cis'!
      \tweak Accidental.extra-offset #'(-0.7 . 0)
      dis! gis
      >8)^\markup{\teeny VIII}
    }
    \\
    {
      s8 s d'
    }
    \\
    {
      fis,,!\glissando \stemDown<h e c'>4 s8
    }
  >>
  <cis'' eis>8
  \once \override TextScript.extra-offset = #'(0 . -1.6)
  \once\override StringNumber.extra-offset = #'(-0.6 . -2.8)
  <a,, h' e!\3>^\markup{\teeny IX}
  \tag #'Part {\set fingeringOrientations = #'(right)}
  <h''-4 dis-3>\noBeam
%%%%%%%%%%%% Footnote B %%%%%%%%%%%%%%
  \tag #'Part {
    %\override Score.FootnoteItem.annotation-line = ##f
    \footnote \markup "**" #'(0 . 4)
    \markup {
      **
      \score {
        \new Staff \with {
          \magnifyStaff #0.8
        } \footnotB
        \layout {
          indent = 0
        }
      }
    } Staff.BarLine
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Part {\set fingeringOrientations = #'(up right)}
  <cis,,_\6-2 ais'-1 fis'-4>
  <<
    {
      s8
      \once\override Slur.positions = #'(0 . 1)
      \tag #'Partitur {
        \shape #'((0 . 0) (1 . 0) (0.5 . 0.5) (0 . 0)) Slur
      }
      h''8.( a16
      \stemDown
      <e, h' gis'>8)<c' a'>
    }
    \\
    {
      s8 h\rest <c e>
    }
    \\
    {
      g,_3\glissando \stemDown dis'4
    }
  >>
  \set glissandoMap = #'((2 . 1))
  <gis dis' h'>8\glissando
  \set fingeringOrientations = #'(right)
  <g-0 e'>
  <<
    {
      dis' e fis8. h16
    }
    \\
    {
      g,8\rest
      \once\override StringNumber.extra-offset = #'(0.6 . -7)
      g\3 a4
    }
    \\
    {
      \voiceTwo
      c,4
      \once\override NoteColumn.force-hshift = #0.2
      h
    }
  >>
  <<
    {
      e''8\glissando
      \tag #'Part {
        gis-\markup {
          \postscript #"1.9 -3 moveto 2.8 -1.2 rlineto stroke"
        }
      }
      \tag #'Partitur {
        gis-\markup {
          \postscript #"1.9 -3 moveto 4 -1.3 rlineto stroke"
        }
      }
      c,\glissando e
    }
    \\
    {
      \set glissandoMap = #'((1 . 0))
      <fis,, cis' a'>\glissando
      \unset glissandoMap
      \tag #'Part {
        e'-\markup {
          \postscript #"1.5 5.3 moveto 3.2 -0.8 rlineto stroke"
        }
      }
      \tag #'Partitur {
        e-\markup {
          \postscript #"1.5 5.3 moveto 4.5 -0.8 rlineto stroke"
        }
      }
      b g
    }
    \\
    {
      \voiceTwo
      s8
      \once\override NoteColumn.force-hshift = #0.2
      h4 s8
    }
  >>
  \tag #'Part {
    \newSpacingSection
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
  }
  <<
    {
      h' s dis, s
      \bar "||" \break
      \mark \markup {\box 4}
      gis, a
    }
    \\
    {
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 3/2 8 {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        e'16\rest
        \once\override Slur.positions = #'(3.3 . 2.8)
        \tag #'Part {
          fis^(-\markup {
            \postscript #"0.8 5.4 moveto 2.3 -0.5 rlineto stroke"
          }
          e)
        }
        \tag #'Partitur {
          fis^(-\markup {
            \postscript #"0.8 5.4 moveto 2.8 -0.5 rlineto stroke"
          }
          e)
        }
        dis cis h a\rest
        \once\override Slur.positions = #'(1.4 . 0.8)
        \tag #'Part {
          h^(-\markup {
            \postscript #"0.9 5.3 moveto 2.3 -0.5 rlineto stroke"
          }
          a)
        }
        \tag #'Partitur {
          h^(-\markup {
            \postscript #"0.8 5.4 moveto 2.8 -0.5 rlineto stroke"
          }
          a)
        }
        gis fis
        \override Glissando.breakable = ##t
        \override Glissando.after-line-breaking = ##t
        e\glissando
        \tag #'Partitur {
          \newSpacingSection
          \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
        }
        %\override Score.RehearsalMark.extra-offset = #'(4 . 2)
        %\mark "Meno mosso"
        \once\override Beam.positions = #'(-10 . -4)
        h fis' h a cis^( d)
      }
    }
    \\
    {
      \voiceTwo
      gis,!8 s c, s
      \once\override NoteColumn.force-hshift = #0.2
      e, s
    }
  >>
  <<
    {
      \override Fingering.staff-padding = #'()
      e''8 dis fis gis fis e
      \once\override Beam.positions = #'(4.5 . 4.5)
      dis d
      \once\override Beam.positions = #'(4.5 . 3.5)
      cis a h h cis dis
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 3/2 8 {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        \once\override Beam.positions = #'(-2.2 . -2.2)
        e16 h
        \once\override StringNumber.extra-offset = #'(0 . -1.2)
        cis\3 dis h e
        \once\override StringNumber.extra-offset = #'(-0.5 . -0.3)
        fis\2 gis, e'^0 gis e\3 h' fis e^0 h'
        \once\override StringNumber.extra-offset = #'(-0.5 . -0.3)
        e,\3 h' fis dis e^0 fis d e a\2 cis, e h a e' cis^4
        \once\override Beam.positions = #'(-2.7 . -3.5)
        h e dis h fis' e\2 cis
        \once\override Fingering.extra-offset = #'(-1.2 . -1)
        e^0 fis dis e gis
      }
    }
    \\
    {
      \voiceTwo
      a,,8 gis
      \override NoteColumn.force-hshift = #0.2
      \once\override Beam.positions = #'(-7 . -7.5)
      cis a
      \revert NoteColumn.force-hshift
      cis h
      \once\override StringNumber.extra-offset = #'(0.5 . 1.8)
      e_\5 a,4 h8-2 fis
      \once\override NoteColumn.force-hshift = #0.2
      <e a fis'>
      \override NoteColumn.force-hshift = #0.2
      \once\override Beam.positions = #'(-7 . -6.5)
      b' f'
      \revert NoteColumn.force-hshift
    }
  >>
  <<
    {
      e'8
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 3/2 8 {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        cis16[
        \set strokeFingerOrientations = #'(up)
        \override StrokeFinger.add-stem-support = ##t
        \once\override StringNumber.extra-offset = #'(0 . -5.7)
        \override StrokeFinger.extra-offset = #'(0 . -2.2)
        cis'\1\RH #4
        \once\override StringNumber.extra-offset = #'(0 . -6.3)
        h\2\RH #3 \glissando]
        \revert StrokeFinger.extra-offset
        a\RH #2 \glissando
        \glissandoSkipOn
        \once\override Fingering.extra-offset = #'(0 . 0.2)
        e_0\RH #3 dis\RH #1
        \glissandoSkipOff
        fis e d
      }
      \once\override StringNumber.extra-offset = #'(-0.5 . -3.5)
      \once\override Beam.positions = #'(4 . 5)
      cis8\3 dis!
      \once\override StringNumber.extra-offset = #'(-0.5 . -3)
      \once\override Beam.positions = #'(5 . 3.5)
      fis\3 h, cis4 s8 cis h a a
      \once\override StringNumber.extra-offset = #'(-0.5 . -3)
      h\3
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 3/2 8 {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = #'(2 2 2 2)
        \once\override StringNumber.extra-offset = #'(-0.5 . -0.3)
        e16\3[ a gis]
      }
      s4.
      \tuplet 3/2 8 {
        cis,16 e^0 h dis e gis
        \once\override Beam.positions = #'(-1.7 . -2.5)
        fis e
        \once\override StringNumber.extra-offset = #'(0 . -0.6)
        dis\4 h e
        \once\override StringNumber.extra-offset = #'(0 . -0.7)
        dis\2 cis e a,^~ \stemUp a[ e' h^~] h[ e fis] \stemDown cis e dis
        \once\override Beam.positions = #'(-5.8 . -4.6)
        h fis' e a, e' dis
        \once\override Beam.positions = #'(-4.5 . -3.5)
        a e' cis h e h^0
      }
    }
    \\
    {
      \voiceTwo
      \override NoteColumn.force-hshift = #0.2
      \once\override Beam.positions = #'(-4 . -3.2)
      a8\glissando
      \revert NoteColumn.force-hshift
      \once\override StringNumber.extra-offset = #'(-0.5 . -1.3)
      cis\4
      \once\override Beam.positions = #'(-2 . -2.5)
      a' fis
      \override NoteColumn.force-hshift = #0.2
      \once\override Beam.positions = #'(-6 . -6.2)
      e,
      \once\override StringNumber.extra-offset = #'(-1.8 . -6.3)
      cis\6
      \revert NoteColumn.force-hshift
      a gis a <h a'> e,
      \override NoteColumn.force-hshift = #0.2
      e'
      \once\override Beam.positions = #'(-7 . -6.2)
      a, cis
      \once\override Beam.positions = #'(-6 . -5.2)
      d fis
      \revert NoteColumn.force-hshift
    }
  >>
  \break
  %\override Score.RehearsalMark.extra-offset = #'(1 . 2)
  %\mark "Tempo I"
  \tag #'Part {
    \newSpacingSection
    \revert Score.SpacingSpanner.base-shortest-duration
  }
  <
  \tweak AccidentalPlacement.right-padding #-1
  \tweak Accidental.extra-offset #'(0.8 . 0)
  as, es' \parenthesize as des
  \tweak Accidental.extra-offset #'(-0.7 . 0)
  es
  \tweak Accidental.extra-offset #'(1 . 0)
  c'
  >4
  <<
    {
      <b' g' es'>8 <c as'>
    }
    \\
    {
      c,4
    }
  >>
  <es as des b'>4
  <<
    {
      es''8 <es,_~ g> \stemDown <des, es' as>4
    }
    \\
    {
      <g b>4 s
    }
  >>
  <<
    {
      g'8 <f, c' b'>
    }
    \\
    {
      <c f'>4
    }
  >>
  <as b' es>8 <des es' as> <es b' f'>4
  <as c es b' es>8 <c, b' es as> r <es des' c'> r <h dis''> r <fis' h ais'>
  r <c g' e' g><a c' f c'><h fis' dis' a'><e, gis' e' h'> r r
  <<
    {
      <a' e' cis'>8 <fis cis' fis>4
    }
    \\
    {
      a,8~ a4
    }
  >>
  r8
  <<
    {
      s8 s <e'' c'>
    }
    \\
    {
      s <g, c g'>4
    }
    \\
    {
      \voiceTwo
      \stemUp c,8~ \stemDown c4
    }
  >>
  r4 gis8-.
  <<
    {
      r8 <e' h' cis? a'>4
    }
    \\
    {
      \dotsUp a,4.
    }
  >>
  <<
    {
      s4 <c' g'>8
    }
    \\
    {
      h8\rest <fis e'>4
    }
    \\
    {
      \voiceTwo
      c4 c8\rest
    }
  >>
  g-. fis-.
  <<
    {
      h'8\rest
      \once \override Stem.length = #9
      %\displaceHeads #'(0.9 -0.001)
      \once \override Accidental.extra-offset = #'(1 . 0)
      \once\override StringNumber.extra-offset = #'(0 . 0.9)
      <g_\4 b>4
    }
    \\
    {
      \voiceThree
      s8
      \once \override NoteHead.X-offset = #1
      \once \override Stem.rotation = #'(40 0 0)
      \once \override Stem.extra-offset = #'(-0.2 . -0.5)
      \once \override Stem.length = #7
      \hide Flag
      %\once \override Flag.stencil = ##f
      \once \override Accidental.extra-offset = #'(2.6 . 0)
      h!
    }
    \\
    {
      \voiceTwo
      es,4 d8-.
    }
  >>
  e,-.
  <<
    {
      s4 <as' c'>8
    }
    \\
    {
      h8\rest <g f'>4
    }
    \\
    {
      \voiceTwo
      \once\override StringNumber.extra-offset = #'(0.5 . 2.3)
      b,4_\6 r8
    }
  >>
  cis? f,-> h a->
  \tag #'Part {
    \break
  }
  r4 <gis e' cis' fis h>
  <<
    {
      <d' g>8
      \set glissandoMap = #'((1 . 0))
      <g d'>4\glissando <g' a>8
    }
    \\
    {
      \dotsUp <a,, es'>4. r8
    }
  >>
  <<
    {
      r8 <d' es e'!>4 r8
    }
    \\
    {
      \dotsUp c,4. a8-.
    }
  >>
  <<
    {
      s4 <f'' b>
    }
    \\
    {
      e8\rest <h cis>4.
    }
    \\
    {
      \voiceTwo
      es,2
    }
  >>
  <<
    {
      s4 <gis'! d'>
    }
    \\
    {
      e8\rest \dotsUp <g, b>4.
    }
    \\
    {
      \voiceTwo
      fis2
    }
  >>
  <<
    {
      s4 <dis' a'>
    }
    \\
    {
      c8\rest \dotsUp <g d'>4.
    }
    \\
    {
      \voiceTwo
      gis,?4. c8
    }
  >>
  <<
    {
      s4 <cis h' e>
    }
    \\
    {
      c'8\rest <d, b'>4.
    }
    \\
    {
      \voiceTwo
      fis,2
    }
  >>
  <<
    {
      \omit TupletNumber
      \omit TupletBracket
      r4 \times 2/3 {f''16_(\2 e-0 f} c8)\3
    }
    \\
    {
      \once\override StringNumber.extra-offset = #'(0 . -4.3)
      \override Glissando.breakable = ##t
      \override Glissando.after-line-breaking = ##t
      <g, d'\5>2\arpeggio\glissando
    }
  >>
  \bar "||"
  \break
  \mark \markup {\box 5}
  <<
    {
      c32 gis'' gis gis~
      \set doubleSlurs = ##t
      \set glissandoMap = #'((0 . 0) (1 . 1))
      <e gis>8\glissando( <gis c>32) c c c~ <d, c'>8
      g,32 e'' e e~ <h e>8\glissando( <g c>32)
      \unset doubleSlurs
      \unset glissandoMap
      c c c~ <a, c'>8
    }
    \\
    {
      c,4 gis'' g, g'
    }
  >>
  \tag #'Part {
    \break
  }
  <<
    {
      r8 fis32 d' d d~ <e, d'>8 s
    }
    \\
    {
      s8 fis4 s8
    }
    \\
    {
      \voiceTwo
      h,,4. gis'?8
    }
  >>
  <<
    {
      c,32 f'' f f~ <g, f'>8 a32 d d d~ <c, d'>8
    }
    \\
    {
      s8 g'4
    }
    \\
    {
      \voiceTwo
      c,,4 a''
    }
  >>
}