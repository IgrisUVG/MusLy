\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Aschenputtel"
  %meter = "Allegro"
  composer = "I. G."
  tagline = ##f
}

%#(set-global-staff-size 18)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    %\remove "Bar_number_engraver"
  }
}

global = {
  \override Staff.TimeSignature.stencil = ##f
  \time 6/8
  \key e \major
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \partial 4
  e''8 a,
  <<
    {
      e4.~ e8 <cis fis a><cis gis'><h fis'>4 e8~ e <fis a><dis gis>
      e4.~ e8 <cis fis a><cis gis'> e16 fis a <e gis>< fis h><gis e'>
    }
    \\
    {
      e16 a, dis cis h a dis cis cis h h a a gis dis' cis h8 cis16 dis cis h a gis~
      gis a dis cis h a dis cis cis h h a <gis h>8. s
    }
  >>
  <fis' dis'>16<e a><gis cis><h dis><gis e'><a fis'>
  <<
    {
      gis'2 s4 c,,4. dis'
    }
    \\
    {
      \omit TupletNumber
      \tuplet 37/24 {
        his16.
        %\tiny
        fisis,32^( gis ais his cis dis eis fisis
        gis ais his cis dis eis fisis
        gis ais his eis, ais fisis gis disis eis hisis
        cis ais gis eis fisis ais gis eis fisis
        %\normalsize
      }
      c16) gis' a h c a gis a cis h f dis
    }
    \\
    {
      s2. s8 e'4 s4.
    }
  >>
  <<
    {
      c2 s4 h4. h8\rest \stemDown e dis \stemUp \showStaffSwitch cis4
      \change Staff = LH
      h8~ h e dis
      \hideStaffSwitch
      \change Staff = RH
    }
    \\
    {
      e,16 g a f g d \stemUp e c d c g8 \stemDown
      h16 cis fis gis64 e fis gis a h cis dis e fis gis a
      \stemUp
      \override TrillSpanner.bound-details.right padding = #1
      \once \override TrillSpanner.extra-offset = #'(0 . 10)
      gis4.^~\startTrillSpan \stemDown gis64\stopTrillSpan h^( ais fis cis' e dis
      \ottava #1
      \set Staff.ottavation = #"8"
      gis fis h cis e dis h cis ais gis e h' fis
      dis cis h fis ais, h cis dis e fis gis ais
      h cis dis e fis gis ais h cis dis e fis gis ais h32)
      \ottava #0
    }
  >>
  <<
    {
      \dotsUp <h,,,, e gis h>4. s8 <disis disis'><dis dis'>
      <h! disis gis h!>2<dis fis ais dis>8<cisis eis ais cisis>
    }
    \\
    {
      s2. s4
      \ottava #1
      \set Staff.ottavation = #"8"
      s8 s16
      \ottava #0
      s s4
    }
    \\
    {
      \override Rest.staff-position = #-11
      r8.
      \stemUp \acciaccatura<gis' cis dis gis>8\stemDown q8.
      \stemUp \acciaccatura<gis' his eis gis>8\stemDown q <gis, his>4
      r16<gis eis'><disis' h'><gis eis'>
      <disis' h'><gis eis'><fis ais fis'>4.
      \revert Rest.staff-position
    }
  >>
  <ais,,, cisis fisis ais>2.<gisis cis eis gisis><eis gisis cisis eis>\fermata
  \bar "||"\break
  r8 dis'16 ais h eis gis fis gisis ais dis8~ dis4 eis8~ eis\noBeam ais, cisis fisis,2.
  gis4 ais8~ ais16 \stemUp dis( h cis cisis dis \stemNeutral
  eis fis ais8.) gis16~( gis fis) fis( eis) eis( dis)
  cisis( dis fis8.) eis16~( eis dis) dis( cis) cis( h)
  ais( h fisis gis ais h cisis eis gis4) h16( ais e! dis gis fisis h, ais e' cisis dis h'
  ais8. h16 cis dis e dis) dis( cis)
  <<
    {
      \stemDown ais( h ais fisis gis h ais e \stemUp dis cisis dis eis fis fisis gis4)
      ais8~ ais dis, fisis his,4.(<disis, gis>16<fisis his>< ais cis><gis his>
      \stemDown<b g'>8\noBeam)<c a'>4.\stemUp b'4 d,8 f4.<a, f'>
      \stemDown<c a'>\stemUp b'4 d,8 f4.~ f16 b,( c d f c'
      \stemDown<b des>8.)<f c'>16<d! b'><f a>
    }
    \\
    {
      s8 s4. r16 cisis8. cis8 h dis cis ais h ais gis16 fisis disis eis his <cis fisis> s4.
      s d'8. c16 a b c4 b8 s4. s d8. c16 a b c4 \hide Flag b8 s8. s
    }
  >>
  \stemUp<e g>16<d f><c a'>8.<b g'>16<a f'>8\noBeam
  \stemNeutral cis16( gis a dis fis e fisis gis) cis8~
  \time 3/4
  cis4
  \ottava #1
  \set Staff.ottavation = #"8"
  gis' h dis,4. e8\noBeam fis h gis2.
  r16 h,( cis cisis ais'[ a gis8]) eis16( e dis8~ dis4) ais' cis
  eis,4. fis8\noBeam gis cis <cis, a'!>2 r4
  <<
    {
      e4.~ e8 s4
    }
    \\
    {
      r8 cis h a[ <cis a'><h gis'>]
    }
  >>
  <a fis'>4<gis e'>8~ q[<cis a'><h gis'>]
  \time 6/8
  <gis e'>4.~ q8 <cis a'><h gis'><gis e'><h' gis'><gis h>
  \ottava #0
  <gis, e'><fis h><h, gis'><gis e'>4.(
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  %\set tupletSpannerDuration = #(ly:make-moment 1 8)
  \tuplet 4/3 {e32 fis gis a! h cis dis e fis gis a h cis dis e fis}
  <b, d g>8)\noBeam\stemUp fis^( g as4 g8)\stemNeutral
  \set subdivideBeams = ##f
  b,16( b, d as' b f' g) r\stemUp fis8^( g as4 g8)\stemNeutral
  <<
    {
      ces,16 des, as' b des as' b8( as ges f4 es8)
    }
    \\
    {
      s4 des16( es f8. es16) b[ ces] c g as\change Staff = LH\stemUp c, d g,
    }
  >>
  \stemUp d''8^( c b a4 g8)
  <<
    {
      a8 b f' c4 d8 es4.
    }
    \\
    {
      f,4 g8 a g f g4.
    }
  >>
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(3 3 3 3)
      \repeat unfold 6 {c,32 es b f'} c es b f' d es b f' es g b, d
      f g b, es g as c, f as b c, f b c d, f c' d es, g d' f f, as
    }
    \\
    {
      \repeat unfold 6 {c,8} c8 d es f g as b c d
    }
  >>
  \once\override Beam.positions = #'(7 . 3)
  \set subdivideBeams = ##t
  es32 g g, b es es, g b b, es g g, b[ as' es b']
  <<
    {
      es8( f g4 f8)
    }
    \\
    {
      \set subdivideBeams = ##t
      es32 as, b es, f' b, es g,
      g' b, d as b' d, as' b, f' as, d f,
    }
  >>
  \set subdivideBeams = ##t
  \stemNeutral
  c'32 es, g c, es c' g es' c g' es c'
  d g, h f g d f h, d g, h f as des, ges h, cis gis! h fis <eis eis'>8^>
  \set subdivideBeams = ##f
  <eis' eis'>8
  \set stemLeftBeamCount = #2
  \set stemRightBeamCount = #1
  <dis dis'>16<gis gis'>8<ais ais'>16
  <eis eis'>8
  \set stemLeftBeamCount = #2
  \set stemRightBeamCount = #1
  <dis dis'>16
  \set stemLeftBeamCount = #1
  <eis eis'><fis fis'><gis gis'>
  <a a'>8
  \set stemLeftBeamCount = #2
  \set stemRightBeamCount = #1
  <b b'>16
  \set stemLeftBeamCount = #1
  <c c'><d d'><es es'>
  <es es'>8
  \set stemLeftBeamCount = #2
  \set stemRightBeamCount = #1
  <d d'>16
  \set stemLeftBeamCount = #1
  <c c'><b b'><a a'>
  \stemUp<a a'>8^(<g g'>16) s8.
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \partial 4
  <gis h>8 e
  fis,16 cis' h' gis, gis' fis a, e' a h, gis' fis
  e, h' fis' a a gis gis fis e dis his cis
  fis, cis' h' gis, gis' fis a, e' a h, gis' fis
  e, h' fis' h a gis cis, gis' dis' e his cis
  eis,, his' fisis' gis dis' fisis,, his disis cis' gis, eis' his'
  a,! e' h' f' c e e,,, c'' gis' dis' e, gis, f c' g' h c a h gis a f c f,
  cis gis' e' dis' gis, fis' e a, dis cis gis e h fis' cis'
  \clef treble
  dis fis ais \stemDown dis, fis gis cis, fisis h,%\stemNeutral
  \clef bass
  <cis,,, cis'><gis'' dis' fis gis><cis e a cis>
  \clef treble
  <gis' h e><cis fis gis cis><gis' dis' e gis>
  \clef bass
  <eis,,, eis'><gis' his eis gis><his eis fisis his><eis ais cis eis>
  \clef treble
  <his' eis gis his><eis fisis his eis>
  \clef bass
  <cisis,,, cisis'><cisis'' h' cisis>
  \clef treble
  <gis' eis' gis><cisis h' cisis><gis' eis' gis><cisis h' cisis>
  \clef bass
  <dis,,,, dis'> fis' dis' ais' fis ais,\stemNeutral <fisis, fisis'>2.
  \ottava #-1
  \set Staff.ottavation = #"8"
  <ais, ais'><h h'>\fermata
  \ottava #0
  gis' dis''8<h' dis fis><ais dis fis> ais, <h' cisis fis><ais cisis fis>
  his,,\noBeam<fisis'' his eis><fisis his dis> dis,\noBeam<fisis' h dis><eis h' d>
  <<
    {
      \showStaffSwitch
      s8 eis' fisis
      \change Staff = RH
      \stemDown
      gis
      \stemUp
      \change Staff = LH fis4~ fis8 eis4~ eis8 dis4~
      dis8 cis4~ cis8 dis4
    }
    \\
    {
      gis,,8<h' dis> q dis, q q gis, q q fis <fis' ais> q eis, q q dis q q
    }
  >>
  eis <h'' dis><h dis gis> h, <ais' cisis fis>< gis cisis eis>
  dis <gis h e!><gis cis! e> d, <h''dis fisis> q
  gis, <h' dis gis> q ais, <gis' h fis'><gis cis e>
  h, <gis' cis e><gis cisis eis> dis, <h'' dis fisis><ais cis fisis>
  gis,,\noBeam<h'' e gis><h dis gis> dis,,\noBeam<h'' e fisis><h dis fisis>
  eis,, <his' ais'><his gis'> gis <disis' gis his><e g b>
  <f, c'><f' a h><f a c><d, b'><f' c' d><f b d>
  <b,, f'>\noBeam<b'' d e><b d f>
  <<
    {
      \showStaffSwitch
      c4.-> f-> f->
      \change Staff = RH \stemDown g4_> f8_> a4._>
      \change Staff = LH \stemUp g
      \change Staff = RH \stemDown f4
      \change Staff = LH \stemUp c8
      \change Staff = RH \stemDown f s4.
    }
    \\
    {
      \stemUp<f,,, f'>8\noBeam\stemDown<c'' g' a><c f a>
      <f, c'><f' a h><f a c><d, b'><f' c' d><f b d>
      \stemUp<b,, f'>\noBeam\stemDown<b'' d e><b d f>
      \stemUp<f,, f'>\noBeam\stemDown<c'' g' c><c f c'>
      <es b'>\noBeam\stemUp<es,, es'> a'\stemDown<b, b'><e' f b><cis! f b>
      \stemUp<his, his'>2.
    }
  >>
  <<
    {
      \repeat unfold 4 {s4 e'''( dis)}\repeat unfold 2 {s4 fis( eis)}
      s4 d( cis) s dis!( cis) s cis( h)
    }
    \\
    {
      \override Rest.staff-position = #4
      r8\clef treble gis e' gis, dis' gis, fisis' gis, e' gis, dis' gis,
      cisis gis e' gis, dis' gis, cisis gis e' gis, dis' gis,
      \clef bass
      r8\clef treble ais fis' ais, eis'ais, gisis' ais, fis' ais, eis'ais,
      fis' gis, d' gis, cis gis fis' gis, dis' gis, cis gis e' gis, cis gis h e,
      \revert Rest.staff-position
    }
    \\
    {      
      cis,,,2. fisis''''<cisis ais'> q
      dis,,,, gisis'''' fis fis e
    }
    \\
    {
      \ottava #-1
      \set Staff.ottavation = #"8" s8\ottava #0 s s2 s2.*3
      \ottava #-1
      \set Staff.ottavation = #"8" s8\ottava #0 s s2 s2.*4
    }
  >>
  fis,,16 cis' a' dis e h cis a h fis a cis,
  \clef bass
  h e, fis gis e dis h e cis ais h a e h' fis' ais h dis r4.
  <<
    {
      \override Rest.staff-position = #0
      \stemDown r16 d, b'\change Staff = RH g' a d es b ces b
      \override Rest.staff-position = #7
      \stemUp\change Staff = LH es, b r4 d16^( es f8. es16) s8
      \override Rest.staff-position = #0
      r8\stemDown es,_( f ges4 f8) es16 b' es f ges,_([ g] as8. g16) c,8\noBeam
    }
    \\
    {
      \override Rest.staff-position = #0
      s4. r8 es( f ges4 f8) r16 c g' es'\change Staff = RH c' as
      h! es d\change Staff = LH \stemUp f, d h
      \override Rest.staff-position = #7
      r8 as8^( b ces4 b8) s4.
    }
  >>
  d,16 a'\change Staff = RH es' f d \change Staff = LH f, es b' es f8.
  es8 d<b f'><b es>4<h d>8 c4. r4. R2.
  <<
    {
      s4. r8
      \shape #'((0 . 0) (5 . -1) (-5 . -5) (0 . -2)) Slur
      a( b c4\change Staff = RH\stemDown b8) s4.
    }
    \\
    {
      \override Rest.staff-position = #0
      r8 b4( as8 g f) 
      \revert Rest.staff-position
      r8\stemUp<f,, f'>(<g g'><as as'>4<g g'>8)
    }
  >>
  \stemNeutral
  \set subdivideBeams = ##t
  b32 f' b f d' as' b, f' b8 c32 g es g, <f, f'>8[(<g g'>]<as as'>4<g g'>8)
  \stemDown
  \once\override Beam.positions = #'(-8 . -9)
  as32 des as' h, fis' h cis gis\change Staff = RH eis'\change Staff = LH h cis, gis
  \stemNeutral
  \set subdivideBeams = ##f
  <dis dis'>16<ais'' fis'><dis ais'><fis dis'><dis ais'><ais fis'>
  <cis,, cis'><a''! fis'><cis a'><fis cis'><cis a'><a fis'>
  <<
    {
      \stemDown
      <b' f'><f d'><d c'><c b'><b f'><f d'>
    }
    \\
    {
      <c, c'>4.
    }
  >>
  g''16<d' b'><a' e'!><g d'>8<a c>16
  <<
    {
      d8.^\( \change Staff = RH\stemDown d'16 c b\stemUp a4_( g8)\)
    }
    \\
    {
      \override Rest.staff-position = #0
      g,16_( a32 b c d es f g fis g16) r4.
    }
  >>
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" << \global \rechts >>
    \new Dynamics = "Dynamics_pf" \dynamic
    \new Staff = "LH" << \global \links >>
  >>
}