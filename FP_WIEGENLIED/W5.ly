\version "2.19.15"

\language "deutsch"

%%%%%%%% VOICE %%%%%%%%%%%%
funfteSong = \relative {
  \clef treble
  \key e \minor
  \time 2/4
  \partial 4
  r4 R2*3
  r4 g'8 a
  \bar "||" \break
  h2 g8 fis e dis e2
  r4 g8 a \break
  h4 g8 g g fis e dis e2 r  \break
  d eis g8 g g fis e4. e8 dis2 \break
  r d eis e! r4 g8 a
  \bar "||" \break
  h4 g8 g g fis e dis e2 r4 g8 a \break
  h g g g g fis e dis e2 r \break
  d eis4 eis8 fis g g g <fis \tweak font-size #-3 a>
  <e \tweak font-size #-3 h'>4. <e \tweak font-size #-3 h'>8
  <dis \tweak font-size #-3 b'>2 \break
  r d eis e! R2 \break
  \override Staff.TimeSignature.stencil = ##f
  \time 3/4
  R2.*4
  \bar "|."
}
funfteLyrics = \lyricmode {
  \partial 4
  4 2*3 4
  За8 -- сы -- пай,2 всё8 объ -- я -- ла ночь.2.
  И8 во -- круг4 бро8 -- дит дед на ко -- сты -- ле.2
  2 Спи,2 спи. Те8 -- ни у -- же здесь4 в8 у -- глу.2
  2 Спи,2 спи, спи...2.
  По8 -- смо -- три,4 ах,8 ка -- кой кра -- си -- вый сон.2.
  Се8 -- ре -- бром по чёр -- ной тка -- ни и бриль -- янт.2
  2 Спи,2 спи.4 И8 во сне у -- же спа -- се4. -- нья8 нет.2
  2 Спи,2 спи, спи...
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicFunf = {
  \override Hairpin.to-barline = ##f

}

%%%%%%%% GUITAR %%%%%%%%%%%
funfteGuitar = \relative {
  \clef "treble_8"
  \key e \minor
  \time 2/4
  \partial 4
  h'8 c
  <<
    {
      \stemDown
      \times 2/3 {h4\prall a g}
    }
    \\
    {
      \stemUp
      e,,2
    }
  >>
  <<
    {
      a''4 s8
      \stemDown
      h16( c)
    }
    \\
    {
      \voiceOne
      d,8\rest a[ d] s
    }
    \\
    {
      \voiceTwo
      f,2
    }
  >>
  <<
    {
      \stemDown
      <ais cis'>4.<h fis' a dis>8
    }
    \\
    {
      s8 e[ g] s
    }
  >>
  #(define afterGraceFraction (cons 15 16))
  <cis, g' ais e'>4\fermata
  \afterGrace <h, h''\harmonic>\glissando
  {\hideNotes fis16 \unHideNotes}
  \bar "||"
  \set Staff.beatStructure = #'( 4)
  <<
    {
      e''8 h g_( a) b g'_( e) d e ais, e' gis
    }
    \\
    {
      <e,, e'>4 h' b2 cis
    }
  >>
  #(define afterGraceFraction (cons 15 16))
  <gis' e' ais>4
  \set glissandoMap = #'((0 . 0) (0 . 0) (2 . 2))
  \override StringNumber.extra-offset = #'(1.5 . -4.5)
  \afterGrace <h, h'\2 h'>\glissando
  {\hideNotes <fis fis' fis'>16 \unHideNotes }
  <<
    {
      e''8 h g_( a) b g'_( e) d e ais, e' gis
    }
    \\
    {
      <e,, e'>4 h' b2 cis
    }
  >>
  <gis' e' ais>2
  <<
    {
      s8 <f d'> h <f d'>
      s <gis eis'> h <gis eis'>
      \stemDown
      s c( h) g
    }
    \\
    {
      <d a''!>2<cis gis''><h g'! e'!>
    }
  >>
  e8 dis e fis
  <<
    {
      g e g d'
    }
    \\
    {
      b,2
    }
  >>
  <a dis g cis>2
  <<
    {
      s8 <f' d'> h <f d'>
      s <gis eis'> h <gis eis'>
      s d' g, a
    }
    \\
    {
      <d, a''>2<cis gis''><b g''>
    }
  >>
  b'8 <a c><g d'><fis dis'>
  \bar "||"
  <<
    {
      e'8 h g_( a) b g'_( e) d e ais, e' gis
    }
    \\
    {
      <e,, e'>4 h' b2 cis
    }
  >>
  #(define afterGraceFraction (cons 15 16))
  <gis' e' ais>4
  \set glissandoMap = #'((0 . 0) (0 . 0) (2 . 2))
  \afterGrace <h, h' h'>\glissando
  {\hideNotes <fis fis' fis'>16 \unHideNotes }
  <<
    {
      e''8 h g_( a) b g'_( e) d e ais, e' gis
    }
    \\
    {
      <e,, e'>4 h' b2 cis
    }
  >>
  <gis' e' ais>2
  <<
    {
      s8 <f d'> h <f d'>
      s <gis eis'> h <gis eis'>
      \stemDown
      s c( h) g
    }
    \\
    {
      <d a''!>2<cis gis''><h g'! e'!>
    }
  >>
  e8 dis e fis
  <<
    {
      g e g d'
    }
    \\
    {
      b,2
    }
  >>
  <a dis g cis>2
  <<
    {
      s8 <f' d'> h <f d'>
      s <gis eis'> h <gis eis'>
      s d' g, a
    }
    \\
    {
      <d, a''>2<cis gis''><b g''>
    }
  >>
  b'8 <a c><g d'><fis dis'>
  \override Staff.TimeSignature.stencil = ##f
  \time 3/4
  <<
    {
      h8[ c] \times 2/3 {h4\prall a g}
    }
    \\
    {
      <e, e' e'>2 s4
    }
  >>
  <<
    {
      a'2 h8_( c)
    }
    \\
    {
      s8 a, d2
    }
    \\
    {
      \voiceTwo
      f,2 s4
    }
  >>
  <<
    {
      <ais cis'>2 dis'8\fermata g\fermata
    }
    \\
    {
      s8 e, g4 <h, fis' a>
    }
  >>
  <e, h' e g cis fis>2 s4
  \bar "|."
}