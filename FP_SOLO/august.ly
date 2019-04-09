\version "2.19.15"

\language "deutsch"

\header {
  title = "Август'91"
  %meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-global-staff-size 16)
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
    %\omit BarLine
    %\omit SpanBar
  }
}

\include "myNoteHeads.ly"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

blackPath =
#'((moveto 0 0)
   (lineto 20 18)
   (lineto 20 17)
   (lineto 0.5 -0.5)
   (closepath))
whitePath =
#'((moveto 0.6 0.5)
   (lineto 20 18)
   (lineto 20 16.7)
   (lineto 1.2 -0.2)
   (closepath))

top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \accidentalStyle piano
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  \time 14/8
  d4 s8.
  \change Staff = LH
  \stemDown
  g,16[ d' a'
  \change Staff = RH
  \clef treble
  h d a' g]
  \stemNeutral
  d4-> s8.
  \change Staff = LH
  \stemDown
  g16[ d' a'
  \change Staff = RH
  \override Staff.OttavaBracket.padding = 1
  \ottava #1
  \set Staff.ottavation = #"8"
  h d a' g]
  \time 17/8
  \stemNeutral
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 8 {
    \ottava #2
    \set Staff.ottavation = #"15"
    \repeat unfold 5 {g' h a e} d g fis a,
    \ottava #1
    \set Staff.ottavation = #"8"
    \repeat unfold 3 {g h a e} d g fis
    \ottava #0
    a, h d a d, g h a e d g fis
    a, h d a d, g h a e d g fis
    a, g d' h a' g d' h a' g d' h
    g' d c h a g d g, c h a g
    d a fis' g e, h' fis d' g, e' h fis' e h' g
    \time 13/8
    e' h fis'
    e g c h a g d a fis'! g a h c d h g a h g d c
    d h g a h g d c d
    \clef bass
    h a g d c a
  }
  \time 14/8
  \tuplet 3/2 8 {
    g b es f b es
    \clef treble
    f b es
    f b es
    d c g d g d c g d' c g d g d c
    g c b es d b'! g as f' es! d b'! g as f'
  }
  \time 15/8
  es16 s h' s g s es! s d s8. c16 s h s8. s2
  \change Staff = LH
  \times 8/9 {
    \stemDown
    es,,,32 g as c d
    \change Staff = RH
    es g as! h~\noBreak
  }
  \time 5/8
  \set beatStructure = #'(1 1 1 1 1)
  \stemNeutral
  \tuplet 3/2 8 {
    h16 fis h,
    e dis cis' fis, a h
    e dis cis' fis, a h
  }
  \time 9/8
  \set beatStructure = #'(1 1 1 1 1 1 1 1 1)
  <d, es b' d>8<c d a' c><b b'!>
  f32 g as es'! b!8
  <<
    {
      as!
    }
    \\
    {
      des,32 es des c
    }
  >>
  <b! ges'>8
  \change Staff = LH
  r8
  \once\override Beam.positions = #'(4 . 4.7)
  es,,!32 b'! ges'
  \change Staff = RH
  \clef treble
  as
  \tuplet 3/2 8 {
    b16 as' b b! as' b
  }
  \override Beam #'breakable = ##t
  es
  g,32[ as! b! c] f,[ g as! b!] es,[ f g as!] d,[ es! f g] c,[ d es! f]
  g,[ as! b! c] f,[ g as! b!] es,[ f g as!] d,[ es! f g] c,[ d es! f]
  \clef bass
  g,[ as! b! c] f, g
  \tuplet 3/2 8 {
    as!16 b!8
    \clef treble
    <as'' b c>16 <as, b c>8<es' f g>16 g,8
    <b, f'><as' c f>16<es f b>8\noBeam
    \ottava #1
    \set Staff.ottavation = #"8"
    <f''' as>16<as, es'>8
    \ottava #0
    <f as!>16<as, es'>8
    <f as!>16<as, es'>8.
    <es f as!>16 as,8
  }
  <<
    {
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {<ges as! b>8.}
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {
        f''8\rest
        \ottava #1
        \set Staff.ottavation = #"8"
        <f'' as!>16
      }
    }
  >>
  \tuplet 3/2 8 {
    <as, es'>8
    \ottava #0
    <f as!>16<as, es'>8
    <f as!>16<as, es'>8.
  }
  %\cadenzaOn
  s1*50
  s1*3 s2. s16
  \time 2/4
  \normalsize
  \tweak #'duration-log #1
  cis,,,,4
  \ottava #0
  \clef treble
  s4
  \time 3/4
  \override TextScript.outside-staff-priority = ##f
  %s1*3
  \once\override TextScript.extra-offset = #'(10.65 . 1)
  s16-\markup {
    \musicglyph #"flags.d3"
  }
  \once\override TextScript.extra-offset = #'(10.2 . 0.5)
  s-\markup {
    \musicglyph #"flags.dgrace"
  }
  %\shape #'((-0.5 . -4.5) (-1 . -4) (-1 . -4) (-1 . 0)) Slur
  \once\override TextScript.extra-offset = #'(9 . 5.3)
  s8-\markup {
    \override #'(thickness . 1.5)
    \draw-line #'(0 . 7)
  }
  s2
  \time 2/4
  \bot
  <<
    {
      \voiceFour
      \once \override NoteHead.X-offset = #4
      \once \override Stem.rotation = #'(-40 0 0)
      \once \override Stem.extra-offset = #'(2.9 . 0.4)
      \once \override Stem.length = #9.2
      \hide Flag
      \once \override Accidental.extra-offset = #'(4.2 . 0)
      \tweak #'duration-log #1 cis'''4
    }
    \\
    {
      \once \override Stem.length = #12
      \once \override Accidental.stencil = ##f
      <
      \tweak #'duration-log #1 h
      \tweak #'duration-log #1 c
      \tweak #'duration-log #1 d
      >4^^
    }
  >>
  \top
  s4
  <as' ces g'>2
  \ottava #1
  \set Staff.ottavation = #"8"
  \time 5/8
  h'8[ b' a c, fis]
  \time 4/4
  f'!1
  \ottava #0
  \clef bass
  \bar "||"
  \break
  \time 2/4
  \slashedGrace {
    \myBigAccNoteHeadsFill
    \once\override Stem.length = #13
    \ottava #-1
    \set Staff.ottavation = #"8"
    \once \override Arpeggio.positions = #'(-5 . 0)
    h,,,,,,,8\arpeggio
    \ottava #0
    \normalNoteHeads
  }
  s4
  \clef treble
  <fis'''' h e>
  \clef bass
  \slashedGrace {
    \myBigAccNoteHeadsFill
    \once\override Stem.length = #13
    \ottava #-1
    \set Staff.ottavation = #"8"
    \once \override Arpeggio.positions = #'(-5 . 0)
    h,,,,8\arpeggio
    \ottava #0
    \normalNoteHeads
  }
  s4
  \clef treble
  <fis'''' h e>
  \clef bass
  <g,, as>
  \clef treble
  <gis' h f'!>
  \repeat unfold 2 {
    R2
    <<
      {
        r8
        <h' cis h'>
        \ottava #1
        \set Staff.ottavation = #"8"
        <b' c b'> <a h a'>
        \ottava #0
        <c, d c'>8 <fis gis fis'>
        \ottava #1
        \set Staff.ottavation = #"8"
        <f' g f'>4~ q2
        \ottava #0
      }
      \\
      {
        r8
        <h,,, dis gis ais>
        <b' d g a> <a cis fis gis>
        <c, e a h>8 <fis ais dis eis>
        <f' a d e>4~ q2
      }
    >>
  }
  R2*3
  \bar "||"
  \cadenzaOn
  r2
  b8[( g! b, d e] c'8. des,,2)
  \teeny b''8[( g! b, d e] c'8.
  \xLV #6 des,,2)_\laissezVibrer
  \normalsize
  \cadenzaOff
  \bar "||"
  \clef bass
  \time 4/4
  <<
    {
      \repeat unfold 4 {
        <as des>2 b
      }
      <as des>4
    }
    \\
    {
      \repeat unfold 2 {
        des,1~ des2.~ \times 2/3 {des8 des des}
      }
      des4
    }
  >>
  \clef treble
  \unset tupletSpannerDuration
  \override TupletNumber.transparent = ##f
  \times 2/3 {<c'' e g c>8 <h dis fis h> <a cis e a>} <ges b des ges>2
  r4 \times 2/3 {<c, e g c>8 <h dis fis h> <a cis e a>} <ges b des ges>2
  r r4 \times 2/3 {<c e g c>8 <h dis fis h> <a cis e a>} <ges b des ges>1
  \clef bass
  <<
    {
      \repeat unfold 4 {
        <as des>2 b
      }
    }
    \\
    {
      des,1~ des2.~ \times 2/3 {des8 des des} des1~ des
    }
  >>
  \bar "||"
  <d! f as b d>2 <h! d fis gis h> <b des ges b> <h d fis h>
  <dis fis a h dis> <c es g a c> <h d g h>
  \clef treble
  <<
    {
      e''!8 <a,, a'> <gis' gis'>4
    }
    \\
    {
      <es g c>2
    }
  >>
  \clef bass
  <e, g h e>2 <cis fis a cis> <b des ges b>1
  \clef treble
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  h''!8 fis dis a
  \clef bass
  <<
    {
      b2 heses
    }
    \\
    {
      b8 b, es ges heses2
    }
  >>
  \clef treble
  as4 <a' d fis a>
  h!8 fis dis a
  \clef bass
  <<
    {
      b2 heses
    }
    \\
    {
      b8 b, es ges heses2
    }
  >>
  as2
  \clef treble
  <
  \tweak #'duration-log #1 a!
  \tweak #'duration-log #1 a'!
  >8 cis fis gis <b, b'>4 <a a'>
  <<
    {
      <des des'>2 <d' d'>4 <des des'>
    }
    \\
    {
      des,8 b' <f f'> c''
      \once\override NoteColumn.force-hshift = #1.2
      <g b>2
    }
  >>
  \clef bass
  <<
    {
      <f,,! f'!>2
    }
    \\
    {
      f8 <b, des ges b>^( <heses des ges heses>4)
    }
  >>
  \clef treble
  <<
    {
      cis''8 <fis,, a d fis>( <f a d f>4)
    }
    \\
    {
      <cis' cis'>2
    }
  >>
  <d d'>2 <fis ais>8 q q q
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \accidentalStyle piano
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \override Score.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  \time 14/8
  g,,16[ d' a'
  \change Staff = RH
  h d a' g]
  <fis' a>4-> s8.
  \change Staff = LH
  \clef treble
  g,16[ d' a'
  \change Staff = RH
  h d a' g] h4-> s8.
  \change Staff = LH
  \time 17/8
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 8 {
    \ottava #1
    \set Staff.ottavation = #"8"
    g16 d' a' g a h d h a	\bar "" \break
    h g d c d h
    \ottava #0
    g a h g d c d h g a h g d c d
    \clef bass
    h g g,~
  }
  g4~ g2~ g~
  \tuplet 3/2 8 {
    g16 d g d' g, d' h' d, a' d g, d'
    \clef treble
    h' g a g d c
    \clef bass
    h d e d c h c, d d, e, h' g' fis e h' g' fis e
    h' fis g
    \time 13/8
    e h' g' g, h e d c h c d c h a g d a fis'
    g d' c g d c' g d c g' d c g d' c g a g d c a
  }
  \time 14/8
  \tuplet 3/2 8 {
    es b' f'
    es b' f'
    es b' f'
    \clef treble
    es b' f'
    g d a g d' a g d g
    \clef bass
    d a g d g d
    as, as' es' c es! as f b es
    \clef treble
    c es as f b es
  }
  \time 15/8
  \set beatStructure = #'(1 1 1 1 2 1 2 2 2 2)
  %\stemDown
  \times 4/6 {
    c32 es g
    \change Staff = RH
    h d as'
  }
  \change Staff = LH
  \times 4/7 {
    g,, d' es!
    \change Staff = RH
    g as h es
  }
  \change Staff = LH
  \times 4/7 {
    as,, es'! f
    \change Staff = RH
    g as! b d
  }
  \change Staff = LH
  \times 4/7 {
    g,, c d
    \change Staff = RH
    es g as h
  }
  \change Staff = LH
  f, h c d
  \change Staff = RH
  es! g as! h
  \change Staff = LH
  \times 4/7 {
    es,, h' c
    \change Staff = RH
    d es! g as!
  }
  \bar ""
  \change Staff = LH
  c,, g' as d
  \change Staff = RH
  es! g as! c
  \change Staff = LH
  as,, d es! g
  \change Staff = RH
  h c es! g
  \change Staff = LH
  g,, c d g
  \clef bass
  \change Staff = RH
  as h c d
  \change Staff = LH
  s4
  \tuplet 3/2 8 {
    e,,,16 h' gis'
    cis, fis h
    e,16 h' gis'
    \clef treble
    cis, fis h
    e,16 h' gis'
  }
  \time 9/8
  \set beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \clef bass
  <<
    {
      s16. c,,32[ g] s16. f32 s16.
    }
    \\
    {
      \set beatStructure = #'(1 1 1)
      c,32 g' es' c' g b, es, c' f b c es
    }
  >>
  r8
  \stemDown
  ges,,32 des' as'
  \change Staff = RH
  b
  \change Staff = LH
  \stemNeutral
  r16 f,32 des ces ges'! des'!
  \change Staff = RH
  \clef bass
  es f ges as a
  <<
    {
      \stemDown
      <b f'>8
    }
    \\
    {
      s16.
      \change Staff = LH
      f32
    }
  >>
  \change Staff = LH
  \tuplet 3/2 8 {
    es16 c' g'
    \clef treble
    es c' g'
  }
  b,32 d es f as, c d es! f, b! c d es,! as! b! c d, f as! b!
  b, d es f as, c d es!
  \clef bass
  f, b! c d es,! as! b! c d, f as! b! b, d es f as, c d es!
  \tuplet 3/2 8 {
    f,,16 c' es'! b!8 <f' b! es>16 b,, f' b!
  }
  <<
    {
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {as'! g8}
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {es!8.}
    }
  >>
  \tuplet 3/2 8 {
    des,16 as' des as! es' as
    des,! as'! des as! es' as
    \change Staff = RH es \change Staff = LH f, as,!
    des,! as'! des! ges,! des'! ges
    des! as'! des! ges,! des'! ges
  }
  \break
  \time 11/16
  %\cadenzaOn
  \clef treble
  %\override Score.BarLine.stencil = ##f
  \override Beam.breakable = ##t
  des16[ as' des
  \small
  \top ges es \bot as,! c
  \top as' des, \bot ges, b]
  \time 4/4
  \repeat unfold 2 {
    \top es![ c \bot ges! as!
    \top fes'! des! \bot es,! as!
    \top c b \bot fes ges
    \top b as \bot c, fes]
  }
  %\bar ""
  \top des'[ b \bot f! ges
  \top eses' ces \bot des, ges
  \top b as \bot es f
  \top as ges \bot c, es]
  \top des'[ b \bot f ges
  \top eses' ces \bot des, ges
  \top b as \bot es f
  \top as ges \bot c, es]
  \top deses'[ heses \bot fes ges
  \top des' ces \bot des, ges
  \top heses as \bot es fes
  \top as ges \bot c, es]
  %\bar ""
  \repeat unfold 3 {
    \top c'[ a \bot e fis
    \top des' b \bot cis, fis
    \top a gis \bot dis e
    \top gis fis \bot c! dis]
  }
  %\bar ""
  \repeat unfold 2 {
    \top ces'[ as \bot e f
    \top des' heses \bot cis, f
    \top as g \bot dis e
    \top g f \bot c! dis]
  }
  \top ces'[ as \bot e f
  \top deses' heses \bot cis, f
  \top as ges \bot dis e
  \top ges f \bot c! dis]
  %\bar ""
  \top ces'[ as \bot e f
  \top deses' heses \bot cis, f
  \top as ges \bot dis e
  \top ges f \bot c! dis]
  \time 5/4
  \repeat unfold 2 {
    \top b'[ g \bot fis a
    \top as f \bot e g
    \top ges es \bot d f
    \top ges es \bot e g
    \top as f \bot fis a]
  }
  %\bar ""
  \top b[ g \bot fis a
  \top as f \bot e g
  \top ges es \bot d f
  \top ges es \bot e g
  \top as f \bot fis a]
  %\time 15/4
  \top b[ g \bot fis a
  \top as f \bot e g
  \top ges es \bot d f
  \top e cis \bot c es
  \top d h \bot b des
  \top c a \bot as ces
  \top c a \bot b des
  \top d h \bot c es
  \top e cis \bot d f
  \top ges es \bot e g
  %\bar ""
  %\break
  \top as f \bot fis a
  \top b g \bot gis h
  \top c a \bot ais cis
  \top d h \bot c es
  \top e cis \bot d f]
  \top fis[ dis \bot d f
  \top e cis \bot c es
  \top d h \bot ais cis
  \top d h \bot c es
  \top e cis \bot d f]
  \time 3/4
  \top fis[ dis \bot d f
  \top e cis \bot c es
  \top d h \bot ais cis
  \top d h \bot c es
  \top e cis \bot d f
  %\bar ""
  %\break
  \top fis dis \bot e g
  \top as f \bot fis a
  \top b g \bot gis h
  \top c a \bot b des]
  \top d[ h \bot b des
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f \bot e g
  \top fis dis \bot d f
  \top e cis \bot c es
  \top e cis \bot d f
  \top fis dis \bot e g]
  \top as[ f \bot e g
  \top fis dis \bot d f
  \top e cis \bot c es
  %\bar ""
  %\break
  \top d h \bot ais cis
  \top c a \bot gis h
  \top b g \bot fis a
  \top b g \bot gis h
  \top c a \bot ais cis]
  \top d[ h \bot ais cis
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f \bot e g
  \top ges es \bot d f
  \top e cis \bot c es
  \top e cis \bot d f
  \top ges es \bot e g]
  %\bar ""
  \once\override Beam.positions = #'(-5 . -1.5)
  \top as[ f \bot e g
  \top ges es \bot d f
  \top
  \clef bass
  e cis
  \bot c es
  \top d h
  \bot
  \clef bass
  b des
  \top c a \bot as ces
  \top b g \bot fis a
  \top b g \bot as ces
  \top c a \bot b des]
  \top d[ h \bot b des
  \top c a \bot as ces
  \top b g \bot fis a
  \top as f \bot e g
  \top fis dis \bot d f
  \top e cis \bot c es
  \top e cis \bot d f
  \top fis dis \bot e g]
  %\bar ""
  \top as[ f \bot e g
  \top fis dis \bot d f
  \top e cis \bot c es
  \top d h \bot ais cis
  \top c a \bot gis h
  \top b g \bot fis a
  \top b g \bot gis h
  \top c a \bot ais cis]
  \top d[ h \bot ais cis
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f \bot e g
  \top fis dis]
  %\bar ""
  %@@@@@@@@@@@@@@
  \bot d[ f \top fis dis
  \bot e g \top as f
  \bot fis a \top b g
  \bot gis h \top c a
  \bot ais cis \top d h
  \bot c es \top e cis
  %@@@@@@@@@@@@@@
  \bot d f \top fis dis
  \bot e g \top as f
  \bot fis a \top b g
  \bot as ces] \top c[ a
  \bot
  \clef treble
  b des
  \top
  \clef treble
  d h
  \bot c es \top e cis
  %\bar ""
  %\break
  %@@@@@@@@@@@@@@
  \bot d f \top fis dis
  \bot e g \top as f
  \bot fis a \top b g
  \bot gis h \top c a
  \bot ais cis \top d h
  \bot c es \top e cis
  %@@@@@@@@@@@@@@
  \bot d f \top fis dis
  \bot e g \top as f
  \bot fis a \top b g
  \bot gis h
  \top
  \ottava #1
  \set Staff.ottavation = #"8"
  c a
  \bot
  \ottava #1
  \set Staff.ottavation = #"8"
  ais cis \top d h
  \bot c es \top e cis
  %\bar ""
  %\break
  %@@@@@@@@@@@@@@
  \bot d f \top fis dis
  \bot e g \top as f
  \bot fis a \top b g
  \bot gis h \top c a
  \bot ais cis \top d h
  \bot c es \top e cis
  \bot d f]
  %@@@@@@@@@@@@@@
  \top fis[ dis \bot d f
  \top e cis \bot c es
  \top d h \bot cis ais
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f \bot e g
  %\bar ""
  %\break
  %@@@@@@@@@@@@@@
  \top fis dis \bot d f
  \top e cis \bot c es
  \top d h \bot cis ais
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f
  \ottava #0
  \bot e g
  \ottava #0
  %@@@@@@@@@@@@@@
  \top fis dis \bot d f
  \top e cis \bot c es
  \top d h \bot cis ais
  \top c a \bot gis h
  \top b g \bot fis a
  \top as f \bot e g
  \top fis dis \bot d f]
  %\bar ""
  %\break
  %@@@@@@@@@@@@@@
  \top
  \clef bass
  e[ d \bot des es
  \top d c \bot h cis
  \top c b \bot
  \clef bass
  a h
  \top b as \bot g a
  \top as ges \bot f g
  \top ges e \bot es f
  %@@@@@@@@@@@@@@
  \top e d \bot des es
  \top d c \bot h cis
  \top c b \bot a h
  \top b as \bot g a
  \top
  \ottava #-1
  \set Staff.ottavation = #"8"
  as ges \bot
  \ottava #-1
  \set Staff.ottavation = #"8"
  f g
  \top ges e \bot es f
  %@@@@@@@@@@@@@@
  \top e d \bot des es
  %\bar ""
  %\break
  \top d c \bot h cis
  \top c b \bot a h
  \time 7/8
  \top b as \bot g a
  \top as ges \bot f g
  \top ges e \bot es f
  %@@@@@@@@@@@@@@
  \top e d]
  \bot
  \time 2/4
  \normalsize
  \override TextScript.outside-staff-priority = ##f
  \once\override TextScript.extra-offset = #'(2.2 . 17.9)
  \autoBeamOff
  \crossStaff <
  \tweak #'duration-log #1 f,
  \tweak #'duration-log #1 a
  >4-\markup {
    \override #'(filled . #t) \path #0.15 #blackPath
  }
  \autoBeamOn
  \ottava #0
  \once\override TextScript.extra-offset = #'(-4.1 . 16.9)
  s4-\markup {
    \path #0.15 #whitePath
  }
  s2.
  %s1*3
  s2
  <e'' c' fis des'>2
  \time 5/8
  s2 s8
  \time 4/4
  \ottava #-1
  \set Staff.ottavation = #"8"
  <<
    {
      \once\override TextScript.extra-offset = #'(-1.5 . 7)
      s2_\markup {\sharp}
      \once\override TextScript.extra-offset = #'(-6.5 . -1)
      s2_\markup {\flat}
    }
    \\
    {
      \myBigZebraNoteHeads g,,1 \normalNoteHeads
    }
  >>
  \ottava #0
  \revert Score.BarLine.stencil
  \revert Score.SpanBar.stencil
  %\cadenzaOff
  \bar "||"
  \time 2/4
  \autoBeamOff
  \crossStaff
  \acciaccatura {
    \myBigAccNoteHeads
    \once\override Stem.length = #13
    \ottava #-1
    \set Staff.ottavation = #"8"
    h8
    \ottava #0
    \normalNoteHeads
  }
  \autoBeamOn
  d'4^> <d' gis a>
  \autoBeamOff
  \crossStaff
  \acciaccatura {
    \myBigAccNoteHeads
    \once\override Stem.length = #13
    \ottava #-1
    \set Staff.ottavation = #"8"
    h,,8
    \ottava #0
    \normalNoteHeads
  }
  \autoBeamOn
  d'4^> <d' gis a> <fis,, d'> <d'' fis a>
  <<
    {
      <<
        {
          \once \override Stem.length = #12
          %\once \override Accidental.extra-offset = #'(1 . 0)
          f,
        }
        \\
        {
          \voiceThree
          \once \override NoteHead.X-offset = #0.8
          \once \override Stem.rotation = #'(25 0 0)
          \once \override Stem.extra-offset = #'(-0.25 . -0.2)
          \once \override Stem.length = #9.5
          \hide Flag
          %\once \override Flag.stencil = ##f
          \once \override Accidental.extra-offset = #'(2.7 . 0)
          fis
        }
      >>
      <g' h dis>
      \repeat unfold 2 {
        R2
        \clef treble
        r4 r8
        <<
          {
            <fis'_~ c'~> q2
          }
          \\
          {
            s4
            \clef bass
            <gis, h f'!>
          }
        >>
        <<
          {
            \once \override Stem.length = #12
            %\once \override Accidental.extra-offset = #'(1 . 0)
            f,
          }
          \\
          {
            \voiceThree
            \once \override NoteHead.X-offset = #0.8
            \once \override Stem.rotation = #'(25 0 0)
            \once \override Stem.extra-offset = #'(-0.25 . -0.2)
            \once \override Stem.length = #9.5
            \hide Flag
            %\once \override Flag.stencil = ##f
            \once \override Accidental.extra-offset = #'(2.7 . 0)
            fis
          }
        >>
        <g' h dis>
      }
      \repeat unfold 2 {
        <e, f!>4
        <<
          {
            d''4
          }
          \\
          {
            <fis, a d>
          }
        >>
      }
      \bar "||"
      \cadenzaOn
      <e d fis gis h>1\fermata
      s s s8
      \cadenzaOff
      \bar "||"
    }
    \new Staff \relative {
      \override Staff.TimeSignature.stencil = ##f
      \clef bass
      <e,, d'>4 <d''! fis a>
      \repeat unfold 2 {
        \xLV #6 <cis,, d'>4_\laissezVibrer s
        r4 r8
        <<
          {
            \autoBeamOff
            \crossStaff
            <d''_~ e_~ gis^~ ais^~>
            \crossStaff
            q2
            \autoBeamOn
          }
          \\
          {
            s8
            <<
              {
                \once \override Stem.length = #12
                %\once \override NoteColumn.force-hshift = #1.7
                g,4
              }
              \\
              {
                \voiceThree
                \once \override NoteHead.X-offset = #0.8
                \once \override Stem.rotation = #'(25 0 0)
                \once \override Stem.extra-offset = #'(-0.25 . -0.2)
                \once \override Stem.length = #9.5
                \hide Flag
                %\once \override Flag.stencil = ##f
                \once \override Accidental.extra-offset = #'(2.7 . 0)
                gis4
              }
            >>
          }
          \\
          {
            \voiceTwo
            s8
            %\once \override NoteColumn.force-hshift = #1.7
            <fis, d'>4 <d'' fis a>
          }
        >>
        <e,, d'>4 <d''! fis a>
      }
      \repeat unfold 2 {
        <cis,, d'>4 <gis'' h e>
      }
      \bar "||"
      \cadenzaOn
      <cis, d e f! a>1\fermata
      s s s8
      \cadenzaOff
      \bar "||"
      \break
      \time 4/4
    }
  >>
  <<
    {
      <fes,, fes'>2 <f f'> <fes fes'> <f f'>
      \repeat unfold 8 {
        <fes as fes'>2 <f b f'>
      }
      <fes fes'>2 <f f'> <fes fes'> <f f'>
    }
    \\
    {
      \repeat unfold 5 {
        \once\override NoteColumn.force-hshift = #1
        des'1~
        \once\override NoteColumn.force-hshift = #1.2
        des2.~ \times 2/3 {des8 des des}
      }
      \once\override NoteColumn.force-hshift = #1
      des1~ des
    }
  >>
  \bar "||"
  <g, g'>4 <fis fis'>8 <g g'>
  \ottava #-1
  \set Staff.ottavation = #"8"
  <es es'> <des des'> <d d'>8. <h h'>16 q2
  \ottava #0
  <es es'>8 as <g! g'!>4
  <gis gis'>4 <fisis fisis'>8 <gis gis'>
  \ottava #-1
  \set Staff.ottavation = #"8"
  <e e'> <d d'> <dis dis'>8. <c c'>16 q2
  \ottava #0
  <<
    {
      <g'' c es>2
    }
    \\
    {
      e!8 <a, a'> <gis' gis'>4
    }
  >>
  <dis, dis'>2 <e e'> <f f'> <a a'>
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <b b'> <es, es'>
  r8
  <<
    {
      f'8 c as' <h,! h'!>2
    }
    \\
    {
      <f f'>4. h8 f' d' as'
    }
  >>
  <b,, b'>2 <es, es'>
  r8
  <<
    {
      f'8 c as' <h,! h'!>2
    }
    \\
    {
      <f f'>4. h8 f' d' as'
    }
  >>
  <
  \tweak #'duration-log #1 fis,
  \tweak #'duration-log #1 fis'
  >8 cis' d e
  <
  \tweak #'duration-log #1 es,
  \tweak #'duration-log #1 es'
  > b' ges' \top d' \bot
  <<
    {
      <b,, b'>2 <g! g'!>
    }
    \\
    {
      b8 <f' f'> <ges ges'> <as as'>
      g, <d' d'> <b' b'> <fis' fis'>
    }
  >>
  r8 <e,, e'>( <es es'>4) r8 <his' his'>( <h h'>4)
  es8 heses' cis as' <e! e'!>2
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Staff = "LH" \links
  >>
}