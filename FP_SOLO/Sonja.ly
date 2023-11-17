\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Sonja"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #30
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override StaffGrouper.staff-staff-spacing.basic-distance = #14
  }
}

pocoCr = #(make-music 'CrescendoEvent
            'span-type 'text
            'span-text "p o c o
              a
              p o c o
              c r e s c.")
pocoDim = #(make-music 'CrescendoEvent
             'span-type 'text
             'span-text "dimin.")

top = \change Staff = "RH"
bot = \change Staff = "LH"

RH = \relative {
  \clef treble
  \key cis \minor
  \time 3/4
  his8^\markup{\italic legato} cis dis e eis fis gis a ais h his cis
  dis cis his cis <h e> a
  <<
    {
      s4 \stemDown gis'8 \stemNeutral s s4
    }
    \\
    {
      <fisis, dis'>8 gis \bot
      \stemUp
      eis fis! \top
      \stemDown
      <gis fisis'> a
    }
  >>
  <ais fis'!> h <gis cisis> a <h dis> his
  <cis a'> ais <h eis> cis <cisis fisis> dis
  <e gis> fis! <cisis h'> dis <e ais> his
  <cis a'!> fis <dis gis> e <cis fisis> h
  <ais fis'!> h gis a <cis e> h
  <gis dis'> a <eis cis'> fis <a his> gis
  <fisis h!> gis <eis a> fis <gis e'> a
  <<
    {
      s4 \stemDown gis'8 \stemNeutral s s4
    }
    \\
    {
      <fisis, dis'>8 gis \bot
      \stemUp
      eis fis! \top
      \stemDown
      <gis fisis'> a
    }
  >>
  <ais fis'!> h <gis cisis> a <h dis> his
  <cis a'> ais <h eis> cis <cisis fisis> dis
  <e gis> fis! <cisis h'> dis <e ais> his
  <cis a'!> dis <ais eis'> h <cis fis> cisis
  <dis his'> e <cis gis'> his <cisis fis> dis
  <c e!> h fisis gis <fis dis'> eis
  <gis cis> a h his cis dis e fis fisis gis cis h
  gis a ais h fisis gis fis! dis e a
  \ottava #1
  \set Staff.ottavation = #"8"
  his cis cisis dis eis fisis ais h! gis eis fis e his cis
  cisis dis gis fis dis e eis fis fisis gis a ais
  h gis e dis his cis dis e eis fis fisis gis
  ais h his cis h a gis a fis e dis cis e dis cisis dis gis fis
  eis fis h ais fisis gis dis' cis his h a gis
  fis e dis cisis cis his
  \ottava #0
  h! ais gis a gis fisis fis! e dis cisis cis d
  \bar "||"
  \key c \minor
  <<
    {
      \stemDown
      es8 b\rest as' b,\rest g' b,\rest s2.
    }
    \\
    {
      \bot \stemUp a,8 b h c e f \once\showStaffSwitch
      \top \stemDown <g f'> as <fis h> e <as c> a
    }
  >>
  \stemNeutral
  <b g'> g <as d> b <h e> c <cis f> d <h as'> c <d g> a
  <b fis'> es <c f> des <c e> b <a es'!> b g as <a d> b
  <as! des> g <fis c'> g <as h> g
  <<
    {
      \stemDown
      s2 <as es'>8 b\rest
    }
    \\
    {
      <e, b'> f <cis a'> d
      \stemUp \bot f e \top \stemNeutral
    }
  >>
  <<
    {
      s4 \stemDown g'8 \stemNeutral s s4
    }
    \\
    {
      <fis, d'>8 g \bot
      \stemUp
      e f! \top
      \stemDown
      <g fis'> as
    }
  >>
  \stemNeutral
  <a f'!> b <g cis> as <b d> h <c as'> a <b e> c <cis fis> d
  <es g> f! <cis b'> d <es a> h <c as'!> f <d g> es <c fis> b
  <a f'!> b g as <c es> b <g d'> as <e c'> f <as h> g
  <<
    {
      \stemDown
      s2 <gis e'>8 b\rest
    }
    \\
    {
      <fis b> g <e a> f
      \stemUp \bot fis f \top \stemNeutral
    }
  >>
  \bar "||"
  \key cis \minor
  <<
    {
      s4 \stemDown gis'8 \stemNeutral s s4
    }
    \\
    {
      <fisis, dis'>8 gis \bot
      \stemUp
      eis fis! \top
      \stemDown
      <gis fisis'> a
    }
  >>
  <ais fis'!> h <gis cisis> a <h dis> his
  <<
    {
      s4 \stemDown a'8 \stemNeutral s s4
    }
    \\
    {
      <cis, e>8 h! \bot
      \stemUp
      gis a \top
      \stemDown
      <ais gis'> h
    }
  >>
  <his fisis'> cis <gisis fis'> ais <cis eis> h
  <gis e'!> a <ais dis> h <a cisis> gis
  <eis cis'!> fis <fisis e'> gis <a dis> gis
  <fisis h> gis <ais gis'> h <his fis'> cis
  <ais dis> h <his a'> cis <dis gis> cis
  <his e> cis <dis cis'> e <eis h> fis
  <dis gis> e! <dis fis> cis <ais e'> h
  <gis dis'> a! <ais cisis> h <a cis> gis
  <eis his'> fis <fisis h> gis <fis ais> g
  <eis a!> fis <disis gis> eis <d g> es
  \bar "||"
  \key as \major
  <d as'> es <f b> as < a es'> b
  <h as'> c <d b'> es <e! es'!> f
  \ottava #1
  \set Staff.ottavation = #"8"
  <<
    {
      s4 f' es <des, des'>2<c c'>4
    }
    \\
    {
      <g' des'>8 as <f b f'> c' <es, b' es> as
      g as b as f es
    }
  >>
  \ottava #0
  <f f'>2.<fes fes'>
  <<
    {
      \stemDown
      <es es'>
    }
    \\
    {
      s4. \stemUp \bot des,8 \stemDown \top es f
    }
  >>
  <g des'> as <e c'> f < g f'> as
  <a! as'!> b <des g> c <h f'> c
  <b es> as fis g <e des'> f
  <g c> as <f ces'> ges <dis b'> e
  <eis a> fis <dis g> e <fis d'> g
  \bar "||"
  \key h \minor
  <<
    {
      s4 \stemDown fis'8 \stemNeutral s s4
    }
    \\
    {
      <eis, cis'>8 fis \bot
      \stemUp
      dis e! \top
      \stemDown
      <fis eis'> g
    }
  >>
  <gis e'!> a <fis his> g <a cis> ais
  <h g'> gis <a dis> h <his eis> cis
  < d fis> e <his a'> cis <d gis> ais
  <h g'!> e <cis fis> d < h eis> a
  <gis e'> a fis g <h d> a
  <fis cis'> g <dis h'> e <g ais> fis
  <f a!> e <dis gis> e <dis fis> cis
  \bar "||"
  \key cis \minor
  <<
    {
      cis'8 h\rest a h\rest s4
      s \stemDown gis'8 \stemNeutral s s4
    }
    \\
    {
      \bot \stemUp
      cisis,,8 dis eis fis
      \top \stemDown
      <gis e'> a
      <fisis dis'>8 gis \bot
      \stemUp
      eis fis! \top
      \stemDown
      <gis fisis'> a
    }
  >>
  <ais fis'!> h <gis cisis> a <h dis> his
  <cis a'> ais <h eis> cis <cisis fisis> dis
  <e gis> fis! <cisis h'> dis <e ais> his
  <cis a'!> fis <dis gis> e <cis fisis> h
  <ais fis'!> h gis a <cis e!> h
  <ais e'> h his cis cisis dis e eis fis fisis gis a
  ais h his cis cisis dis e2.
  \bar "|."
}

