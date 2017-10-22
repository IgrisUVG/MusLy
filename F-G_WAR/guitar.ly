\version "2.19.15"

\language "deutsch"

\include "scripts.ly"

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.style = #'solid
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

FO = #(define-music-function (parser location offsetX offsetY)(number? number?)
        #{
          \once \override Voice.Fingering.extra-offset = #(cons offsetX offsetY)
        #})

guitarMusic = \relative {
  \clef treble
  \key e \major
  \time 2/4
  %\override Staff.TimeSignature #'stencil = ##f
  \override Fingering #'staff-padding = #'()
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
      <a cis' e> r
    }
  }
  <h fis' dis'> r <cis gis' cis> r <h dis' fis>4
  <e h' e>8 r r <h e' gis> <a cis' e> r <h dis' fis>4
  <e h' e>8 r <cis cis' gis'> r <a cis' e> r <h dis' fis>4
  <e h' e>8 r <cis cis' gis'> r <a cis' a'> r <h dis' a'> r
  <cis e' gis> r r4
  <<
    {
      \stringNumberSpanner "2"
      \textSpannerUp
      \once\override TextSpanner.extra-offset = #'(0 . -0.5)
      \once\override TextSpanner #'(bound-details right padding) = #2
      h'8\startTextSpan <gis, e' h' e>_- r s
      h''16_( a) gis
      \stringNumberSpanner "3"
      \once\override TextSpanner.extra-offset = #'(0.5 . 0)
      \once\override TextSpanner #'(bound-details right padding) = #2
      fis\stopTextSpan\startTextSpan e_( dis)
      \stringNumberSpanner "4"
      \once\override TextSpanner.extra-offset = #'(0.5 . 0.5)
      cis\stopTextSpan\startTextSpan c\stopTextSpan
    }
    \\
    {
      s4.					   <cis, a' e' a>8
      \override TextScript.extra-offset = #'(-0.5 . 6)
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
  \override TextScript.extra-offset = #'(-0.5 . -1)
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
    }
    {
      <a cis' e> r
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
      \override TextScript.extra-offset = #'(-0.5 . -2)
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
  %\key b \major
  \tag #'changeSpacingSpanner {
    \newSpacingSection
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
  <<
    {
      \once\override StringNumber.extra-offset = #'(-0.6 . -3.5)
      f8\3 b r d d_( c) r g f c' r es es_( d) s es
      f b, es16_( d) c b d8 f, b16_( a) g f
      g8 b a f'
    }
    \\
    {
      b,,,8 r <b' d> r f4
      %\once\override Slur.direction = #DOWN
      \once\override Slur.positions = #'(1 . -4)
      \stemUp
      \acciaccatura {\slashI es'16[ a, c,]}
      \stemDown
      f,8 r
      a r <c' es> r b,4
      %\once\override Slur.direction = #DOWN
      \shape #'((0.3 . 0.3) (0 . -0.3) (0.6 . -0.2) (1 . 0.2)) Slur
      \stemUp
      \acciaccatura {\slashIII b'16[ a' d]}
      \stemDown
      g8^. h,,\rest
      as4 g fis? f es8 c' f, d'
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
      b''8 g
    }
    \\
    {
      es,4
    }
  >>
  <<
    {
      f'8 b r d d_( c) r g f c' r es es_( d) r es
      f b, es16_( d) c b d8 f, b16_( a) g f
      g8 b c a
    }
    \\
    {
      b,,8 r \stemUp \acciaccatura <a' cis> \stemDown <b d> r f8 r16 a'
      f es c e,? a,8 r \stemUp \acciaccatura <h' d> \stemDown <c es> r
      b,8 b'16\rest g'
      f d b fis? d4 cis'?8 g fis c' h!4 b8 g e c
    }
  >>
  <<
    {
      b''4
    }
    \\
    {
      e,16\rest f c\glissando^( b)
    }
    \\
    {
      \voiceTwo
      f4
    }
  >>
  a16 g f es
  <<
    {
      a'_( g) f_( es) <cis, cis'>16_( <d d'>) r8
      <h h'>16_( <c c'>) r8 <a a'>16_( <b b'>) r16 es''
      d8 f b, r g c
    }
    \\
    {
      <d,, b'>4 s8 f s f s f
      <b, fis''> <fis'? d'> g, <f' cis'?> <fis,? b' es> r
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
      f'''8 b, a b c a
    }
    \\
    {
      g16 es c g <es b'>4 <f g'>
    }
  >>
  <<
    {
      b'8 s
    }
    \\
    {
      d,16 e? fis?^( g)
    }
    \\
    {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #0.3
      g,8 s
    }
  >>
  a'16 b c d
  \bar "||"
  \break
  \tag #'changeSpacingSpanner {
    \newSpacingSection
    \revert Score.SpacingSpanner.base-shortest-duration
  }
  <<
    {
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

          s8 r16 dis_([ e) gis]
        }
        \\
        {
          r8 s e
        }
        \\
        {
          <c a'>8\glissando fis, s
        }
      >>
      <<
        {
          \override Slur.direction = #DOWN
          \acciaccatura e'8\glissando fis16 gis_( a) cis
          \acciaccatura a8\glissando h16 cis_( dis) fis
          \acciaccatura dis8\glissando e16 fis( gis) h
        }
        \\
        {
          s8 a, s dis s gis
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

          s8 r16 eis_([ fis) h]
        }
        \\
        {
          r8 s fis
        }
        \\
        {
          <dis c'>8\glissando gis, s
        }
      >>
      <<
        {
          \override Slur.direction = #DOWN
          \acciaccatura fis'8\glissando gis16 his( cis) dis
          \acciaccatura gis,8\glissando a16 cis( dis) gis
          \acciaccatura a,8\glissando c16 e( fis) a
        }
        \\
        {
          s8 cis, s dis s fis
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
      \acciaccatura a'' <fis h>
      <<
        {
          <h,, fis' gis'>
        }
        \\
        {
          \once \override NoteColumn.force-hshift = #1.3
          e'
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
          h'
        }
      >>
      r
      <fis, cis' gis'> r \acciaccatura h' <eis, ais cis> r <cis gis' e'?> r
      <h' cis fis> r eis, r <cis' gis' cis> r fis, r <cis' fis a> r
      <a, cis' fis> r <dis fis' h> <e h' gis'> <fis cis' a'> r <d a' fis'> r
      <h d' fis> r <cis gis' e'> r <d a' cis>4 r8 <a e' h'>
      <c f as>4
    }
    \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"main"
      \magnifyStaff #2/3
      firstClef = ##f
    }
    {
      \key e \major
      h'8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
    }
  >>
}
