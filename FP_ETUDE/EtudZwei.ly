\version "2.19.15"

\language "deutsch"

globalTwo = {
  \key d \major
  \time 3/4
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsTwo = \relative {
  \clef treble
  \small
  \once\override Slur.positions = #'(1 . 1)
  d''4.( cis8 d e d cis h ais a gis ais2)
  <<
    {
      \small \stemDown c4( \stemUp h4. c8 dis f \stemDown <h, gis'>2.)
    }
    \\
    {
      \small s4 g2.( \hideNotes h)
    }
  >>
  <ais cis e ais>4.( g'8 <g, e'><e cis'><fis c'!>4)
  <<
    {
      \small
      cis'8( d fis e d4)
      \shape #'(
                 ((0 . 0) (0 . 0.5) (0 . 1) (0 . 1.8))
                 ((0 . 1) (0 . 0.5) (0 . 0) (0 . 0))
                 ) Slur
      \stemDown cis8( d e d e d cis d c a c! h h4) ais8( f'
      \stemUp e4. dis8 d4) d4.( cis8 c4)
    }
    \\
    {
      \small
      gis4( <ais cis>) <fis a>2. s2.*2 <fis a>2.<fis ais>2.
    }
  >>
  <<
    {
      \shape #'(
                 ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                 ((0 . 1) (0 . 0.5) (0 . 0) (0 . -0.5))
                 ) Slur
      \normalsize
      fis'2.( eis2 cis4 e!2.) dis2( h4 d!2.) cis4( g2) ais2( d4)
      \stemDown
      d4.( cis8 d e
      \stemUp
      d cis h ais a gis b2)
      \shape #'(
                 ((0 . 0) (0 . 0.5) (0 . 1) (0 . 1.8))
                 ((0 . 2) (0 . 1.5) (0 . 1) (0 . 0))
                 ) Slur
      \stemDown
      c4( h!4. c8 dis f <e gis>2.)
    }
    \\
    {
      \small
      h8 ais h cis d e d cis ais h fisis gis gisis ais c h ais h
      c h a gis g f fis! gis a ais h gis
      f e dis e his cis d e fis g fis \showStaffSwitch e
      \change Staff = LH
      \stemUp
      \normalsize
      fis2.^( g4 fis f) g!8^( fis f e es d cis2.) e2 d4
    }
  >>
  \shape #'(
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . 2.2) (0.5 . 1.5) (0 . 1) (0 . 0.5))
             ) Slur
  \normalsize
  b''4.( g8 e cis c2 b4 as2 g4 g2) as8( b c d es f g as b4)
  \once \override Script.script-priority = #100
  \once \override TextScript.extra-offset = #'(2 . -2)
  d2\trill^\markup { \teeny \flat } <ges,, es'>2.
  <<
    {
      as4.( a8 b c
      \stemDown
      d es f g as b c2. b as g\break
      \bar "||"
      \time 3/8
      \stemUp
      fis4) s8 s4.*14
    }
    \\
    {
      s2.*3 s4 <c f> q s <c e> q s <cis! es> q
      fis16 eis fis g a b
      c e, a cis,! fis d
      g b, c e fis g a
      d cis h g a
      h a fis g eis fis
      e! f e dis cis g
      c b a b c d
      e fis g a h a
      cis a g e cis h
      \stemUp
      b a g e d fis
      \stemDown
      g a h! d e g
      fis eis fis g a b
      c e, a cis,! fis a,
      d8^> cis16 d e fis
      d fis a d fis e
    }
  >>
  \normalsize
  e16-> d his cis gis a
  eis fis dis e his cis
  gis a h d fis a
  h cis e cis ais fis
  g fis e d cis h
  ais h cis d e gis
  h a cis e d cis
  h a g fis e d
  d g, b d fis g
  d'8-> a16 e' fis, d'
  d, a' a, fis' fis, d'
  e, cis' g a g' cis,
  a' e cis' g e' h
  fis' a, d fis, a d,
  fis a, d fis, h a
  g e' h g' d h'
  g e' h g' h d,
  e a cis, g' a, fis'
  fis, d' d, a' a, fis'
  fis, d' d, a' a, fis'
  cis e h' dis a e'
  d! fis, h fis' g, cis
  a h g' b, d a'
  d cis h e, a g
  as ges cis, f es as\break
  \bar "||"
  %\once \override Slur.positions = #'(0 . -2)
  fis a, <d, fis> h'' e, <d a' cis> 
  <cis b' d> e a cis <d h e> d 
  cis fis, <gis, h> h' e, <d fis h d>
  eis' h <eis, gis cis> fis' <g, h d> a' 
  ais <e, fis cis'> e' fis <fis, ais e'> h 
  dis f, <g, h> h' <f, g dis'> h
  <gis h e> d'! fis h <h, d gis> cis' 
  e b <cis, e> g' <e b' cis> d' 
  e <cis, e ais> d cis' <ais, cis e g> fis'
  a! es <f, a> d' <a cis f> h' 
  e <cis, g' b> e a <e g d'> cis'
  <d, fis a d> g cis, fis <fis, a e'> d
  a fis' eis fis a d 
  cis ais h c cis d 
  e dis e g fis f 
  e d! cis a fis c' 
  h! as f b g e
  r fis' f cis e dis 
  d gis, a es' g, cis 
  c fis, d' cis d dis 
  e es d des f e 
  es fis f e g fis
  f e es d cis c 
  h b a as g fis 
  f e es d cis c
  \clef bass
  h b a as g fis f8 r4
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicTwo = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksTwo = \relative {
  \clef treble
  <<
    {
      fis'2.^( \stemUp \normalsize eis2 cis4 e!2.)
      \clef bass
      dis2^( h4 d!2.)\stemUp \normalsize cis4^( g2)
      \clef treble
      ais d4^( h2) ais4^( gis'2) g4^( fis2) g4^( b,2) a4^( e'2.)
    }
    \\
    {
      r4
      <<
        \voiceTwo
        {
          \small d2
        }
        \\
        {
          \once \override NoteColumn.force-hshift = #0.2
          \small ais4( h)
        }
      >>
      \stemDown
      \small
      r4 gis_~ <gis h> r fis_~ <fis ais> r f_~ <f g>
      r4
      <<
        \voiceTwo
        {
          \small h2
        }
        \\
        {
          \once \override NoteColumn.force-hshift = #0.2
          \small eis,4( fis)
        }
      >>
      \small
      r4 dis( e) r eis( fis) r g( fis) r cis'( d)
      r his( cis) r eis,( fis) r h( ais)
    }
  >>
  \clef bass
  \stemNeutral
  \small
  h,,4 <ais'' d fis><h d fis> 
  cis,, <h'' eis gis><a h eis> 
  ais,, <c'' e! fis> <c e fis>
  g,, <h'' dis f> q 
  fis,, <gis'' h d! fis!><gis h d fis> 
  cis,, <e' g! ais><e g ais>
  fis,, <e'' fis ais c> q
  \clef treble
  \stemDown
  \once \override Slur.positions = #'(-2 . -2)
  \normalsize
  h'2.~( h4 cis d d2 g,4 h2.) h
  <<
    {
      e2. f2 fis4 <c e><d f><c e><b es>2.
      \clef bass
      <b e!> e4 f2 ces4.( b8 heses4) <c f>2.
    }
    \\
    {
      b2. as b(
      \once \override NoteColumn.force-hshift = #1.3
      as4 g2) ges2. <f b>2 <fes as>4 es2. <d as'>
    }
  >>
  \stemNeutral
  <g c fis>2.
  <<
    {
      \once \override NoteColumn.force-hshift = #0.4
      \normalsize
      des'4( dis e
      \stemDown
      f2. fis! g)
    }
    \\
    {
      b,2. s4 d8( b f4) s c'8( as e4) s h'8( g es4)
    }
    \\
    {
      \voiceOne
      g'2.
    }
  >>
  \stemNeutral
  \normalsize
  d,8 <a' b d>8. e16 a,8 <g' e'>8. g,16 des'8 <g b e>8. g,16 
  e'8 <g cis e>8. a16 d,8 <gis d' fis>8. a,16 e8 <h'' e g>8. h,16 
  es,8 <g' cis! es>8. <es>16 a,8 <a' d>8. fis,16 a,8 <g'' a cis>8. e,16 
  g,8 <a'' b d>8. e,16 e'8 <a d e>8. a,16 d8 <a' b d>8.  e16 
  a,8 <g' cis! e>8. g,16 fis8 <a' d fis>8. a,16 d8 <a' d fis>8. e16
  a,8 <a' cis g'>8. e16 a,8 <a' cis f g>8. a,16 d8 <a' d fis>8. a,16 
  fis8 <ais' e' fis>8. cis,16 h8 <d' fis>8. fis,16 h,8 <gis' d' e>8. e,16 
  a8 <g'! cis e>8. e16 h8 <fis' h d>8. d16 g,8 <b' d>8. g16
  d8 <fis a d> e, fis <fis' a d> q e <g cis e> fis, 
  g <a' cis e> q fis <a d fis> g, a <fis' a d> q
  g <h d> a, h <g' h d> q cis, <a' e' g> q 
  d, <a' d fis> q r <d,fis> q cis <gis' h cis>8. a,16 
  e'8 <g! h d>8. h,16 a8 <g' d' es>8. g,16 e8 <g' cis e!>8. a,16 
  es8 <b'' es f>8. ges16
  d, <fis' a> gis, a d fis
  g, <a'b d> a, b d fis
  h,,! <fis'' h! d> fis, h d gis
  cis,, <h'' cis eis> fisis, gis cis eis
  fis, <ais' cis fis> his, cis e! fis
  g, <g' h f'> h, dis e f
  gis, <h' d! fis!> h, d fis gis
  g,! <h' cis e> b, cis dis e
  fis, <ais' cis e> ais, his cis e
  f, <a' d> gis, a d f
  e, <a' cis e> g, a cis e
  d, <a'' d fis> a, d fis gis
  d,,8 <g''! a d><e fis h><d fis a><a d fis><g h e>
  <<
    {
      r <e' g a> r <fis gis h> r4 <fis a b>8 r <e g b>
      <fis a d> r <e gis cis> r <f as c><f as ces>
      a4 gis8~ gis a
      \once \override Accidental.extra-offset = #'(1 . 0)
      dis,~ dis! f4 h,4. b~ \hideNotes b
    }
    \\
    {
      <d, d'>4<cis cis'>8~ q <d d'><gis, gis'>~ q <b b'>4<e, e'>4.<es es'>
      <e'' g>8<dis fis><d f><cis e><c es>
      \once \override NoteColumn.force-hshift = #1.7
      \once \override Accidental.extra-offset = #'(2.5 . 0)
      <h d!><b cis><a c><gis h>
      \once \override NoteColumn.force-hshift = #2
      \once \override Accidental.extra-offset = #'(2.6 . 0)
      <g b><fis a><f as><e g><es ges><d f>
      \stemUp
      <cis e b'><c es a><h d as'><b des g><a c fis><gis h f'><g! b e>8 r4
    }
  >>
}