LH = \relative {
  \clef bass
  \key cis \minor
  \time 3/4
  r4
  <<
    {
      s2 h s4 e2. s4
    }
    \\
    {
      h!4( ais a gis <fisis dis'> fis! fisis gis a)
    }
  >>
  r4 dis( gis eis e dis cisis gis fisis)
  \clef treble
  dis'8_( e fis fisis
  gis4 h dis, e eis gis fis e! dis cis) r2
  %\clef bass
  r dis4(
  gis eis e dis cisis gis fisis)
  <<
    {
      s2 s2.*2 eis'4( ais, h his cis)
    }
    \\
    {
      dis8^( e fis fisis gis4 cisis, eis fis dis h gis2.) a2
    }
  >>
  r4
  \clef treble
  r
  <<
    {
      cis'( h a2 gis4 cis2. his h!)
      fis'2( e4 gis2.) r2 fis4( a2 gis4) r a!4.( eis8 gis2 fis4)
      r eis( e dis2. cis h) s2.*2
    }
    \\
    {
      s2 fis4( e) h a gis'( fis) a, fis'( eis) a, e'!( dis)
      r dis( cis) r fis( gis a ais h! his cis dis)
      r2 cis4 fis, dis'( cis) fis,( gis ais) r fisis( fis)
      r fis( eis) r eis( e \stemUp dis cisis cis his2 h4)
    }
  >>
  \bar "||"
  \key c \minor
  s2 \stemDown as4_( \stemNeutral b e d des c
  %\clef bass
  g fis)
  \once\override Slur.positions = #'(1 . 1)
  d'8( es f fis g4 b, as g c fis e es d cis) r s
  r s d( g e es d cis g fis)
  \clef treble
  d'8_( es f fis g4 b d, es e g f es d c) r4 s
  \bar "||"
  \key cis \minor
  e s
  \once\override Slur.positions = #'(1 . 1)
  dis_( gis eis e dis \stemDown d \stemNeutral fis
  cisis dis fisis cis! eis h a) r e'( dis) r a'( gis) r h(
  a) r cis_( h a gis fis eis dis cisis
  \clef bass
  a e dis h f
  \bar "||"
  \key as \major
  es8) b'-\markup{\italic legato} es f as b
  \clef treble
  es as b des c b as es des
  \clef bass
  b as es as, es' as es' as, es b f' des' f des f,
  heses, fes' des' g des fes, g, es' b' des b es,
  f, c' g' as c f e4( b as des c b f' b, g c h a
  \bar "||"
  \key h \minor
  g) r cis( fis dis d cis his fis eis)
  \clef treble
  cis'8( d e eis fis4 a cis, d dis fis e d! cis c) r2
  \bar "||"
  \key cis \minor
  s2 r4 r s dis( gis eis e dis cisis gis
  fisis) dis'8_( e fis fisis gis4 h dis, e eis gis fis e! dis
  cis2 h4 e,2.~ e)
  \bar "|."
}

Dynamic = {
  \override Hairpin.to-barline = ##f
  s2.*53\p s2.-\tweak Y-offset #-7 \pocoCr s2.*11\! s2.*4\f
  s2.*2\> s2\! s8 s\> s2 s8 s\! s4 s\pocoDim s\! s2.*3
  \once\override DynamicText.extra-offset = #'(-2 . 0)
  s2.*15\p s2 s4\> s2.*2
  \override Script.extra-offset = #'(0 . 1)
  s2.\ppp\fermata
}

\score {
  \new PianoStaff \with {
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff = "RH" \RH
    \new Dynamics \Dynamic
    \new Staff = "LH" \LH
  >>
  %\midi {
  %  \tempo 4 = 240
  %}
}