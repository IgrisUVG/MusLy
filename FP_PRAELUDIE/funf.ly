\version "2.18.0"

\language "deutsch"

pocoCr = #(make-music 'CrescendoEvent
            'span-type 'text
            'span-text "poco cresc.")
pocoDim = #(make-music 'CrescendoEvent
             'span-type 'text
             'span-text "poco dimin.")
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsFunf = \relative b' {
  \clef treble
  \key b \minor
  \once \omit Staff.TimeSignature
  \time 8/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "nonPresto"
  \ottava #1
  \set Staff.ottavation = #"8"
  ges''16\mp b c b ges es c b
  \ottava #0
  ges fes es c b ges fes es <ces ces'>4 <des des'>8 <d d'> <es es'> <fes fes'>4.
  \once \omit Staff.TimeSignature
  \time 6/4
  <as! as'!>8 <f!f'!>4. b16 c es f as h c es c h as f es c a as
  \once \omit Staff.TimeSignature
  \time 10/4
  g e des \change Staff = LH a f des b g \change Staff = RH <e'' e'>4
  \stemUp
  <fis fis'>8 <g g'> <as as'> <a a'>4. \stemNeutral
  a'16 c e f \bar""\break a f e cis a! f e cis a! f e cis
  \once \omit Staff.TimeSignature
  \time 3/2
  \tuplet 3/2 4{
    \change Staff = LH b8[ \change Staff = RH es! f] b es f
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \change Staff = LH ces,8[ \change Staff = RH es ges] b es ges
    \change Staff = LH as,,8[ \change Staff = RH es' f] b des f
  }
  \once \omit Staff.TimeSignature
  \time 6/2
  \tuplet 3/2 4{
    \change Staff = LH ges,,8[ \change Staff = RH ces des] ces' des ges
    \change Staff = LH e,,8[ b' \change Staff = RH des] b' des ges
    \change Staff = LH b,,8[ \change Staff = RH des g] b des g
    e[ b' des] es![ ges b] %\bar ""\break
    ges[ e es] b ges des b[ as es!] des \change Staff = LH b g
  }
  \change Staff = RH
  \once \omit Staff.TimeSignature
  \time 8/4
  des''16 f as f es des c as f des \change Staff = LH c as s4 \change Staff = RH
  <des' des'>4 \stemUp <es es'>8 <e e'> <f f'> <ges ges'>4.
  \once \omit Staff.TimeSignature
  \time 6/4
  \override Staff.NoteCollision.prefer-dotted-right = ##f
  <b b'>8 <g g'>4. s2. c,,16 d g c
  \stemNeutral
  \once \omit Staff.TimeSignature
  \time 9/4
  es[ f as f] es[ des b as] f[ es des \change Staff = LH b] \change Staff = RH
  as'4 <b, b'>8 <des des'>4 <d d'>8 <es es'>4. <e e'>8 \stemUp <f f'>4 \stemNeutral
  \once \omit Staff.TimeSignature
  \time 7/4
  <<
    {
      <as as'>16 des es! ges
    }
    \\
    {
      \autoBeamOff
      \crossStaff
      {
        <des,! as'>4
      }
      \autoBeamOn
    }
  >>
  as''16 b des es ges as ges es des b as ges e des b as ges e des
  \change Staff = LH b s4 \change Staff = RH
  \once \omit Staff.TimeSignature
  \time 8/4
  ges''16 c b c b c b c b c es ges as b as ges es c b ges es c b as ges es c
  \change Staff = LH b s4 \change Staff = RH
  \once \omit Staff.TimeSignature
  \time 6/4
  \stemUp
  s2. heses''4 s2
  s2. ges4 s2
  \stemNeutral
  \once \omit Staff.TimeSignature
  \time 9/4
  c,4 des16[ es des c] b c b as
  <<
    {
      g16[ as b ces]
    }
    \\
    {
      \autoBeamOff
      \crossStaff
      {
        g4
      }
      \autoBeamOn
    }
  >>
  es'16[ fes g as] b ces es f g[ ges es b] ges es b ges es[ \change Staff = LH b ges es]
  \change Staff = RH
  \bar "||"
  \set Staff.printKeyCancellation = ##f
  \key b \major
  \time 5/4
  %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2.5)
  %\tempo "Moderato"
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Moderato"
  \change Staff = LH
  \stemUp
  c'8\rest fis, b[ c \change Staff = RH eis b'] \stemNeutral c[ d eis fis]
  f![ d] \stemUp fis[ <d, d'> es fis] \stemNeutral a[ b d fis]
  des[ b] as[ <a, ges'> es' f] ges[ b des ges]
  f[ d] c[ b es, f] b[ es f b]
  a[ fis] \stemUp e[ \change Staff = LH cis, \change Staff = RH fis b]
  \stemNeutral c![ es fis gis]
  f![ d] \stemUp c[ \change Staff = LH b, \change Staff = RH c! es]
  \stemNeutral fis[ a d fis]
  f![ des] b[ a, b des] es[ b' des ges]
  f[ des] b[ b, des es] f[ as c des]
  \time 4/4
  f[ es] c[ b, d ges] b[ c]
  \time 5/4
  \stemUp b1^~ b4
  \once\override Slur.positions = #'(1 . 1)
  d1^( c4 b1^~ b4) d1 s4 s s1
  s1\fermata r4 \bar "||"
  \set Staff.printKeyCancellation = ##f
  \key es \minor
  \time 4/4
  %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2.5)
  %\tempo "Allegretto"
  \override Score.RehearsalMark.extra-offset = #'(14 . 2)
  \mark "Allegretto"
  r16 des, es8 as16 ges8 d16
  <<
    {
      es16 ges f ges es des b'8~ <ges b>4 r2. s1
    }
    \\
    {
      es4 s8 b'16 as
      f2.( es8 des es2. f8 des c \change Staff = LH \stemUp b as b g2)\change Staff = RH
    }
  >>
  <b f' b>16<des ges des'><es as es'>8<as des as'>16<ges ces ges'>8<d a' d>16
  <es b' es><ges ges'><f f'><ges ges'><es b' es><des as' des><b' f' b><as es' as>
  <ges des' ges><es b' es><des as' des><ges b><es as><des ges> es des
  \clef bass
  <b, ges' b><as es' as><ges des' ges><es b' es>
  <des as' des><b ges' b><des as' des><es b' es>
  <<
    {
      %s4
      \hideNotes
      es'''16 ges as ges
      \unHideNotes
      \clef treble
      \stemDown
      \repeat unfold 3 {\tuplet 6/4 {es16 ges as b as ges}}
      \repeat unfold 2 {\tuplet 6/4 {es16 f as b as f}}
      \repeat unfold 4 {\tuplet 6/4 {es16 ges as b as ges}}
      \stemUp
      \once\override Beam.positions = #'(10.5 . 12.5)
      \change Staff = LH es,,16 fes as\change Staff = RH des
      \once\override Beam.positions = #'(10.5 . 12.5)
      \change Staff = LH fes, as\change Staff = RH des es->~(es4~
      es8. es16->~
      es4~ es8. ges16->~ges4~ges8. fes16->~fes4~fes8. b16->~b4~b8 ces16 b
      as4~ as8 b16 ges) des'2.(ces8 b ces2. des8 b as ges fes ges es4~es8.) s16
      ases4(eses')ges,(des')fes,(ces')es,4~(es8. es16~es4~es8. es16~es4~es8.)s16
    }
    \\
    {
      \shape #'((1 . 4.8)(7 . 8)(-4.5 . 1)(0 . 1)) Slur
      <ges,, des' ges>4(
      \change Staff = LH
      \stemDown
      ges'2)\( f8 es f2. ges8 es \stemUp des ces b ces
      \stemDown
      as2\)
    }
  >>
  \change Staff = LH es'32[^( fes as\change Staff = RH \stemDown des]
  es[ fes as des]) es2( des8) r
  \change Staff = LH \stemUp es,32[^( fes as\change Staff = RH \stemDown des]
  es[ fes as des]) es2( des8) r
  \change Staff = LH \stemUp es,32[^( fes as\change Staff = RH \stemDown
  \ottava #1
  \set Staff.ottavation = #"8"
  des] es[ fes as des])
  <<
    {
      es32[ des as fes] \stemDown es[ des\ottava #0 as fes]
    }
    \\
    {
      es''4
    }
  >>
  es,,32[ des as fes]\stemUp es[ des\change Staff = LH as fes] es[ des as fes] es8
  \change Staff = RH s1*3
  r16 des'' es8 as16 ges8 d16
  <<
    {
      es16 ges f ges
    }
    \\
    {
      es4
    }
  >>
  es16 des <des ges b>8 \stemNeutral q <des f b><des es b'><b des b'>
  <des es b'><des f b><es f b><f ges b><as b des><b ces es><des es ges> q
  <es fes as>4 q\bar "||"
  \key e \major
  \time 3/4
  %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2.5)
  %\tempo "Lento"
  \override Score.RehearsalMark.extra-offset = #'(14 . 2)
  \mark "Lento"
  \stemNeutral
  <gis, h e gis>4 q<a h e a><fis h e fis><fis a dis fis><fis gis dis' fis>
  <fis gis cis fis><e gis cis e><e g cis e><e gis! h e><dis gis h dis><e! fis a e'>
  <fis h dis fis><fis a dis fis><gis dis' gis><ais cis fis ais><a dis fis a><gis e' gis>
  <g h e g> q <a h e a><fis h e fis> q q <fis h dis fis> q <fis h cis fis>
  <fis h dis fis><dis fis h dis> q q q <e fis h e><cis fis h cis><cis fis ais cis>
  <cis fis gis cis><dis fis h dis><dis fisis h dis><e fisis h e>
  <cis fisis h cis><cis fisis ais cis><cis fis ais cis><dis fis h dis> q q
  <fis ais cis fis> q <e gis h e><h e gis h><gis h e gis>
  \clef bass
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(2 2 2)
  <e gis h e><dis fis h dis><dis fis ais dis><dis fis gis dis'>
  <cis fis h cis><cis fis ais cis><cis fis gis cis><dis fis h><dis fis> dis
  e8 <e g><e g h><e g h e>\clef treble <g! h e g><h e g h><h dis fis h>4\clef bass
  <fis h dis fis><dis fis h dis><e g h e>8\noBeam \clef treble <g! h e g><h e g h><e g h e>
  <g h e g><h e g h><h dis fis h>4<fis h dis fis><dis fis h dis>
  <e g h e>8<g h e g><h e g h>
  \ottava #1
  \set Staff.ottavation = #"8"
  <e g h e><g h e g><h e g h>
  \time 2/4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  <h dis fis h>4\ottava #0 <h, e g h><h dis fis h>\clef bass <e,, g h><dis fis h> r
  \clef treble
  fis''2( dis4. cis8 dis4.) cis16( dis~dis8 fis4 dis8) fis2~(fis8 dis4 cis8~
  cis dis4) cis8( dis32) cis( dis e fis gis ais h cis h cis dis e fis gis16~
  gis8) gis32( fis e dis e8..) fis32 fis8..\noBeam
  \change Staff = LH \stemDown fis,,,,32 fis4\stemNeutral
  \set subdivideBeams = ##f
  \tuplet 6/4 4 {
    fis''16 dis' fis\change Staff = RH h fis dis\change Staff = LH
    fis16 dis' fis\change Staff = RH
    \ottava #1
    \set Staff.ottavation = #"8"
    h fis dis
  }
  \repeat unfold 4 {r8<h dis fis h>-- r q <h e g h>-- q r q}
  r <h dis fis h>4-- q8\ottava #0 r2\fermata
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksFunf = \relative b {
  \clef bass
  \key b \minor
  \once \omit Staff.TimeSignature
  \time 8/4
  <es,, es'>2
  %-\tweak #'X-offset #-0.5 -\tweak #'Y-offset #0.5
  \mf s
  \change Staff = RH ces''16 \change Staff = LH b ges fes
  es ces b ges fes es ces b ces fes ases ces
  \once \omit Staff.TimeSignature
  \time 6/4
  es f! as! b \change Staff = RH \stemDown c es f as
  \change Staff = LH \stemNeutral <f,, f'>4
  <ges ges'>8 <g g'> <as as'>\noBeam <a a'>4.
  \once \omit Staff.TimeSignature
  \time 10/4
  <des des'>8 <b b'>4. e,16 g as b d e g as b
  \change Staff = RH d e ges a c e f \change Staff = LH
  s1
  \once \omit Staff.TimeSignature
  \time 3/2
  b,,2 ces as
  \once \omit Staff.TimeSignature
  \time 6/2
  ges e1 s1.
  \once \omit Staff.TimeSignature
  \time 8/4
  c4 des8 es e f f16 es des c a c des f a c \change Staff = RH des f a c des f b c des c
  \change Staff = LH
  \once \omit Staff.TimeSignature
  \time 6/4
  \change Staff = RH
  b ges f es d c g d c \change Staff = LH g d c g d c d g c d g s4
  \once \omit Staff.TimeSignature
  \time 9/4
  \stemDown
  r2 <f, c' des as'>4
  \stemNeutral
  <<
    {
      \autoBeamOff
      \crossStaff
      {
        as'4
      }
      \autoBeamOn
    }
    \\
    {
      as16[ f es des]
    }
  >>
  b as f es
  <<
    {
      des b c d f[ g b c]
    }
    \\
    {
      s16 b,4 s8.
    }
  >>
  d'16 f g b \change Staff = RH \stemDown c[ d f g] \change Staff = LH \stemNeutral
  \once \omit Staff.TimeSignature
  \time 7/4
  <as, b>4 s4 r2 as,, as''16 ges e des
  \once \omit Staff.TimeSignature
  \time 8/4
  c8 c'4. b8 as4 ges8 es c4. s4 ges'16 es c b
  \once \omit Staff.TimeSignature
  \time 6/4
  heses ces eses geses heses ces \change Staff = RH eses geses
  heses ces eses geses heses geses eses ces heses geses eses ces
  \change Staff = LH heses geses eses ces
  ges! b! des es! ges b \change Staff = RH des es ges b des es
  ges es des b ges es des \change Staff = LH b ges es des b
  \once \omit Staff.TimeSignature
  \time 9/4
  f[ as c des] es f as c des4 g, s1 s4
  \set Staff.printKeyCancellation = ##f
  \key b \major
  \time 5/4
  d1 c4
  <<
    {
      r8 f!
      \autoBeamOff
      \crossStaff
      {
        b8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      b,1~ \stemUp b4
    }
  >>
  <<
    {
      r8 des
      \autoBeamOff
      \crossStaff
      {
        ges8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      ges,2. \stemUp f2
    }
  >>
  <<
    {
      r8 es'
      \autoBeamOff
      \crossStaff
      {
        f8 b
      }
      \autoBeamOn
      s4 s2
    }
    \\
    {
      b,1~ \stemUp b4
    }
  >>
  <<
    {
      r8 a'
      \autoBeamOff
      \crossStaff
      {
        d8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      d,2. es!4 fis
    }
  >>
  <<
    {
      r8 d
      \autoBeamOff
      \crossStaff
      {
        fis8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      b,1 \stemUp c4
    }
  >>
  <<
    {
      r8 des
      \autoBeamOff
      \crossStaff
      {
        ges8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      ges,2. \stemUp f2
    }
  >>
  <<
    {
      r8 fis'
      \autoBeamOff
      \crossStaff
      {
        as8
      }
      \autoBeamOn
      s4. s2
    }
    \\
    {
      b,1~ \stemUp b4
    }
  >>
  \time 4/4
  <<
    {
      r8 es\noBeam
      \autoBeamOff
      \crossStaff
      {
        ges8
      }
      \autoBeamOn
      s8 s2
    }
    \\
    {
      g,1
    }
  >>
  \time 5/4
  <<
    {r8 fis' b[ \change Staff = RH \stemDown d es f!] fis[ a b c]\change Staff = LH}
    \\{b,,1 r4}
  >>
  <<
    {r8 d f[ b \change Staff = RH \stemDown cis d] es[ f fis a]\change Staff = LH}
    \\{b,,1 r4}
  >>
  <<
    {r8 fis' b[ \change Staff = RH \stemDown d es f!] fis[ a b c]\change Staff = LH}
    \\{b,,1 r4}
  >>
  \clef treble
  <<
    {
      r8 fis''' b[ \change Staff = RH \stemDown
      \ottava #1
      \set Staff.ottavation = #"8"
      d es f!] fis[ a b c]
      d1\ottava #0 r4 \change Staff = LH
    }
    \\{b,,,1 s4 s s1}
  >>
  <g' b es g>1 \clef bass s4
  \set Staff.printKeyCancellation = ##f
  \key es \minor
  \time 4/4
  <<
    \override NoteColumn.ignore-collision = ##t
    {
      b,4~ b8 ces~ \stemDown ces2
    }
    \\
    {
      b,8. f'16~ f8 ces~ ces2
    }
  >>
  <b b'>4 r2. R1 s1
  <des, as' des>16<es b' es><fes ces' fes>8<b f' b>16<as es' as>8<ges d' ges>16
  <as des as'>8<b es b'><ges ces ges'>16<f b f'><des' as' des><ces ges' ces>
  <<
    {
      s8.
      \autoBeamOff
      \crossStaff
      {
        b'16 as ges <es b'><des as'>
      }
      \autoBeamOn
    }
    \\
    {
      <b es b'><as des as'><ges b ges'><es as es'>
      <des ges des'><b es b'><as des as'><ges b ges'>
    }
  >>
  \ottava #-1
  \set Staff.ottavation = #"8"
  <es as es'><des ges des'><b es b'><as des as'>
  <\parenthesize ges b ges'><\parenthesize es as es'><\parenthesize ges b ges'><as des as'>
  <b es b'>4 \ottava #0 s 2. s1*2
  <<
    {
      es''2 \repeat unfold 17 {es}
    }
    \\
    {
      \mergeDifferentlyHeadedOn
      es16 fes as\change Staff = RH des \change Staff = LH
      fes, as\change Staff = RH des es\change Staff = LH
      \repeat unfold 11 {
        es,16 fes as\change Staff = RH des \change Staff = LH
        fes, as\change Staff = RH des es\change Staff = LH
      }
      es,16 fes as!\change Staff = RH des \change Staff = LH
      fes, as\change Staff = RH des es!\change Staff = LH
      \repeat unfold 5 {
        es,16 fes as\change Staff = RH des \change Staff = LH
        fes, as\change Staff = RH des es\change Staff = LH
      }
    }
  >>
  \mark \markup { \musicglyph #"scripts.ufermata" }
  es,2 s \clef treble \stemDown es' s es' \clef bass s
  \stemNeutral
  des,,,2.( ces8 b ces2. des8 b as ges f! ges es2)\fermata
  <<
    \override NoteColumn.ignore-collision = ##t
    {
      b'''4~ b8 ces~ \stemDown ces2
    }
    \\
    {
      b,8. f'16~ f8 ces~ ces2
    }
  >>
  <b b'>8 q <as as'><ges ges'><as as'><b b'><des des'><es es'>
  \clef treble
  <ges ges'><as as'><b b'><ces ces'><des des'>4<deses deses'>
  \key e \major
  \time 3/4
  \clef bass
  \stemNeutral
  <e,, h' e> q q q <fis h dis fis><gis his dis gis><gis cis gis'><gis cis e gis>
  <ais cis e ais><h e gis h><h eis gis h><cis fis a! cis><cis fis h cis><dis fis h dis>
  <e! fis h e><fis ais fis'><fis a c fis><e h' e><h e h'><g h e g><e h' e>
  <e h' e><dis h' dis><cis h' cis>\repeat unfold 21 {<h h'>} <ais ais'> q <gis gis'>
  <e e'><gis gis'><h h'> q <h ais' h><h gis' h><h fis' h><h fis' ais h><h fis' gis h>
  \repeat unfold 3 {<h fis' h> q q <h g' h> q q}<h fis' h><h' g' h><h fis' h>
  <h, g' h><h fis' h><h' dis fis h>
  \tuplet 6/4 4 {
    h16 fis' h dis h fis h, fis' h dis h fis
    \override TupletBracket #'bracket-visibility = ##f
    \override TupletNumber #'transparent = ##t
    h, g' h e h g h, g' h e h g
    h, fis' h dis h fis h, fis' h dis h fis
    h, g' h e h g h, g' h e h g
    h, fis' h dis h fis h, fis' h dis h fis
    h, g' h e h g h, g' h e h g
    h, fis' h dis h fis h, fis' h dis h fis
    ais, fis' ais dis ais fis ais, fis' ais dis ais fis
    gis, e' gis cis gis e gis, e' gis cis gis e
    \stemUp fis, dis' fis h fis dis fis\change Staff = RH dis' fis h fis dis\stemNeutral
    \change Staff = LH \clef treble
  }
  s2 fis2_( dis4. cis8 fis2 dis4. cis8 dis4\clef bass fis, dis,4. cis8 dis2)
  r r r\fermata
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Царица ночи )}}
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicFunf = {
  \override Hairpin.to-barline = ##f
  s1 s s s2 s1 s s2
  \once\override DynamicText.extra-offset = #'(0.2 . 2)
  s\pp s4 s8\cresc s8\! s2 s1 s s4 s2.\<
  s1\sf s s1. s2.\>
  \once\override DynamicText.extra-offset = #'(0.5 . 0)
  s4\mp s2\< s2.\mf
  \once\override DynamicText.extra-offset = #'(-2 . 0)
  s\sf s8 s8\> s2.
  s1*2\p s1.*2 s2\p s4\< s1\sf s2-"rit."
  s1\mp s4 \repeat unfold 7 {s1 s4} s1
  \repeat unfold 4 {s1 s4} s1\pp s4 s1 s4
  s1\f s2\> s2\p s1*2 s1\f s2 s2\> s4 s2.\mp s2 s2\>
  s4. s16 s32 
  \once\override DynamicText.extra-offset = #'(0.5 . 0)
  s\pp s2 s2 s8\cresc s8\! s4 s1*2 s1*3\mf
  s16\dim s8.\! s2. s1 s2. s4\pp s1\sf s1\sf
  \once\override DynamicText.extra-offset = #'(-0.5 . 0.5)
  s2\sf s16\dim s16\! s4. s1*2\p s2 s2\pp
  s1\f s4.\pocoCr s8\! s2 s2. s4\ff
  s2\p s4\< s2. s4 s\f s\> s2 s4\p s2.\<
  s4\f s2\> s2.\mf s2.*2\< s4\f s2\sp\<
  s2.\mp s2.\pocoDim s2.*2\! s4 s\pp s s2.*4
  s2.\pp s2 s4\pocoCr s2.*4\! s4\ff s4\mf s s\mp s s\pp
  s1\p s4. s8\< s2 s2*3\mf s2\< s2\mf s4 s16 s8\dim s16\!
  \once\override DynamicText.extra-offset = #'(0.2 . 1)
  s1\pp s4 s8\dim s\! s2*3 
  \once\override DynamicText.extra-offset = #'(0.5 . 0)
  s1*2\ppp
}