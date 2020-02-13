\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "4" }
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #28
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key des \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \set Staff.printKeyCancellation = ##f
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  %\set Staff.beatStructure = #'( 4)
  r8 f'( <es ges><f as><ases eses'>2)
  <<
    {
      <ges des'>2 r8
      \shape #'(
                 ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                 ((0 . 0.5) (0 . 0) (0 . -0.5) (-0.5 . -1))
                 ) Slur
      ges( <f as><ges b>
      <heses fes'>2)
    }
    \\
    {
      r4 <f b> s2 r4 r16 <fes ces'> q q
    }
  >>
  <eses b'>8[ <des as'>] \change Staff = LH
  \bar ""
  <heses fes'>(<ges des'>
  <eses heses'>)<des as'>(<ces ges'><heses fes'>
  as16) c( as' b es, c' f! as)
  \change Staff = RH
  r8 f( <es ges><f as><g d'>2)
  <<
    {
      <ges! des'!>2
    }
    \\
    {
      r4 <eses heses'>
    }
  >>
  b'16( des f ges) es( ges b des)
  des,( f as c) c,( es ges b) b,( des f as) as,( c es ges)
  \shape #'((0 . 0) (1 . 0) (-1 . 0) (-0.5 . 2)) Slur
  ges,( b es ges b, es ges b \times 4/6 {des16 b ges es b ges}
  es32 c \change Staff = LH as ges es c b ges \change Staff = RH
  <as' des>4)<as c><as b><as c>8<as des>
  <as es'>4<as ges'><as f'>2
  <es' b'>4<des as'><c ges'><des as'>8<es b'><f c'>4<as es'>
  <<
    {
      des2~ des1
    }
    \\
    {
      <ges, des'>4<f c'><es b'>2<des as'>
    }
  >>
  \bar "||"\break
  <<
    {
      \tiny
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \change Staff = LH es32 \change Staff = RH
      as,( des f b as b as)
      \change Staff = LH b,\change Staff = RH
      ges( des' es as ges as ges)
      \change Staff = LH f \change Staff = RH
      as,( des es ges f ges f)
      \change Staff = LH c \change Staff = RH
      as( b es ges f ges f)
      \stemDown
      des \change Staff = LH
      f,( b c es des c des)
      \change Staff = RH ges \change Staff = LH
      es,( ges ces es des es des)
      \change Staff = RH as' \change Staff = LH
      \shape #'((0 . -3.8) (-1 . 4) (0 . 0) (0 . -1)) Slur
      fes,( b d ges fes \change Staff = RH ges fes) ges \change Staff = LH
      es,( b' es ges f ges f)
      \change Staff = RH ges \change Staff = LH
      \shape #'((0 . -6) (-0.5 . 4) (0 . -0.5) (0 . 0)) Slur
      des,( as' \change Staff = RH f' as[ ges b as~] as) \change Staff = LH
      \shape #'((0 . -6) (0 . 3) (0 . 0) (0 . 0)) Slur
      as,,( f' des' \change Staff = RH f[ es f es)] \change Staff = LH ces
      \shape #'((0 . 0) (2 . 2.5) (1.5 . -1) (0 . 0)) Slur
      eses,( ases \change Staff = RH eses' ges[ fes ges fes)] \change Staff = LH eses
      \shape #'((0 . -6) (0 . 3) (0 . 0) (0 . 0)) Slur
      ces,( ases' ces \change Staff = RH fes[ eses fes eses)] \change Staff = LH b
      \shape #'((0 . 0) (2 . 4) (0 . -1.5) (0 . 0)) Slur
      ges,( es'! f \change Staff = RH es'[ des es des]) \change Staff = LH c
      \shape #'((0 . -2.5) (2 . 4) (0 . -1.5) (0 . 0)) Slur
      es,( b' \change Staff = RH des ges[ f ges f)] \change Staff = LH des
      \shape #'((0 . 0) (2 . 4) (0 . -1.5) (0 . 0)) Slur
      b,( ges' as \change Staff = RH es'[ des es des)] \change Staff = LH as
      \shape #'((0 . 0) (2 . 4) (0 . -1.5) (0 . 0)) Slur
      ges,( des' b' \change Staff = RH f'[ es f es)] \change Staff = LH heses
      \shape #'((0.2 . 0) (3 . 4) (0 . -1.5) (0 . 0)) Slur
      des,( fes ces' \change Staff = RH ges'[ fes ges fes)] \change Staff = LH as,
      \shape #'((0 . 0) (2.5 . 4) (0 . -1) (0 . 0)) Slur
      fes( \change Staff = RH des' heses' des[ ces des ces)] \change Staff = LH fes,,
      \shape #'((0 . 0) (1 . 4.5) (0 . -7) (0 . 0)) Slur
      heses( \change Staff = RH des fes ces' heses ces heses
      as heses, fes' des' ges fes ges fes)
    }
    \\
    {
      \tiny
      s32 as,,8 s ges s as s as s \change Staff = LH
      \stemUp
      f s es s fes s es s des s as s eses' s ces s
      ges s es' s b s ges s des' s fes s16. s2
    }
    \\
    {
      s1*2 r8 <as' f'>(<b es ges><c f as>\stemDown<fes ases eses'>2)
      \stemUp
      <es! ges des'> r8 <b ges'>(<c f as><des ges b>
      \stemDown<fes b! ces fes>2) s
    }
  >>
  \bar "||"
  \set baseMoment = #(ly:make-moment 1 8)
  %\set subdivideBeams = ##t
  r16 <ces fes>(<as c f><c des ges><ces es as><f b><fes ges ces><ges as des>
  <f b! es>2)
  \set subdivideBeams = ##t
  \change Staff = LH
  \shape #'((0 . -5.5) (2 . 3) (0 . 2) (0 . 0)) Slur
  as,,,32( es' b' c es, as b c \change Staff = RH es \change Staff = LH as,
  \change Staff = RH des f as b es as b2) \change Staff = LH \stemUp
  \shape #'((0 . 0) (0 . 3) (0 . 2) (0 . 0)) Slur
  eses,,,,32( b' des ces eses b' ces des \change Staff = RH \stemDown
  eses b des ges b ces eses ges as2)
  \set subdivideBeams = ##f
  \stemUp
  \override Rest.extra-offset = #'(0 . 2)
  r16 <c, es as c> q q q^( <b c f b>) q^( <as b es as>) q2^>
  r16 <c es as c> q q q^( <b c f b>) q^( <as b es as>)
  r16 <c e as c> q q q^( <b c f b>) q^( <as b e as>)
  <des f as des>4^> r <es ges heses es>^> r
  \revert Rest.extra-offset
  \stemUp
  \set subdivideBeams = ##t
  <f f'>32^> des, es f ges as f des
  \stemNeutral
  ges c, es b' as b, es c'
  b f ges es' des es, f es' b des, ges b es f, des' as
  b ges b ces es f, as des ges, ces es, ges as c es, ges
  eses' ges, ases des ces b des, f as ges ces, eses b' des, f b
  des ges, b es c es, ges b des ges, b es c es, g b
  c es, ges as f c' as es des c ges' es des es b' f
  es ges b es des es, f c' b ges f es c des as' f
  c' as ges c b ges des es f ges as b c des es f
  ges as ges f b es, f ges as b as f ges f des es
  des ges f es f ges as b c es, f ges b as des, es
  \stemUp
  fes as ges fes es des c b
  \stemNeutral
  as ges f! ges fes es des c
  \clef bass
  b as ges f! ges fes es des ces heses ases ges fes eses des ces
  b!1-^
  \clef treble
  r16 des''(<c es><des f><c es a>8.<ces eses>16)
  r <c des> r <a c>
  <<
    {
      r32
      \shape #'(
                 ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                 ((0 . 2) (0 . 1) (0 . 0) (-0.5 . -1))
                 ) Slur
      e'( f ges c b f ges ases2) r4 r8
      \shape #'(
                 ((-2 . 0) (-1 . 2) (-0.5 . 2) (0 . 1.5))
                 ((0 . 1) (0 . 0.5) (0 . 0) (-0.5 . -1.5))
                 ) Slur
      es'( heses'8.) r16 heses8.( eses,16)
      \once\override Rest.extra-offset = #'(8 . -1)
      r2 r8 f,( ges8.) r16 ces8.( f,16) r4
      r8 b~( b16 es,) r <ges ces es>->
      <ges heses c fes>-^ s8. s4
    }
    \\
    {
      s4 r16 \repeat unfold 7 {<des fes>}
      r \repeat unfold 7 {<des es>}
      r \repeat unfold 3 {<deses es>}
      \repeat unfold 4 {<deses eses>}
      r \repeat unfold 7 {<h d>}
      r \repeat unfold 3 {<b d>}
      \repeat unfold 4 {<b des>}
      r \repeat unfold 7 {<ces des>}
      r \repeat unfold 7 {<ces es>}
      \stemUp
      r es^( <d f!><es g><d f h>8.<des fes>16)
    }
  >>
  \time 3/4
  \override Staff.TimeSignature #'stencil = ##f
  r16 <c es> r <h d>
  r32 fis'_( g as d c g as heses16) b32( c f es b c)
  \time 4/4
  <<
    {
      r16
      \once\override Slur.positions = #'(1 . 1)
      f,( ges as ges' f des c \bar ""
      h8) g16( as b a g f a h8 cis16 es8 des)\bar ""
      d16( es f8) f16( des b heses
      as)\noBeam
      \once\override Slur.positions = #'(1 . 1)
      f( ges as ges' f des c\bar ""
      h8) g16( as b a g f a h8 cis16 es8 des)\bar ""
      d16( es f8) f16 s
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \change Staff = LH \stemUp f,,64 \change Staff = RH
      \stemDown
      des' as des f des as des ges es as, es' as f des f
      ges' as, des, as' f' as, des, as' des as es as c ges es ges
      h f d f \change Staff = LH \stemUp e,\stemDown
      \change Staff = RH f' d f g e d e as e c e
      b' f c f a f c f g d h d f d h d
      a' fis d fis h fis d fis r gis h, gis' cis gis e gis
      es' b des, b' \change Staff = LH \stemUp ges,\stemDown
      \change Staff = RH b' des, b' des b ges b
      \change Staff = LH \stemUp b,,\stemDown
      \change Staff = RH ges'' des ges
      d' c ges c es c ges c f des as des f, des' as des
      f es as, es' des as f as b ges es ges heses ges des ges
      as f des f f des as des ges es as, es' as f des f
      ges' as, des, as' f' as, des, as' des as es as c ges es ges
      h f d f \change Staff = LH \stemUp e,\stemDown
      \change Staff = RH f' d f g e d e as e c e
      b' f c f a f c f g d h d f d h d
      a' fis d fis h fis d fis r gis h, gis' cis gis e gis
      es' b des, b' \change Staff = LH \stemUp ges,\stemDown
      \change Staff = RH b' des, b' des b ges b
      \change Staff = LH \stemUp b,,\stemDown
      \change Staff = RH ges'' des ges
      d' c ges c es c ges c f des as des f, des' as des
      f[ es as, es' r des f, des']
    }
  >>
  r b des, b' as f b, as
  \time 7/8
  r32 ges64 b des ges b des ges[ b des ges <des b'>16->]
  c'64 b as g f es des c b as g f es des c b\bar ""
  r16 \change Staff = LH des,64 \change Staff = RH
  es as ces es as ces es_~ <es as>16->
  heses,,64 des fes heses des[ fes heses des~]
  \time 4/4
  des8 des4 as f des8
  <<
    {
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \override Slur.positions = #'(3.5 . 0)
      as4~( \times 2/3 {as16 b c} des32 es f ges as8[ ges])
    }
    \\
    {
      \tuplet 6/4 4 {
        as,16<des, f> q q q q
        \override TupletNumber #'transparent = ##t
        as' <des, f><des f ges><des f as> q q
        as'' <des,, ges heses> q q q q
      }
    }
  >>
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \set baseMoment = #(ly:make-moment 1 4)
  \times 4/6 {<es ges ces>16 q q q q q}
  <<
    {
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      des'4~ \times 2/3 {des16 es( as,} b8~
      \times 2/3 {
        b16)
        \once\override Slur.positions = #'(1 . 1)
        c( g
      } \times 2/3 {as8 ges16~}
      \times 2/3 {
        ges16)
        \shape #'(
                   ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                   ((0 . 3) (0 . 2.5) (0 . 2) (0 . 1))
                   ) Slur
        f( es
      }
      f8~ f)\noBeam f(<es ges><f as><fes asas eses'>2)
    }
    \\
    {
      \override TupletNumber #'transparent = ##t
      \tuplet 6/4 4 {
        des'16<des, ges> q q q q des' q q q q q
        b <b, f'> q q q q ges' <c, es> q q q q
      }<as des>4 s s2
    }
  >>
  <es' ges des'>8--\noBeam ges(<f as><ges b>
  <fes heses ces fes>4<ges ces es ges><as des f as>2) r
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key des \major
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      des,16_( as' b es_~ es) as,,8 <ges'' b des>16
    }
    \\
    {
      des,4 s
    }
  >>
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 {
    ases8
    \makeOctaves #1 {
      des' ces b ases ges~
    }
  }
  <ges es'>16( b es b'~ b) es,,( b' f')
  \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) Slur
  ges,( des' as' b~ b) <as des>8 des,,16_~
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \override Beam #'breakable = ##t
  des
  \clef treble
  \override TupletBracket #'bracket-visibility = ##f
  \shape #'(
             ((0 . 0) (0 . 11) (-2 . 4) (0 . 2))
             ((0 . 2) (0 . 0) (0 . 0) (0 . 0))
             ) Slur
  as'''32( ges \times 2/3 {fes16 es des}
  \clef bass
  heses32 as ges fes es des heses fes
  eses[ des heses64 fes' ges des'] fes ces'
  \change Staff = RH
  des fes ges as heses ces
  des[ es fes ges as heses ces des]
  es f ges as heses ces heses ges
  f!8)\noBeam <c,,! f!>(<es as><ges ces><b es>2->)
  \change Staff = LH
  \unset baseMoment
  \shape #'((0 . -1.5) (0 . 1) (-0.5 . 0) (0 . -0.5)) Slur
  as,,16( c as' b es, c'8) b,,16~ b
  \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -2)) Slur
  f'''( d a es b' f g,)
  \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) Slur
  ces,( ges'! eses' heses' ces, ges'
  \change Staff = RH
  des' ases')
  \change Staff = LH
  \clef treble
  r8
  \shape #'(
             ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
             ((0 . -2) (0 . -1) (0 . 0) (0 . 0))
             ) Slur
  ges( <f as><ges b><as c><ges b><f as><es ges><des f><ces es><b des>4)
  \clef bass <as c>1
  f,4 es des es8 f ges4 b as b
  <<
    {
      as'4 as as as8 as as4 as as2~ as1
    }
    \\
    {
      c,4 b as b8 c des4 f es des c b as2
    }
  >>
  es''8. des32( c b8~ b32) as( b c f8~ f32) ges,( as b c8.) es32( des\once\showStaffSwitch
  \change Staff = RH
  des8.) es32( f ges8~ ges32) ces ges( f as8.	) ges32( fes ges8~ ges32)
  des'_( b as
  ges8.)\noBeam\once\showStaffSwitch
  \change Staff = LH
  f32( es~ \stemUp es16.) des32~ \stemDown des16.[ c32]\stemUp
  ces 8.\noBeam \stemDown b32( ces \stemUp eses8.)\noBeam
  \stemDown des32( ces \stemUp
  b8^~\noBeam \stemDown b32) ges( as b \stemUp c8.)\noBeam
  \stemDown b32( c \stemUp des8.)\noBeam \stemDown c32( b \stemUp
  as8~\noBeam \stemDown as32) des( c b \stemUp heses8.)\noBeam
  \stemDown as32( ges \stemUp as8.)\noBeam \stemDown ges16( \stemUp fes2)
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \stemNeutral
  heses,32( f'! as ges b! as ges f fes es des ces heses![ as ges fes])
  \shape #'((0 . -6) (2 . 3) (0 . 2) (0 . 0)) Slur
  es( as c b es as b! c \change Staff = RH es \change Staff = LH as,
  \change Staff = RH des f! as b es as c2)\change Staff = LH
  \shape #'((0 . 0) (2 . 3) (0 . 2) (0 . 0)) Slur
  f,,,,32( b d c f b \change Staff = RH c d \stemDown
  f b, es g b c f b ces2) \change Staff = LH \stemUp
  \shape #'((0 . -1) (0 . 3) (0 . 2) (0 . 0)) Slur
  des,,,,32( ges des' b des ges b des \change Staff = RH \stemDown
  f b, des ges b des ges b)
  <<
    {
      \stemDown
      \override Rest.extra-offset = #'(0 . -8)
      r16 <c,, f ges b> q q q_( <b c es as>) q_( <as c des ges>) q2_>
      r16 <c f ges b> q q q_( <b c es as>) q_( <as c des ges>)
      r16 <c f ges b> q q q_( <b c e as>) q_( <as c des ges>)
      <des ges b>4_> r <es as c>_> r
      \revert Rest.extra-offset
    }
    \\
    {
      \change Staff = LH
      \stemUp
      as,,,1-^
      \once\override Rest.extra-offset = #'(12 . 0)
      r2 as2-^ \acciaccatura ges8 ges4 r \acciaccatura f8 f4 r
    }
  >>
  \change Staff = LH
  \stemNeutral
  <f'' f'>32-> des es f ges as f des ges c, es b' as b, es c'
  b f ges es' des es, f es' b des, ges b es f, des' as
  b ges b ces es f, as des ges, ces es, ges as c es, ges
  eses' ges, ases des ces b des, f as ges ces, eses b' des, f b
  des ges, b es c es, ges b des ges, b es c es, g b
  c es, ges as f c' as es des c ges' es des es b' f
  es ges b es des es, f c' b ges f es c des as' f
  c' as ges c b ges des es f ges as b c des es f
  des,,8-^ <es' f as des>-^ r4 r8 des,-^\noBeam <f'ges as es'>-> r
  \change Staff = RH fes''32 \change Staff = LH \stemDown
  as, ges fes es des c b \stemNeutral as ges f! ges fes es des c
  \ottava #-1
  \set Staff.ottavation = #"8"
  b as ges f! ges fes es des ces heses ases ges fes eses des ces
  b!1-^ \ottava #0
  <<
    {
      b''16 <f' b><f a><f b> ges, < ges' as><ges b><ges as>
      b, <f' g> c <es ges> des <as' des><ges c es><as ces des>
    }
    \\
    {
      b,4 ges b8 c des4
    }
  >>
  b'2 b ges,, g as heses b!
  <<
    {
      r16 <g'' c><g h><g c> as, <as' h><as c><as h>
    }
    \\
    {
      s4 as,
    }
    \\
    {
      c,!2
    }
  >>
  \override Staff.TimeSignature #'stencil = ##f
  <<
    {
      c'16 <g' a> d <f as> es <b' es><as d f><b des es>
      es, <ges as es'><as des f><ges c es>
    }
    \\
    {
      c,8 d es4 es
    }
  >>
  <des,, des'>8\noBeam c'' b as
  <<
    {
      s8 e'8.
    }
    \\
    {
      g,8. h16 c8 g
    }
  >>
  \set baseMoment = #(ly:make-moment 1 1)
  \override Beam #'breakable = ##t
  fis e \stemDown ges16 ges' des b \stemNeutral as8 des4 as8
  des,16 r32 as-.[_( des-. f-.] as-.[ des-. f-. as-.] b16--) r16.
  as,,32-.[_(d-. g-.] \stemDown h-.[ d-. e-. g-.] b16--) r8
  \stemNeutral
  r32 g,,-.[_( d'-. g-.] h-.[ d-. fis-. a-.] e'16--) r r16.
  \shape #'(
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
             ) Slur
  ges,,,32-.[_( des'-. ges-.] b-.[ des-. ges-. b-.] c16--) r
  r32 as,,-.[_( des-. f-.] as-. des-. f-. as-.] des16--)
  \set baseMoment = #(ly:make-moment 1 8)
  \time 7/8
  ges,64 des es des c b as ges f[ es des c b as ges f]
  es f g b es g b es g[ b es g b16->]
  as64 ges f es des ces b as ges f es des ces b as ges
  \times 8/9 {fes es des ces heses as ges fes es}
  \time 4/4
  \set baseMoment = #(ly:make-moment 1 4)
  \times 4/6 {des16 des' as' f'! as, des,}
  <<
    {
      \once\override Slur.positions = #'(1 . 1)
      es''4( f des) r8
      \stemDown c \noBeam( b as
      \stemUp ges4) s s2 es'8[( des])
    }
    \\
    {
      \tuplet 6/4 4 {
        as'16 des,,, as' f' as, des,
        c''16 des,, as' f' as, des,
        b''16 des,, as' f' as, des,
      }
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \override TupletBracket #'bracket-visibility = ##f
      s2 \times 2/3 {r16 des'( fes} es16.) des32(
      \stemUp
      ces heses as ges f es des ces
      b!16) r \stemNeutral ces''8\noBeam( b as
      g4)
    }
  >>
  as8~\noBeam \times 2/3 {as8 ges16}
  f4( <es as des>8<des ges c><ces fes ces'>2)
  <b es b'>8--\noBeam<es b' es>(<des as' des><ces ges' ces>
  <heses fes' des'>4<ces ges' es'><des as' f'>2) r
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
  s1*2\mp
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}