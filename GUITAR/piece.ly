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
  d''2~ d8 cis-. r b-. c!2 r
  \break
  as~ as8 g-. r e fis2 r
  \break
  b~ b8 a-. r fis-. as2 r
  \break
  f~ f8 e-. r d es2 d'4.( cis8)
  \break
  b4 f' e4. b'8 g2~ g8 fis-. r es-. f!2 as f e R1*2 r2 b4 h g es' d2
  cis4 d a fis' f2 e~ e8 dis-. r c-. d2 h~ h8 b-. r g-. a2 r
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
      h32 es es es es es es es fis, es' es es es es es es
      gis,, d'' d d fis, d' d d a d d d cis cis cis cis
    }
    \\
    {
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
      b\RH #1 b\RH #2 b\RH #4 b\RH #3 (\glissando
      \voiceOne
      \override StrokeFinger.extra-offset = #'(-1.3 . -1.2)
      f')[ f\RH #4 f\RH #3 f\RH #2 ]
      \voiceTwo
      f f f f(\glissando
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
      g''32 g g g e g g g g g g g h, g' g g
      f, g' g g <d! fis>8-.\noBeam r <h dis>-.
    }
    \\
    {
      h8\rest e( es4) <des, f> g,
    }
    \\
    {
      \voiceTwo
      s4. h'8 s2
    }
  >>
  <<
    {
      b32 f' f f des f f f f f f f fis, f'! f f
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
      es, g' g g <d fis>8-.\noBeam r <c es>-.
    }
    \\
    {
      h8\rest des( c4) es, h_\5
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
      e, e'\1 e\2 e\3 e\harmonic\6 e e e e\harmonic e e e e\harmonic e e e
    }
    \\
    {
      s8 f,^(_\5 e) f
    }
    \\
    {
      \voiceTwo
      \once\override NoteColumn.force-hshift = #0.2
      \once\override StringNumber.extra-offset = #'(0.5 . -3.3)
      <d_0 e'\3>2 e2
    }
  >>
  <<
    {
      a,32 dis'\3 e\1 f\2 h,\harmonic f'  e dis d,! cis' e fis a\harmonic\5 fis e cis
      e,, dis'' e g e, g' e dis e\harmonic\6 dis e gis e, gis' e dis
      a, e'' a dis, a'\harmonic\4 e a dis, gis\harmonic\6 e a dis, a'\harmonic e a dis,
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
      c32 g'\3 gis\4 h!\2 b' h,! gis g b,\6 a'\4 h!\2 c\3 h' c, h a
      as, fis'\4 g\3 cis\2 g' cis, g fis a, b'\4 h\2 d\3 es' d, h b
      cis,\6 h'\2 c!\4 es\3 d' es, c h dis, b'\4 h\2 d\3 d' d, h b
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
      s8 <e' c'!> s <f a> s <g b> s <es a> s <des b'> s <c as'>
    }
    \\
    {
      \voiceOne
      d,32[ cis' cis cis]
      \voiceTwo
      cis! cis cis cis
      \voiceOne
      cis,[ d' d d]
      \voiceTwo
      d d d d
      \voiceOne
      h,[ a' a a]
      \voiceTwo
      a a a a
      \voiceOne
      b,[ fis'' fis fis]
      \voiceTwo
      fis fis fis fis
      \voiceOne
      e,,[ f''! f f]
      \voiceTwo
      f f f f
      \voiceOne
      fis,,[ f''! f f]
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
      e''32 e e e d e e e e e e e b e e e
      f, e' e e <h dis>8-.\noBeam h\rest <a c>-.
    }
    \\
    {
      a8\rest d( cis4) <d, f> gis,
    }
    \\
    {
      \voiceTwo
      s4. b'8 s2
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
  <<
    {
      h''32 h h h a h h h h h h h f h h h
      d, h' h h <fis ais>8-.\noBeam h\rest <e, gis?>-.
    }
    \\
    {
      f8\rest a( gis4) <h, d> f!
    }
    \\
    {
      \voiceTwo
      s4. f'8 s2
    }
  >>
  <<
    {
      f32 a a a e a a a a a a a c, a' a a
    }
    \\
    {
      f8 e( es4)
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
