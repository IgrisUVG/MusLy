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
  system-system-spacing.basic-distance = 19
  score-system-spacing.basic-distance = 20
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
  d''2~ d8 cis-. r b-. c!2 r
  \break
  as~ as8 g-. r e fis2 r
  \break
  b~ b8 a-. r fis-. as2 r
  \break
  f~ f8 e-. r d es2 d'4.( cis8)
  \break
  b4 f' e4. b'8 g2~ g8 fis-. r es-. f!2 as
  g2~ g8 fis-. r es-. f2 e R1 r2 b4 h g es' d2
  cis4 d a fis' f2 e~ e8 dis-. r c-. d2 h~ h8 b-. r g-. a2 r
  e'~ e8 dis-. r c-. d4 es h g' fis2~ fis8 f-. r d-.
  e2 es4.( d8) h4 fis' f4. h8 a2~ a8 gis-. r f-. g2 r
  es2~ es8 d-. r h-. cis2 r es4 b f'4. es'8
  c2~ c8 h-. r gis-. b2 des~ des8 c-. r a-. h2 a
}

classicalGuitar = \relative {
  \global
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \override StrokeFinger.extra-offset = #'(-2.3 . 0.8)
      d''32\RH #1 d\RH #4 d\RH #3 d\RH #2 as d d d d d d d e, d' d d
      b, d' d d <a cis>8-.\noBeam r <g b>-.
    }
    \\
    {
      d8\rest as'( g4)
      \once\override Fingering.extra-offset = #'(0.3 . 1)
      <g,_0 b>4 cis,
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
      e,2\harmonic
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
      h8\rest d( cis4)
      \once\override Fingering.extra-offset = #'(-0.3 . -4.2)
      <h, d-0> f
    }
    \\
    {
      \voiceTwo
      s4. a'8 s2
    }
  >>
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      \override TextScript.font-size = -2
      h32 es es es es es es es fis, es' es es es es es es
      gis,, d'' d d fis, d' d d
      \once\override TextScript.extra-offset = #'(-0.5 . -1.5)
      a^"II" d d d cis cis cis cis
    }
    \\
    {
      \once\override StringNumber.extra-offset = #'(-0.5 . -1.5)
      h!8\3( b4) s8 s4 a
    }
    \\
    {
      \voiceTwo
      \hideNotes
      \shape #'((1 . 0.8) (0 . 0) (0 . 0) (0 . 0)) Slur
      h4(\unHideNotes fis8 d) s8 fis4.
    }
    \\
    {
      \voiceTwo
      a,2 gis
    }
  >>
  <<
    {
      s8 <cis' a'> s <gis' h!> s
      \once\override Fingering.extra-offset = #'(1.2 . 2.9)
      <h,!_0 d'>
    }
    \\
    {
      \voiceOne
      g,32[ b' b b]
      \voiceTwo
      \override StrokeFinger.extra-offset = #'(-1.3 . 1.5)
      b\RH #1 b\RH #2 b\RH #4
      \once\override Slur.positions = #'(0 . 1)
      b\RH #3 (-\markup {
        \postscript #"1.5 4.5 moveto 2 1 rlineto stroke"
      }
      \voiceOne
      \override StrokeFinger.extra-offset = #'(-1.3 . -1.2)
      f')[ f\RH #4 f\RH #3 f\RH #2 ]
      \voiceTwo
      f f f f(-\markup {
        \postscript #"0.8 3.8 moveto 2.3 -0.5 rlineto stroke"
      }
      \voiceOne
      e)[ e e e]
      \voiceTwo
      \override StrokeFinger.extra-offset = #'(-1.3 . 1.5)
      e\RH #1 e\RH #2 e\RH #4 e\RH #3
    }
    \\
    {
      \voiceTwo
      g,,!4 e b'
    }
  >>
  <<
    {
      c32 e' e e <ges b>8-.\noBeam
    }
    \\
    {
      c,,4
    }
  >>
  <<
    {
      \override Fingering.staff-padding = #'()
      g''32 g g g e g g g g g g g h, g' g g
      \once\override Fingering.extra-offset = #'(-0.3 . 3)
      f,_2
      \once\override Fingering.extra-offset = #'(-1.3 . -4.2)
      g'-3 g g
      \set fingeringOrientations = #'(down right)
      <d!-3 fis-1>8-.\noBeam r <h dis>-.
    }
    \\
    {
      h8\rest e( es4) <des,_4 f> g,
    }
    \\
    {
      \voiceTwo
      s4. h'8 s2
    }
  >>
  <<
    {
      b32 f'\2 f f des f f f f f f f fis,^"IV" f'! f f
      dis, gis' gis gis g,! gis'! gis gis h, gis' gis gis fis gis gis gis
    }
    \\
    {
      s2. s8 fis
    }
    \\
    {
      \voiceTwo
      b,8 des( c4) s h
    }
    \\
    {
      \voiceTwo
      s4. fis4 g4.
    }
    \\
    {
      \voiceTwo
      a,2 dis
    }
  >>
  <<
    {
      g'!32\2 g g g des g g g g g g g a, g' g g
      es, g' g g <d fis>8-.\noBeam r <c-4 es>-.-\markup {
        \postscript #"1.5 -3.5 moveto 5.8 2.1 rlineto stroke"
      }
    }
    \\
    {
      h8\rest des( c4) es,
      \once\override StringNumber.extra-offset = #'(0.7 . 2)
      h_\5
    }
    \\
    {
      \voiceTwo
      s4. a'8 s2
    }
  >>
  <<
    {
      f'!32\2 f f f f, f' f f f f f f f, f' f f
      e, e'\1 e\2 e\3 e\harmonic\6_2 e e e e\harmonic e e e e\harmonic e e e
    }
    \\
    {
      s8
      \once\override StringNumber.extra-offset = #'(0.7 . 3)
      f,^(_\5 e)
      \override Fingering.extra-offset = #'(0.5 . 3)
      f-3-\markup {
        \postscript #"1.8 3.8 moveto 9.9 -0.5 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      \once\override NoteColumn.force-hshift = #0.2
      \once\override StringNumber.extra-offset = #'(0.5 . -3.3)
      <d_0 e'!\3>2 e2-3
    }
  >>
  <<
    {
      a,32 dis'\3\RH #2 e\1\RH #4 f\2\RH #3 h,\harmonic f'\RH #3 e\RH #4 dis\RH #2 d,! cis' e fis a\harmonic\5 fis e cis
      e,, dis'' e g e, g' e dis e\harmonic\6 dis e gis e, gis' e dis
      a, e''\RH #4 a\RH #3 dis,\RH #2 a'\harmonic\4 e a dis, gis\harmonic\6 e a dis, a'\harmonic e a dis,
    }
    \\
    {
      s8 h\harmonic s a'\harmonic s e,4 e8
      s a'\harmonic gis\harmonic a\harmonic
    }
    \\
    {
      \voiceTwo
      a,,4 d e, e''\harmonic a,,2
    }
  >>
  <<
    {
      \override Fingering.staff-padding = #'()
      c32\RH #1 g'\3\RH #2 gis\4\RH #1 h!\2\RH #3 b'\RH #4 h,!\RH #3 gis\RH #1 g\RH #2 b,\6\RH #1 a'\4\RH #2 h!\2\RH #4 c\3\RH#3 h'\RH #4 c,\RH #2 h\RH #3 a\RH #1
      as,\RH #1 fis'\4\RH #2 g\3\RH #3 cis\2\RH #4 g'\RH #3 cis,\RH #4 g\RH #3 fis\RH #2 a,\RH #1 b'\4\RH #2 h\2\RH #4 d\3\RH #3 es'\RH #4 d,\RH #2 h\RH #3 b\RH #1
      cis,\6\RH #1 h'\2\RH #3 c!\4\RH #1 es\3\RH #2 d'\RH #4 es,\RH #2 c\RH #1 h\RH #3 dis, b'\4 h\2 d\3 d' d, h b
      %d, b' h es cis' es, h b cis, h'\2 c!\4 es\3 d' es, c h
    }
    \\
    {
      s8 b' s h s g s es' s d s d
      %cis s d s a s fis' s f!
    }
    \\
    {
      \voiceTwo
      c,,4 b as a cis dis
      %d cis h b e
    }
  >>
  <<
    {
      s8 <e' c'!> s <f a> s
      \set fingeringOrientations = #'(up)
      <g-4 b-1> s <es-4 a-1> s <des-2 b'-4> s <c-3 as'-2>
    }
    \\
    {
      \override TextScript.font-size = -2
      \override Fingering.staff-padding = #'()
      \voiceOne
      \once\override TextScript.extra-offset = #'(-0.5 . -1.5)
      d,32[^"V" cis' cis cis]
      \voiceTwo
      cis! cis cis cis
      \voiceOne
      \once\override TextScript.extra-offset = #'(-0.8 . -1.5)
      cis,[^"IV" d' d d]
      \voiceTwo
      d d d d
      \voiceOne
      \once\override StringNumber.extra-offset = #'(-0.5 . -6)
      h,[^\6_2-\markup {
        \postscript #"1.5 -10.8 moveto 22 -0.2 rlineto stroke"
      } a'_3 a a]
      \voiceTwo
      a a a a
      \voiceOne
      b,[_2 fis''_3 fis fis]
      \voiceTwo
      fis fis fis fis
      \voiceOne
      e,,[ f''!_3 f f]
      \voiceTwo
      f f f f
      \voiceOne
      fis,,[ f''!_4 f f]
      \voiceTwo
      f f f f
    }
    \\
    {
      \voiceTwo
      d,4 cis h! b e, fis!
    }
  >>
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \once\override Fingering.extra-offset = #'(-0.3 . -3.3)
      e''32-0 e e e d e e e e e e e b e e e
      f, e' e e
      \set fingeringOrientations = #'(right)
      <h-2 dis-3>8-.\noBeam h\rest <a c>-.
      %\unset fingeringOrientations
    }
    \\
    {
      a8\rest d(-2 cis4_1)
      \set fingeringOrientations = #'(right)
      <d,-4 f-1>
      %\unset fingeringOrientations
      gis,_1
    }
    \\
    {
      \voiceTwo
      s4. b'8-2 s2
    }
  >>
  <<
    {
      f32 d' d d a d d d d d d d es, d' d d
    }
    \\
    {
      f,8 a( as4)
    }
    \\
    {
      \voiceTwo
      s4. es8
    }
    \\
    {
      \voiceTwo
      e,2
    }
  >>
  \break
  <<
    {
      \once\override Fingering.extra-offset = #'(-0.3 . -3.5)
      h''32-0 h h h a h h h h h h h f h h h
      \once\override StringNumber.extra-offset = #'(-0.5 . -6)
      \once\override Fingering.extra-offset = #'(-1.5 . 1.8)
      d,\5_3 h' h h <fis ais>8-.\noBeam h\rest <e, gis?>-.
    }
    \\
    {
      f8\rest
      \once\override StringNumber.extra-offset = #'(-0.6 . -2.3)
      a(\4_1 gis4_2)
      \once\override StringNumber.extra-offset = #'(0.6 . 2.5)
      <h,_\6 d> f!
    }
    \\
    {
      \voiceTwo
      s4.
      \once\override Fingering.extra-offset = #'(1.3 . 3.2)
      f'8_3-\markup {
        \postscript #"2.7 3.8 moveto 9.7 -0.3 rlineto stroke"
      } s2
    }
  >>
  <<
    {
      \once\override Fingering.extra-offset =#'(-0.3 . -4.3)
      f32-4 a_3 a a
      \once\override Fingering.extra-offset =#'(-0.3 . -4.7)
      e-2 a a a a a a a
      \once\override Fingering.extra-offset =#'(-0.3 . -5.6)
      c,-4 a' a a
    }
    \\
    {
      f8 e( es4_1)
    }
    \\
    {
      \voiceTwo
      s4. c8
    }
    \\
    {
      \voiceTwo
      e,2
    }
  >>
  <<
    {
      a32 a' a a f e' e e h a' a a_(\glissando e') e e e
    }
    \\
    {
      s8 f,,4 e'8_\5\harmonic
    }
    \\
    {
      \voiceTwo
      s4 h8 s
    }
    \\
    {
      \voiceTwo
      a,2
    }
  >>
  <<
    {
      e'''32 e e e b e e e e e e e fis, e' e e
      c, e' e e <h dis>8-.\noBeam r <a c>-.
    }
    \\
    {
      d,8\rest b'( a4) <a,\harmonic c>4 es
    }
    \\
    {
      \voiceTwo
      s4. fis'8 s2
    }
  >>
  <<
    {
      s8 <f cis'> s <ges b> s <as c> s <e b'>
    }
    \\
    {
      \override TextScript.font-size = -2
      \override Fingering.staff-padding = #'()
      \voiceOne
      e,32[ d' d d]
      \voiceTwo
      d d d d
      \voiceOne
      \once\override TextScript.extra-offset = #'(-0.8 . -1.5)
      d,[_0 es' es es]
      \voiceTwo
      es es es es
      \voiceOne
      \once\override StringNumber.extra-offset = #'(-0.5 . -6)
      cis,[^\6_2-\markup {
        \postscript #"1.5 -11 moveto 22 -0.6 rlineto stroke"
      }
      h'_3 h h]
      \voiceTwo
      h h h h
      \voiceOne
      h,![_2 g''_3 g g]
      \voiceTwo
      g g g g
    }
    \\
    {
      \voiceTwo
      e,4 d cis h
    }
  >>
  <<
    {
      \once\override Fingering.extra-offset = #'(1 . 0.8)
      fis''32\2_3 fis fis fis es fis fis fis fis fis fis fis b, fis' fis fis
      \once\override TextScript.extra-offset = #'(-1 . -1.5)
      gis,^"VI" fis' fis fis <d f>8-.\noBeam r <h d>-.
    }
    \\
    {
      h8\rest es( d4) <e, gis> a,
    }
    \\
    {
      \voiceTwo
      s4. b'8 s2
    }
  >>
  <<
    {
      c32 e e e e e e e g, e' e e es, e'! e e
      a,, es'' es es g, es' es es b es es es d d d d
    }
    \\
    {
      c8( h!4.) s4 b
    }
    \\
    {
      \voiceTwo
      s4 g
    }
    \\
    {
      \voiceTwo
      \hideNotes c4\unHideNotes s8 es, s8 g4.
    }
    \\
    {
      \voiceTwo
      b,2 a
    }
  >>
  <<
    {
      s8
      \set fingeringOrientations = #'(left)
      \once\override StringNumber.extra-offset = #'(-0.5 . -3)
      <d'-4 b'\1>-\markup {
        \postscript #"1.7 -8.3 moveto 10 1 rlineto stroke"
      } s <a' c> s <c, es'>
    }
    \\
    {
      \voiceOne
      gis,32[ h'_0 h h]
      \voiceTwo
      \shape #'((1.3 . 0.2) (1 . 0) (-1 . 0) (0 . -0.5)) Slur
      h^( h h h
      \voiceOne
      fis')[ fis fis fis]
      \voiceTwo
      fis fis fis fis
      \voiceOne
      h,,[ f'' f f]
      \voiceTwo
      f f f f
    }
    \\
    {
      \voiceTwo
      gis,,!4 f'! h,
    }
  >>
  <<
    {
      cis32 f' f f <g h>8-.\noBeam
    }
    \\
    {
      cis,,4
    }
  >>
  <<
    {
      a''32 a a a fis a a a a a a a cis, a' a a
      g, a' a a <e! gis>8-.\noBeam r <des f>-.
    }
    \\
    {
      h8\rest fis'( f4) <es, g> a,
    }
    \\
    {
      \voiceTwo
      s4. cis'8 s2
    }
  >>
  <<
    {
      c32^"VII" g' g g es g g g g g g g gis, g'! g g
    }
    \\
    %{
      s2
    %}
    %\\
    {
      \voiceTwo
      c,8 es( d4)
    }
    \\
    {
      \voiceTwo
      s4. gis,8
    }
    \\
    {
      \voiceTwo
      h,2
    }
  >>
  cis16_\6\glissando a\( es'_\5 f_\4 b(_\3 h)\glissando d8\)
  \break
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \once\override Fingering.extra-offset = #'(-0.3 . -3)
      es32-3 es es es c es es es es es es es g, es' es es
      e,!
      \once\override Fingering.extra-offset = #'(-0.3 . -4)
      es'!-4 es es <h d>8-.\noBeam r <g h>-.
    }
    \\
    {
      a8\rest
      \once\override Fingering.extra-offset = #'(-1.3 . 3.5)
      c-4(
      \once\override Fingering.extra-offset = #'(0.3 . 1.8)
      h4-2) <cis, e> as
    }
    \\
    {
      \voiceTwo
      s4.
      \once\override Fingering.extra-offset = #'(-1.3 . 3.5)
      g'8-4 s2
    }
  >>
  <<
    {
      a32 cis-3 cis cis cis cis cis cis e, cis' cis cis c,! cis'! cis cis
    }
    \\
    {
      a8( gis4.)
    }
    \\
    {
      \voiceTwo
      s4 e
    }
    \\
    {
      \voiceTwo
      g,4.-4 c8
    }
  >>
  <<
    {
      h32 d'-3 d d f, d' d d d d d d g, d' d d
    }
    \\
    {
      s8 f,( fis4)
    }
    \\
    {
      \voiceTwo
      s4. g8
    }
    \\
    {
      \voiceTwo
      h,2-1
    }
  >>
  <<
    {
      \set fingeringOrientations = #'(up)
      s8 <g'' d'> s <es-4 g!-1> s <c b'>
    }
    \\
    {
      \voiceOne
      h,32[
      \once\override Fingering.extra-offset = #'(-0.2 . -4.2)
      es'-2 es es]
      \voiceTwo
      es es es es\glissando
      \voiceOne
      \once\override Fingering.extra-offset = #'(-0.2 . -3.5)
      b-2[ b b b]
      \voiceTwo
      b b b b\glissando
      \voiceOne
      \once\override Fingering.extra-offset = #'(-0.2 . -3)
      f'-2[ f f f]
      \voiceTwo
      f f f f
    }
    \\
    {
      \voiceTwo
      h,,4 gis-3 e!
    }
  >>
  <<
    {
      cis'32 f' f f <h! es>8-.\noBeam
    }
    \\
    {
      cis,,4
    }
  >>
  <<
    {
      c''32 c c c a c c c c c c c e, c' c c
      b, c' c c
      \once\override Fingering.extra-offset = #'(-0.5 . -3)
      <g!-3 h!-1>8-.\noBeam r <e gis>-.
    }
    \\
    {
      \set fingeringOrientations = #'(right)
      d8\rest a'( as4) <ges,-4 b-2> c,
      \unset fingeringOrientations
    }
    \\
    {
      \voiceTwo
      s4. e'8 s2
    }
  >>
  <<
    {
      \override TextScript.font-size = -2
      es32^"IV" b' b b ges b b b b b b b h,! b'! b b
    }
    \\
    {
      s2
    }
    \\
    {
      \voiceTwo
      es,8 ges( f4)
    }
    \\
    {
      \voiceTwo
      s4. h,8
    }
    \\
    {
      \voiceTwo
      d,2
    }
  >>
  <<
    {
      des''32 des des des g, des' des des des des des des es, des' des des
      a, des' des des <as c>8-.\noBeam r <fis a>-.
    }
    \\
    {
      d8\rest g( fis4)
      <fis, a>4 c
    }
    \\
    {
      \voiceTwo
      s4. es'8 s2
    }
  >>
  <<
    {
      \once\override Fingering.extra-offset = #'(-0.2 . -5.3)
      e!32-0 h'\2 h h g h h h h h h h c, h' h h
    }
    \\
    {
      e,8 g(\glissando fis4)
    }
    \\
    {
      \voiceTwo
      s4. c8
    }
    \\
    {
      \voiceTwo
      \once\override StringNumber.extra-offset = #'(0.5 . 2.8)
      es,2_\6
    }
  >>
  <<
    {
      <h' a'>2
    }
    \\
    {
      \override Fingering.extra-offset = #'(-1.3 . -1)
      <a, e''-0>
    }
  >>
  r
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup<<
    
    \new Staff \with {
      instrumentName = "Guitar"
    }
    {
      \clef "treble_8" \classicalGuitar
    }

  >>
}
