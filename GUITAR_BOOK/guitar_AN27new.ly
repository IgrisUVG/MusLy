\version "2.18.0"

\language "deutsch"

%\include "guitarScript.ly"

guitarANnew = \relative {
  \clef "treble_8"
  \key d
  \major
  \time 12/16
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override TextScript.staff-padding = #8
  \textLengthOn
  \override StringNumber.staff-padding = #'()
  \override StrokeFinger.staff-padding = #'()
  <<
    {
      \once\override StringNumber.extra-offset = #'(-0.4 . -4.4)
      <
      \tweak #'duration-log #1 d,
      \tweak #'duration-log #1 a'
      d\4
      >16[( fis' a])-\markup {
        \postscript #"0.6 -4.8 moveto 2.6 0.5 rlineto stroke"
      }
      <<
        {
          s
          \once\override StringNumber.extra-offset = #'(-0.4 . -3.2)
          d\3[( e8]) a-\markup {
            \postscript #"2.2 -0.7 moveto 5 0.4 rlineto stroke"
          }
          h8.
        }
        \\
        {
          h,8[ e16]  fis\2[g( fis])-\markup {
            \postscript #"1.6 4.8 moveto 2.6 0.5 rlineto stroke"
          }
          a8.
        }
      >>
    }
    \\
    %\stemUp
    {
      \stemDown
      \once \override Stem.transparent = ##t
      <d,,, a'>2
    }
  >>
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \slurDown \acciaccatura cis'''8 d8.^\markup{\fret-diagram #"6-x;5-10;4-x;3-9;2-11;1-10;"}[
      e^\markup{\fret-diagram #"6-x;5-10;4-x;3-11;2-10;1-12;"}]
      fis
    }
    \\
    {
      d16 < g,, e' b'> q e'' <g,, fis' a> q
      \sfod \FO #'0.2 #'4.2 \override Beam.positions = #'(-2 . -2)
      \once\override StringNumber.extra-offset = #'(0 . 1.7)
      <g'-1_\3>32 \sfod \FO #'0.2 #'4.7 <a-3> <c^2_\2>^(<h^1>) <a^3_\3> <g^1>
    }
  >>
  \stemUp \spad <fis_3> e_1 d_\4^4 h-1 a_\5^4 fis^1
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      e16 <h' fis' cis'> q fis <a g' h> q g <cis f b> q a <h e gis> q
    }\\
    {
      e,8.^\markup{\fret-diagram #"6-x;5-7;4-9;3-x;2-7;1-9;"}
      [ fis^\markup{\fret-diagram #"6-x;5-9;4-7;3-x;2-8;1-7;"}
      ] g^\markup{\fret-diagram #"6-x;5-x;4-5;3-5;2-6;1-6;"}
      [ a^\markup{\fret-diagram #"6-x;5-x;4-7;3-4;2-5;1-4;"}
      ]
    }
  >>
  <<
    {
      \FO #'-0.1 #'-2
      g'!8.-4[
      \FO #'-0.1 #'-2.3
      fis-3] e4.-0
    }
    \\
    {
      \override StringNumber.add-stem-support = ##t
      d,16-0[ h'-0 a_\3] dis,-1[ h' a] e-2[ h' a]
      \times 6/9 {
        \spad \override Beam #'positions = #'(-5 . -1)
        <gis^1>32^( <a^2>) <h^0>^( <cis^1>) <e^4> <fis^1>^( <g^2>)
        \stemUp \slurDown \acciaccatura a8 \stemDown <h^4>16
      }
    }
  >>
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      cis16^\markup{\fret-diagram #"6-x;5-o;4-x;3-o;2-7;1-9;"}
      [<g, fis'> q] h'8.^\markup{\fret-diagram #"6-x;5-x;4-4;3-6;2-x;1-7;"}
      [a^\markup{\fret-diagram #"6-x;5-x;4-x;3-o;2-o;1-5;"}
      fis]
    }
    \\
    {
      \override Beam #'positions = #'(-4 . -5)
      s8. b16 <fis, cis'> q
      \override Beam #'positions = #'(-3.5 . -4.5)
      a' <g, h> q
      \override Beam #'positions = #'(-3 . -4)
      fis' <a, d> q
    }
    {
      \FO #'0.1 #'0
      <a,-0 cis''-4>4.
    }
  >>
  <<
    {
      \mergeDifferentlyHeadedOn
      g''8 s4 a8[ g] b cis[ a] g
    }\\
    {
      \override Beam #'positions = #'(-4 . -4.5)
      g16 a, d
      \override Beam #'positions = #'(-4 . -4)
      b fis' h, a' c, g'
      \override Beam #'positions = #'(-4 . -3.5)
      cis, b' d,\break
      \override Beam #'positions = #'(-3.5 . -3)
      cis' dis, a'
      \override Beam #'positions = #'(-3 . -2.5)
      e g f
    }
  >>
  \stemDown
  <d,, a' d'^3 fis^2 d'^1>8.^\markup{\fret-diagram #"6-o;5-o;4-12;3-11;2-x;1-10;"}
  <cis''^2 e'^4>16 <g^1 h'^3><c^2 d'^4>
  e'32_3\1 d_1 c_2\2 g_3\3 f_2( e_1) <c,-3_\6 g'-4 d'-1>4.^\markup{\fret-diagram #"6-10;5-10;4-7;3-x;2-x;1-x;"}
  \stemUp e8.-4
  <<
    {
      \mergeDifferentlyHeadedOn
      d,16 fis'' a, e, fis'' a, d,, fis'' a,
    }
    \\
    {
      d,,8.[ e d]
    }
  >>
  g64_2 a_4 d-2_\5 e-4 fis-1_\4 a-4 h-1_\3 d-4 e-2_\2 fis-4 a-2_\1 h-4
  <g,, d' g d' g c>4.^\markup{\fret-diagram #"6-5;5-5;4-5;3-7;2-8;1-8;"}
  <f c' f c' d a'>^\markup{\fret-diagram #"6-3;5-3;4-3;3-5;2-3;1-5;"}
  <e h' e a cis! g'>2.^\markup{\fret-diagram #"6-2;5-2;4-2;3-2;2-2;1-3;"}
  \bar ":|."
  <d a' d a' d fis>4.<dis h' dis a' c fis> \bar "|."\break
  <<
    \shiftOff
    {
      \override NoteColumn #'force-hshift = #0.2
      e''4.
    }
    \\%неполадка расположения
    \shiftOn
    {
      \stemUp
      <h, e g h>16<h e g cis><h e g h><h e g cis><h e g h><h e g cis>
    }
    \\
    {
      \stemDown
      \override NoteColumn #'force-hshift = #0.2
      e,4.
    }
  >>
  <h' e g h>16<e g h e><fis h dis g>^\markup{\fret-diagram #"6-x;5-x;4-4;3-4;2-4;1-3;"}
  \stemDown
  %\once\override TextScript.extra-offset = #'(2 . -5.5)
  <g cis e b'>8.^\markup{\fret-diagram #"6-x;5-x;4-5;3-6;2-5;1-6;"}
  <<
    {
      h'!4. c8.[ h] cis!4. r8. a h r cis4.
    }
    \\
    {
      <gis, d' fis>16^\markup{\fret-diagram #"6-x;5-x;4-6;3-7;2-7;1-7;"}
      q q
      %<gis' d'' fis''><gis' d'' fis''>
      <a cis fis>^\markup{\fret-diagram #"6-x;5-x;4-7;3-6;2-7;1-7;"}
      q q
      %<a' cis'' fis''><a' cis'' fis''>
      <g d' f>^\markup{\fret-diagram #"6-x;5-x;4-5;3-7;2-6;1-8;"}
      q q
      %<g' d'' f''><g' d'' f''>
      <g d' e>^\markup{\fret-diagram #"6-x;5-x;4-5;3-7;2-5;1-7;"}
      q q
      \break
      %<g' d'' e''><g' d'' e''>
      <fis dis' gis>^\markup{\fret-diagram #"6-x;5-9;4-x;3-8;2-9;1-9;"}
      q q
      %<fis' dis'' gis''><fis' dis'' gis''>
      <f es' g>^\markup{\fret-diagram #"6-x;5-8;4-x;3-8;2-8;1-9;"}
      q q
      %<f' dis'' g''><f' dis'' g''>
      <e d' fis>8^\markup{\fret-diagram #"6-x;5-7;4-x;3-8;2-7;1-x;"}
      %\once\override TextScript.extra-offset = #'(0 . 2.5)
      <fis~ h~ e^~>16^\markup{\fret-diagram #"6-x;5-x;4-4;3-4;2-5;1-5;"}
      <fis h e>
      <f h d>8^\markup{\fret-diagram #"6-x;5-x;4-3;3-4;2-3;1-5;"}
      <e a cis>^\markup{\fret-diagram #"6-x;5-7;4-7;3-6;2-x;1-7;"}
      <dis~ g~ h^~>16^\markup{\fret-diagram #"6-x;5-6;4-x;3-o;2-o;1-7;"}
      <dis g h>
      <d fis b>8^\markup{\fret-diagram #"6-x;5-5;4-4;3-3;2-x;1-x;"}
      <h a' e'>4.^\markup{\fret-diagram #"6-9;5-x;4-7;3-9;2-x;1-9;"}
    }
  >>
  \break
  h''16-3 g-4 e-1\stemUp h-0 g-0 e-3
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \override StrokeFinger.staff-padding = #'()
      \slurDown
      e,16-2 fis'-4 g-0 b-4( a-3) dis,-1 e-2 d'!-4( c-1) eis,-1 e'!-4( d-2)
      f-4( e-3) cis-4 h-2 d-1 b-2 a-3 c-2( h-0) g-0( a-2) fis-4 e, fis' g b( a) dis,
      e-1 e'-4( d-2) g,-0 f'-4( e-2) b-0 c'-4( b-2) e,-3 a-4( g-2)
    }
    \\
    {
      e,,4. <c'_3 e>8.[ <cis_3 eis>] d4._0\break <dis_1 a'>8.[ dis,_1] e4.
      <cis'_3_\5 e>8.[ <dis_3 g>] <e_3 h'>[ <a_1_\4 e'>]
    }
  >>
  \break
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \stemDown
  <a e' fis d'>4.^\markup{\fret-diagram #"6-x;5-x;4-7;3-9;2-7;1-10;"}
  <b es fis d'>^\markup{\fret-diagram #"6-x;5-x;4-8;3-8;2-7;1-10;"}
  <b~ d~ g~ a~>4.^\markup{\fret-diagram #"6-x;5-x;4-9;3-7;2-8;1-5;"}
  <b d g a>8.[ <a cis fis h>^\markup{\fret-diagram #"6-x;5-x;4-7;3-6;2-7;1-7;"}
  ]
  <f b e cis'>4.^\markup{\fret-diagram #"6-x;5-8;4-8;3-9;2-x;1-9;"}
  <e a cis dis g>^\markup{\fret-diagram #"6-x;5-7;4-7;3-8;2-8;1-9;"}
  \bar "||"
}