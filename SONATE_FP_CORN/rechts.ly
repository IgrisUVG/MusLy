\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "slash.ly"
\include "noteHeads.ly"
%\include "makeOctaves.ly"

rechts = {
  \clef treble
  \override Staff.TimeSignature #'stencil = ##f
  %\override DynamicLineSpanner.staff-padding = #6
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
  <c' f' as' c''>4<des' f' as' des''>
  <<
    {
      <as' des'' es'' as''>2<b b'>
    }
    \\
    {
      \times 2/3 {\hideNotes a4 \unHideNotes<f as des' f'><fes as des' fes'>}
      s8 <ges ces' es'><ges ces' eses'>4
    }
  >>
  <cis' fis' a'! cis''>4<d' fis'! a' d''>
  \tuplet 3/2 2 {
    r4 <d'! fis' ais' d''!><des' gis' h' des''>
    <d' fis' ais' d''><des' gis' h' des''><b' d'' g'' b''>
  }
  <<
    {
      \stemDown
      <f'' b'' des''' f'''>2
      \times 2/3 {
        d''2\rest
        \ottava #1
        \set Staff.ottavation = #"8"
        <b''! b'''>4
      }
    }
    \\
    {
      \times 2/3 {h4\rest<fis h! dis' fis'><fis h d' fis'>}
      <fis h cis' fis'>2
    }
  >>
  <h''! h'''!>1~ <h'' h'''>
  \ottava #0
  \ottava #1
  \set Staff.ottavation = #"8"
  <as'' b'' as''' b'''>
  <b'' des''' b'''>
  \ottava #0
  \clef bass
  <<
    {
      \voiceFour
      \once \override Stem.length = #13
      <d f cis'>2 ^\fermata
    }
    \\
    {
      \voiceTwo
      \once \override NoteHead.X-offset = #1.0
      \once \override Stem.length = #8.5
      \once \override Stem.rotation = #'(-35 10 -0.1)
      \once \override Stem.extra-offset = #'(-0.4 . 0.2)
      \once \override Accidental.extra-offset = #'(3.8 . 0)
      fis
    }
  >>
  r
  \repeat unfold 4 {
    <<
      {
        <f b>2 q
      }
      \\
      {
        r4 <c des>2.
      }
    >>
  }
  \clef treble
  <<
    {
      d''2\rest <fis' cis'' dis''>
      \repeat unfold 3 {h'2\rest<fis' cis'' dis''>}
    }
    \\
    {
      \repeat unfold 4 {s4 e'!2.}
    }
    \\
    {
      e'4\rest s2.
      \change Staff = LH gis,1 fis, e,
      \change Staff = RH
    }
  >>
  \clef bass
  \repeat unfold 2 {<h e' fis'>2<d e h!>}<a d' e'>4 \clef treble <c' f' g'>
  <es' f' b'><ges' ces'' des''><f' b' c''!>1<g' a' f''><b' es'' f''>
  \override TupletBracket #'bracket-visibility = ##f
  \ottava #1
  \set Staff.ottavation = #"8"
  \relative g'''{
    ges8 des' \acciaccatura {b16[ des]} b8 as f \times 2/3 {des16( es des} c8) as b4
  }
  \ottava #0
  <b' c'' f''>4<a'! e''!>
  <<
    {
      \stemDown
      <f' f''>~ q1 <f b d'>
      \stemUp
      <c' es'>2<d'! f'> r <f' b'> s <es f b><b as' b'><heses' des''>
      <des' ges'>
    }
    \\
    {
      s4 r2 <g b es'> s <as' es'' b''>
      b4 as d' c' <b d'>1<g c' g'>
      \override NoteColumn.force-hshift = #1.7
      g'4 f'
      \override NoteColumn.force-hshift = #0
      es' eses'
      \override NoteColumn.force-hshift = #1.7
      <c' c''><b b'>
    }
  >>
  <des' ges' ces'' des''>4<fes' as' b' es''>
  <as' b' es'' as''>2<a! es' a'!>
  <<
    {
      <f' des''>2 s s4 <b ges'>
      \clef bass
      \override NoteColumn.ignore-collision = ##t
      \stemDown e'2
    }
    \\
    {
      r4 <es' es''>^(<ges' as' es'' ges''><ces'' des'' ges'' ces'''>
      <des'' ges'' b'' des'''>2) d!4 \clef treble \stemUp a'
    }
  >>
  <h! c''!>2 s4.
  \ottava #1
  \set Staff.ottavation = #"8"
  s8
  \relative e''' {
    as16 es c b f' d es b' c b as es f es des as
    cis gis' dis cis e! cis' gis a! fisis cis' gis e a gis e cis
    \repeat unfold 3 {fis e h h' fis ais, fis' e h h' fis e e' h e,}
    fis e h ais' fis ais, fis' e ais, ais' fis e e' ais, e fis e ais, ais'
    fis ais, fis' e a, a' fis e e' a, e fis e a, a' fis a, fis' e gis,
    gis' fis e e' gis, e fis e gis, gis' fis gis, fis' e gis, gis' fis e e' gis,
    e fis e gis, gis' fis gis, fis' f e as, as' g f f' as, h c f, c g' as des, as
    \ottava #0
    h c f, c g' as des, as h c f, c g' as des, as
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      <es es'>2 s4 <h h'>
    }
    \\
    {
      d''4\rest c'16 es' g' gis'~
      \stemUp
      gis'4
      \stemDown
      h16 e' f' gis'
    }
  >>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %{ <<
     {
     <es es'>2 s4 <h h'>
     }
     \\
     {
     \shape #'((1 . -10.5) (1 . -2) (0 . 0) (0 . 0)) PhrasingSlur
     d''4\rest^\( c'16 es' g'\) gis'~
     \stemUp
     \shape #'((-4.5 . -6.3) (-1 . 0) (0 . 0) (0 . 0)) PhrasingSlur
     gis'4^\(
     \stemDown
     h16 e' f' gis'\)
     }
     >>
     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     %{ <<
     {
     <es es'>2 s4 <h h'>
     }
     \\
     {
     \change Staff = LH
     a16\rest^\( \stemUp as, es b
     \change Staff = RH
     \stemDown c'16 es' g'\) gis'~
     \stemUp
     gis'4
     }
     \\
     {
     s2
     \change Staff = LH
     c'16\rest \stemUp e, h, gis
     \change Staff = RH
     \stemDown
     h16 e' f' gis'
     }
     >>%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <e' e''>2 <h' e'' h''>
  s1 \clef bass
  <cis f c'!>2.\fermata \clef treble
  \acciaccatura {\slashI ais''16[ h'' c''']}<es'' d'''>4 <g' h' c'' fis''>2-. r
  s1 r8
  <<
    {
      s8\startTrillSpan s2. s2. s8. s16\stopTrillSpan
    }
    \\
    {
      \stemUp e'!8~ e'2.~ e'1 s1
    }
  >>
  <a e' a'>1<gis cis' fis'>2<g c' f'><es as>1 r2
  \relative g'{
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \tuplet 3/2 2 {
      r4<gis h e gis>-.<g h e g>-.<fis h e fis>-.\stemDown<eis ais dis eis>-.<e ais dis e>-.
      <dis gis h dis>-.<d gis h d>-.<cis gis' h cis>-. r \stemNeutral<c es as c>-.<ces es as ces>-.
      <b es as b>-.<a! b es a!>-.<as b es as>-.
    }
    <g b es g>4-.^> r <a h e a>-.^> r
    \tuplet 3/2 2 {
      r4<d fis h d>-.<cis fis h cis>-.<a' b es a>-.<as b! es as>-.<g b es g>-.
    }
    <fis a cis fis>4-.-> r <as h f' as>-.-> r
  }
  \bar "||"
  \time 3/2
  <<
    {
      \repeat unfold 33 <e'''>1.
    }
    \\
    {
      s1.*3 \relative c'' {
        cis1. d cis h1 e2 cis1. d cis1 a2 h1 e2 cis1. d cis1 a2 h1 e2 cis1. d cis1 a2 h1 e2
        fis1. g fis2. e4 d2 e1. fis g fis2. e4 d2 e1. cis d cis1 a2 h1. s1.*2
      }
    }
  >>
  \bar "||"
  \time 4/4
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      dis'''2. e''4( dis'''2.) e''4( d'''!2) as'' d''1
    }
    \\
    {
      dis'''8 cis'' h' fis' as'4. g'8
      dis'''8 cis'' h' fis' as'4. g'8
      r4 r8 f' \change Staff = LH \stemUp e' d' \change Staff = RH r \stemDown ges'
      \change Staff = LH a\rest \stemUp ges\noBeam \change Staff = RH \stemDown f' e' c'2
    }
  >>
  \relative c' {
    r8 <cis fis a cis>(<c e fis c'><h es g h><b d as' b>4) r
    r8 <cis fis a cis>(<c e fis c'><h es g h><b d as' b>4) r
    r8 <cis dis f cis'>(<c e c'><h! es f h!><b d ges b>4) r
    \tuplet 3/2 4 {
      \override TupletNumber #'transparent = ##f
      \override TupletBracket #'bracket-visibility = #'if-no-beam
      \ottava #1
      \set Staff.ottavation = #"8"
      <d'' h'>8 fis h,
      \ottava #0
      fis cis f d as g
    }
    cis4
    \bar "||"
    \time 7/8
    \set Timing.beatStructure = #'(4 3)
    \repeat unfold 9 { <d, g a d>2<c g' a c>8<d g a d><e g a e'> }
    \repeat unfold 4 {
      <d g a h d>2
      %\displaceHeads #'(0 1 -1 1 -1)
      <
      c
      \tweak extra-offset #'(1.2 . 0)
      g'
      \tweak extra-offset #'(-1.3 . 0)
      a
      \tweak extra-offset #'(1.2 . 0)
      h
      \tweak extra-offset #'(-1.3 . 0)
      c
      >8
      <d g a h d><e g a h e>
    }
    <d g a h d>2
    %\displaceHeads #'(0 1 -1 1 -1)
    <
    c
    \tweak extra-offset #'(1.2 . 0)
    g'
    \tweak extra-offset #'(-1.3 . 0)
    a
    \tweak extra-offset #'(1.2 . 0)
    h
    \tweak extra-offset #'(-1.3 . 0)
    c
    >8
    <d g a h d><e! g a h e!>
    <d g a h d>2
    %\displaceHeads #'(0 1 -1 1 -1)
    <
    c!
    \tweak extra-offset #'(1.2 . 0)
    g'
    \tweak extra-offset #'(-1.3 . 0)
    a
    \tweak extra-offset #'(1.2 . 0)
    h
    \tweak extra-offset #'(-1.3 . 0)
    c!
    >8
    <d g a h d><e g a h e>
    <d! g a h d!>2
    %\displaceHeads #'(0 1 -1 1 -1)
    <
    c
    \tweak extra-offset #'(1.2 . 0)
    g'
    \tweak extra-offset #'(-1.3 . 0)
    a
    \tweak extra-offset #'(1.2 . 0)
    h
    \tweak extra-offset #'(-1.3 . 0)
    c
    >8
    <d g a h! d><e g a h e>
  }
}