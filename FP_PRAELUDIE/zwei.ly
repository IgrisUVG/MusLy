\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsZwei = {
  \clef treble
  \key c \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  R1
  \clef bass
  R
  d4. cis8 c h,4 r8
  r4 es g2 <es es'>2. \clef treble <g fis' g'>4\sf
  <e' g' c'' es''!>4.-> <c' e'! as' c''>8
  <g' g''> <fis' c'' des'' fis''>4-> <es'! a' es''!>8->~ <es'! a' es''!>2 r8
  <<
    {
      g'8( c''4->~) c''8 as'8( des''4.) c''8\noBeam h' b'
      a'4. b'8( es''4.) ces''8( fes''4.) es''8 d'' des'' c''4
    }
    \\
    {
      r8 f'4 e' g' f' des' es'2 a'! b'4 h' f' g'
    }
  >>
  <as' d''! es'' as''>2 r4
  <<
    {
      s4
      b''8. fis''16 h''8 b''16 a'' as''->( ces'''8) b''16( c'''8.) a''16
    }
    \\
    {
      h'8.\rest e''16~
      e''8. d''16->~ d'' c''8.->~ c''8 d''16( f''->)~ f'' des''( fes''8)
    }
  >>
  <as'! c'' e'' as''!>4-> r2.
  <g' c'' es'' g''>4. <es'! es''!>8 <g' c'' es''g''>->\noBeam <b' c'' es'' b''>\noBeam
  <g' c''es''! g''> <b' d'' fis'' b''> <c'' es''! g'' c'''> <a' c'' f''! a''>4
  <b' d'' fis'' b''>8 <c'' es''! g'' c'''> <d'' fis'' b'' d'''>
  <e'' g'' c''' e'''> <fis'' b'' d''' fis'''>
  \ottava #1
  \set Staff.ottavation = #"8"
  <b'' c''' e'''! b'''> <g'' c''' es'''! g'''>4.
  \ottava #0 r2 \ottava #1 \break
  \set Staff.ottavation = #"8"
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  b'''32 g''' fis''' des''' fis''' des''' b'' g''\ottava #0
  b'' g'' fis'' des'' fis'' des'' b' g'
  \stemUp b' g' fis' des' fis' des' \change Staff = LH b g
  b g fis des! fis des b, g,\stemNeutral \change Staff = RH
  f''' des''' c''' a'' c''' a'' g'' f'' a'' g'' f'' des'' f'' des'' c'' a'
  c'' a' g' f' a' g' f' des' \stemUp f' des' c' \change Staff = LH a c' a g f\break
  \stemNeutral \change Staff = RH
  \cadenzaOn
  %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2.5)
  %\tempo "Grave"
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Grave"
  s2 s s s1
  \cadenzaOff \bar "||"
  \set Staff.printKeyCancellation = ##f
  \key g \major
  \time 2/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Largo"
  \relative g' {
    %\once\override Score.MetronomeMark.extra-offset = #'(-1 . .5)
    %\tempo "Largo"
    d32[_\markup {\italic legato}
    a' d fis] g[ fis d a] e[ g c e] g[ e c g]
    d[ a' d fis] g[ fis d a] e[ g c e] g[ e <d, g h d>16] <e a cis>4 r
    <fis a d fis>8~\noBeam q32 q <e a d e> <d fis a d>
    <c e g c>8~\noBeam q32 q <d g c d> <e g c e>
    <fis a d fis>8~\noBeam q32 q <e a d e> <d fis a d>
    <c e g c>8~\noBeam q32 q <d g c d> <e g c e>
    <fis a d fis>8~\noBeam q32 <fis ais d fis><e ais d e><d fis ais d>
    <c fis a c>8~\noBeam q32 q <d fis a d><e fis a c e>
    <fis a d fis>8~\noBeam q32 <fis a c fis><fis ais cis fis><fis ais d fis>
    q <d fis ais d><fis a d fis><a d fis a><fis a d fis><a cis e a><h d g h><gis c e gis>
    <<
      {
        fis'32 e d c~ c8 e32 d c ais~ ais8
      }
      \\
      {
        fis16 fis32 e d c16.~ c16 gis'32 fis e d16.
      }
    >>
    <d d'>32<c c'><ais ais'><gis gis'><d' d'>8~
    q16 <h e h'>32<d gis d'><fis h fis'><d gis d'><fis h fis'><gis cis gis'>
    a g! f es <es es'><des des'> h' a
    \change Staff = LH
    \stemUp
    a, g f es
    \change Staff = RH
    es' des
    \change Staff = LH
    <h, h'> <a a'>
    \stemDown
    s8 gis'64 h \change Staff = RH cis fis gis h cis fis
    \stemNeutral
    \ottava #1
    \set Staff.ottavation = #"8"
    gis[ h cis fis  gis h cis fis->]
    \times 8/11{cis h gis h cis fis-> cis h gis h cis} fis2
  }
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Восход )}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksZwei = {
  \clef bass
  \key c \minor
  \time 4/4
  \ottava #-1
  \set Staff.ottavation = #"8"
  c,4.-> g,8 <e, c>-> <es, b,>4.
  c,4.-> g,8 <e, c>-> <es, b,>4 fis,8
  <b,, f,!>4. <a,, f,>8 <as,, f,>-> <g,, f,>4 as,,8
  c,4.-> g,8 <e, c>-> <es, b,>4 fis,,8
  c,4.-> g,8 <e, c>-> <es, b,>4 <g,, g,>8
  \ottava #0
  \acciaccatura c,8 <c g c'>4. r8
  <b, b>\noBeam <g, g>-> <c, c>\noBeam <e,! e!>->~ <e,! e!>2
  \ottava #-1
  \set Staff.ottavation = #"8"
  c,,8
  \ottava #0 r c' <es, es>(
  <g, g>4) des'8 <des, des>( <f, f>4) <ges, ges>
  <c, c> <as,, as,> es8 <b,, b,> <ces, ces>4
  fes8 <ges,, ges,> <heses,, heses,>4 <b,, b,> <f,, f,>8 <e,, e,>
  <fes, fes>[ <des, des>] <c, c> <b,, b,> <ges,, ges,>2
  \ottava #-1
  \set Staff.ottavation = #"8"
  <fis,, fis,>4 <f,, f,> <c,, c,> <es,, es,>
  \ottava #0
  <c, c>-> r2.
  r4 <c e! g c'>8 <g, c e! g> <b, fis b>->\noBeam <c fis c'>\noBeam
  <b, e! b> <d fis b d'> <e! g c' e'!> <c f as! c'>4 <d fis b d'>8
  %\stemUp
  <e! g c' e'!><fis b d' fis'> \clef treble <g c' es'! g'><b d' fis' b'>
  %\stemNeutral
  <des' g' des''> <e'! g' c'' e''!>4. r2
  \clef bass
  <des, des>4. <c, c>8
  <fis,, fis,>2 <f,, f,>2. <es,, es,>4
  <e, e>4.\fermata <es, es>8 <c, c>2 <h, h> <as, as>1\fermata
  \set Staff.printKeyCancellation = ##f
  \key g \major \time 2/4
  \relative d {
    <fis, fis'>8~\noBeam q32 q <e e'> <d d'> <c c'>8~\noBeam q32 q <d d'> <e e'>
    <fis fis'>8~\noBeam q32 q <e e'> <d d'> <c c'>8. <d g d'>16 <a a'>4 r
    d'32[( e d e]) a( a[ g fis]e[ f e f] e) d[( c b]
    a64) e'[( d e d e d e]) fis( e d e) a,( e' d e)
    g, f'[( e f e f e f] c f e f d f e f)
    d' e,[( d e]) a e[( d e]) ais e[( d e]) fis e[( d e)]
    a fis[( eis fis] a[ fis eis fis] a fis e fis a fis c fis)
    r32 <c, c'><d d'><e e'><fis fis'>16.<e e'>32<d d'><fis fis'>16. q32<e e'><d d'><c c'>
    <d d'>8 h'32 a g fis~ fis4
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \set beatStructure = #'(2 2 2 2)
    fis16 <d' d'>32<c c'><ais ais'><gis gis'><fis fis'>16~
    q <d a' d>32<fis cis' fis><a e' a><fis cis' fis><a e' a><h fis' h>
    <<
      {
        s8.
        \autoBeamOff
        \crossStaff
        {
          h'32 a s8 es32 des s16
        }
        \autoBeamOn
      }
      \\
      {
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1 8)
        \set beatStructure = #'(2 2 2 2)
        a'32 g f es <es, es'><des des'><h h'><a a'> a' g f es es des h a
      }
    >>
    gis64[ h cis fis gis h cis fis]
  }
  s4. s2
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicZwei = {
  \override Hairpin.to-barline = ##f
  s1\pp s s\p s4 s2.\pp s1\p s\ff s2 s\p s s16 s8\cresc s16\! s4
  s1 s2 s4..\< s16\! s8\ff s4.\> s4..\! s16\p
  s1 s\sff s\f s1 s s s2. s4-"rit." s2 s s s1 s2\mp
}