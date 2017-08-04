\version "2.19.11"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "7" }
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #30
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
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
  \key as \major
  \time 6/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set Staff.beatStructure = #'(1 1 1 1 1 1)
  \override Staff.TimeSignature.stencil = ##f
  <<
    {
      \stemDown
      c''4( des16 c h c es8) as,-- b16( c des8) g16( as b8~ b16) g( f e
      \stemUp
      des2~ des16) es( des c
      \stemDown
      b8 es4) des8~
      \stemUp
      des16 es,_( as c)
    }
    \\
    {
      s1. r8 <f, as><e a><es ces'><ges b>4 s2.
    }
  >>
  <<
    {
      \stemDown
      es'4( des~
      \stemUp
      des16) es( fes ges) c,!8( b) b4--
    }
    \\
    {
      s2 a4( as) g!
    }
  >>
  c16( es f g)
  <<
    {
      as4( s \stemDown c8) f,--
      g16( as b8) es16( f g8~ g16) es( des c
      \stemUp
      b2~ b16) c( b as \stemDown
      g8 c,4) b8~ \stemUp b16 c,_( f a)
    }
    \\
    {
      des8 c \makeOctaves #1 {b16 as g as} s1
      r8 <des f><des ges><h as'> es4 s2.
    }
  >>
  <<
    {
      c4.( b8 es2)
      \shape #'(
                 ((0 . 0) (0 . -1) (0 . -2) (0 . -3))
                 ((0 . -1.5) (0 . -2) (0 . -2.5) (-.5 . -2.5))
                 ) Slur
      c4.( b8 f') g16( f
      \stemDown
      h,8) f'16( e
      \stemUp
      c8) g_-
      \stemDown
      b16( c des8)
      \stemUp
      as16( b ces8~
      \stemDown
      ces16) as'( g f
      \stemUp
      e2~
      \stemDown
      e16) f( e d c8 f4) e8~
      \stemUp
      e16 f,_( h d)
    }
    \\
    {
      r8
      \once\override Slur.positions = #'(-3.2 . 0)
      fes,(<des g>4)<b' des>(<as c>) g8( e <des g>4)
      \stemUp	\change Staff = LH
      <f,,, f'>4 \change Staff = RH \stemDown s4*5
      as'''8( g) f( e) s1
    }
    \\
    {
      \voiceOne
      s1.*2 s4
      g s1
    }
  >>
  <<
    {
      f'4.( es8 as2) f4.( es8 des2~ des16) es( des c b8 es4) des8~ des16( es, as c
      es4) des~ des16( es fes ges) c,8( b~ b16) d, as'( g)
    }
    \\
    {
      r8 heses(<ges c>4)<es' ges>(<des f>) c8( heses <ges c>4)
      r8 <f as><e a><es ces'><ges b>4 s2. r8 <f as><e a>4 heses' as g
    }
    \\
    {
      \stemDown
      s1*3 s2
      \once\override NoteColumn.force-hshift = #.3
      fes s4
    }
  >>
  ces'16( b) eses( des)
  c8 b16( c d e f8)
  \once\override Slur.positions = #'(3.5 . 0)
  as,( g'4)
  <<
    {
      \stemDown f16( e \stemUp f8) c16( h c8) es
      des c16 b
    }
    \\
    {
      s8 as g as a b s
    }
  >>
  as16 g as b c8 des16 es f8 as g f16( e) f( e) c( b)
  <<
    {
      des8 es16 des g f e f des c es des g8 f e16 g f b,
    }
    \\
    {
      \change Staff = LH
      r8 b,\once\showStaffSwitch
      \change Staff = RH
      as' g b4 as8 des des4
    }
  >>
  des8 e~ e16 es fes ges c,!8 b
  <<
    {
      b4 as2( a4 as!) as2 a4 as2
    }
    \\
    {
      es4 f2 e4~ e f2 e2.
    }
  >>
  \bar "||"\break
  \time 2/4
  \revert Staff.TimeSignature.stencil
  s2 <f as des f>4
  <<
    {
      <e e'>
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.7
      <a des>8^( ces)
    }
  >>
  <as,! f' as!>4^><e a e'>^><f as f'>--^^
  <<
    {
      \makeOctaves #1 {
        es'8 des f4 e8 as as2
        \once\override Rest.extra-offset = #'(0 . -8)
        r8 ces, b a
      }
    }
    \\
    {
      s4
      \once\override NoteColumn.force-hshift = #1.3
      c'8 h16 a
      \once\override NoteColumn.force-hshift = #1.3
      h c8 des16
      \once\override NoteColumn.force-hshift = #1.3
      des eses des ces b as ges f
      \stemUp
      ges2
    }
  >>
  <<
    {
      \change Staff = LH b,32 \change Staff = RH
      c des es f g as b
      \small
      c des, g b f c e as
      d, b' g g' des as c f c' b, des as' as, es c' g
      f f' as, des es, b' des, f e' e, heses' g d' heses' des, g,
      as g' des f, c' f g, c, c' des, g b f c e as
      d, b' g g' des as c f c' b, des as' as, es c' g
      f f' as, des es, b' des, f e' e, heses' g d' heses' des, g,
      as g' des f, c' f g, c, c' f, des' g c, es f, f'
      \normalsize
    }
    \\
    {
      s4
      \set stemRightBeamCount = #1 c16[ s32 b8] s32 s16. g'8 \set stemLeftBeamCount = #1 f32~
      \once \override NoteColumn.force-hshift = #0.25
      \set stemRightBeamCount = #1 f16[ s32 as8] s32 s f8[ \set stemLeftBeamCount = #1 b,16] s32
      e8[ s32 heses'16] s32 s g8 \set stemLeftBeamCount = #1 f16 s32
      \set stemRightBeamCount = #1 c16[ s32 b8] s32 s16. g'8 \set stemLeftBeamCount = #1 f32~
      \once \override NoteColumn.force-hshift = #0.25
      \set stemRightBeamCount = #1 f16[ s32 as8] s32 s f8[ \set stemLeftBeamCount = #1 b,16] s32
      e8[ s32 heses'16] s32 s g8 \set stemLeftBeamCount = #1 f16 s32
      s16. g8 \set stemLeftBeamCount = #1 f32
    }
    \\
    {
      \voiceTwo
      s4 s16 g, f e
      \once\override Beam.positions = #'(-5 . -4)
      d[ g s c]
      \once\override Beam.positions = #'(-4 . -5)
      c'16 des,8 c16
      \once\override Beam.positions = #'(-4.5 . -6.5)
      f,8 es16 des s16 heses' d des s des c8 s16
      g f e
      \once\override Beam.positions = #'(-5 . -4)
      d[ g s c]
      \once\override Beam.positions = #'(-4 . -5)
      c'16 des,8 c16
      \once\override Beam.positions = #'(-4.5 . -6.5)
      f,8 es16 des s16 heses' d des s des c8 s16 des c8
    }
  >>
  <<
    {
      \small
      gis'32 e, h' fis' a, cis gis e' h' cis, e h d e a cis,
      gis' e, h' fis' a, cis gis e' gis a, cis fis, h e, fis' a,
      e' b, a' fis cis' h dis h' cis a e cis gis' dis gis, cis
      \stemDown
      \once\override Beam.positions = #'(-5 . -3)
      h' fis, e' cis gis' fis ais fis'
      \once\override Beam.positions = #'(-2 . -3)
      gis e h gis dis' ais dis, gis
      \stemUp
      fis' h, e, dis' gis, cis h, e e' gis, h, e cis gis h e,
      \normalsize
    }
    \\
    {
      gis'4
      \once\override Beam.positions = #'(-4 . -5)
      h8[ s16 a16] gis4 gis8[ s16 fis16] s4 cis' s \stemUp gis' \stemDown fis e
    }
    \\
    {
      \voiceTwo
      s16. fis,8 \set stemLeftBeamCount = #1 e32 s16 e[ d s32 \set stemLeftBeamCount = #2 cis]
      s16. fis8 \set stemLeftBeamCount = #1 e32 s16 cis[ h s32 \set stemLeftBeamCount = #2 a]
      e'8[ s16 dis] s32 \set stemRightBeamCount = #1 a'16[ s32 gis8]
      \stemUp
      h8[ s16 ais] s32 \set stemRightBeamCount = #1 e'16[ s32 dis8]
      \stemDown
      s2
    }
    \\
    {
      \voiceTwo
      s8 a,16 gis s32
      \once\override Beam.positions = #'(-3.4 . -3.7)
      cis16 h s16. s8 a16 gis s4 s s8 s32 dis'16 \set stemLeftBeamCount = #2 cis32
      \stemUp
      s4 s8 s32 ais'16 \set stemLeftBeamCount = #2 gis32
      \stemDown
      s16. dis'16 cis s32 s8 cis,16 h
    }
  >>
  \time 2/2
  \set baseMoment = #(ly:make-moment 1 4)
  \change Staff = LH
  \tweak #'duration-log #1 e,,16
  \change Staff = RH
  e''^> gis, h^> e, gis^> e' h
  <<
    {
      gis'[ e, h' e]->
    }
    \\
    {
      gis4
    }
  >>
  h,16 gis e gis
  \change Staff = LH
  \tweak #'duration-log #1 dis,16
  \change Staff = RH
  e''^> gis, h^> e, gis^> e' h   
  <<
    {
      gis'[ e, h' e]->
    }
    \\
    {
      gis4
    }
  >>
  h,16 gis e gis
  \change Staff = LH \stemUp des,!2 \change Staff = RH
  as'''16 des^> f, as^> des, f des' as
  <<
    {
      f'4->
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      f16 des, as' des^>
    }
  >>
  \stemNeutral
  as f des^> f as^> des,^> as f'^> des as f b^>
  des1\trill
  <<
    {
      \set baseMoment = #(ly:make-moment 1 4)
      c8<as as'><c c'><f f'><ces' ces'>4<as ces des g>8.<f f'>16
      <es es'>4 s r16 b'-.( g-. es-. b-. g-. es-. b-.)
      \override Rest.extra-offset = #'(0 . 3)
      r c''-.( as-. es-.)
    }
    \\
    {
      \tuplet 6/4 4 {
        c16 <c, f> q as' q q c <c, f as> q f' <f, as c> q
      }
      ces''32( as f ces as f' ces as
      f ces' as f ces as' f ces)\once\showStaffSwitch
      \change Staff = LH
      \shape #'(
                 ((0 . -5) (-2 . -4) (2 . -10) (0 . -5))
                 ((0 . -3) (0 . -4) (0 . -4) (0 . -2))
                 ) Slur
      b4.^( c32 b a b \once\showStaffSwitch
      \change Staff = RH
      g'4. f8 es4)
    }
    \\
    {
      \override Rest.extra-offset = #'(0 . -2)
      s1 s r8 \stemDown c'
    }
  >>
  <<
    \override Score.SpacingSpanner.strict-note-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    {
      c8 b r16 des'-.( heses-. g-. e-. des-. heses-. g-.)
    }
    \\
    {
      c16-.(as-. es-. c-.) e'8. des16 heses8 des,
    }
  >>
  <<
    {
      fes4 s fes s
    }
    \\
    {
      \autoBeamOff
      \crossStaff {
        s16 <ces ces'> q q q q q q
        s q q q q q q q
      }
      \autoBeamOn
    }
  >>
  <<
    {
      b'4( as8 b32 as g as es'4 des)
      s2
      \override Stem.details.beamed-lengths = #'(5)
      \once\override NoteColumn.force-hshift = #-.2
      c8(
      \once\override NoteColumn.force-hshift = #1
      b)
      \once\override NoteColumn.force-hshift = #-.2
      b(
      \once\override NoteColumn.force-hshift = #-.2
      heses)
    }
    \\
    {
      <c,! es>16<c es> q q
      \autoBeamOff
      \crossStaff { <c es>16 q q q <c ges'> q q q }
      \autoBeamOn
      <des as'>16 q q q
      \stemUp
      <es ges> q q q <c es as> q q q <f as> q q q <e ges> q q q
    }
  >>
  <<
    {
      as4 as as2
    }
    \\
    {
      \repeat unfold 12 { <c, f>16 } <c f>4
    }
  >>
  <<
    {
      \set baseMoment = #(ly:make-moment 1 4)
      <c' c'>8<as as'><c c'><f f'><ces' ces'>4<as ces des g>8.<f f'>16
      <es es'>8<g, g'><b b'><es es'>
      <g g'>16 b' g es b g es b
    }
    \\
    {
      \tuplet 6/4 4 {
        c16 <c, f> q as' q q c <c, f as> q f' <f, as c> q
      }
      ces''32( as f ces as f' ces as
      f ces' as f ces as' f ces)
      \tuplet 6/4 4 {
        es'16<b, es> q g' q q b <b, es g> q es' <es, g b> q
      }
      g'32 c g es c g' es c g es' c g es c' g es
    }
  >>
  \stemUp
  es'16 b' g es
  \stemNeutral
  b g es c \repeat unfold 6 {g g' es c}
  <<
    {
      r8 b f'8.  g16~ g b8.~ b8[ a] b2 s
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      \repeat unfold 2 {g,16 g' es c} \repeat unfold 2 {g g' es ces} ges ges' es ces
      \stemUp
      \repeat unfold 3 {ges ges' es ces}
    }
  >>
  ges ges' es ces ges es' ces ges
  \clef bass
  es ces' ges es ces ges' es ces ges8-. r r4 \clef treble r <ges''' ges'>8 r
  <<
    {
      es4 g f2 es4 as g2 f es des c <as ces>4<g heses>8 as~ as2
    }
    \\
    {
      b4 as c8 b4 as8 b4 as b2 b4 as as g g f f es e4. f8~ f2
    }
    \\
    {
      \voiceFour
      des'8 c4 des8 es4 des8 c des8 c4 des8 es4 des8 c
      des8 c4 b8 c b4 as8 b as4 g8 as g4 f8 s1
    }
  >>
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key as \major
  \time 6/4
  \set Staff.beatStructure = #'(1 1 1 1 1 1)
  \override Staff.TimeSignature.stencil = ##f
  R1. des,16( as' f' as des4)<es, b'><b' g'!>(<c as'>) as,
  <<
    {
      \stemDown
      r8 <as' f'><a e'><des a'> r <fes, ces'><d as'>4
    }
    \\
    {
      \stemUp
      des,2 fes
    }
  >>
  es16( b' g' b \clef treble es g b es) \clef bass
  <as,,,, as'>2<as'' f'>4<b es>8<des g><h ges'><c f><as es'>4
  b,16( f' des' f b4)<c, g'><g b e>(<as f'>)<f, f'>
  des16( fes g des' fes g des' fes) as( es as, es as es as, es)
  \shape #'(
             ((0 . 0) (2 . 0) (1 . 0) (.5 . 2))
             ((0 . -2) (.5 . -1.5) (.5 . -1) (1 . 0))
             ) Slur
  des_( e g des' e g des' e
  \change Staff = RH \stemDown
  <f as>4)\change Staff = LH \stemNeutral
  r8 <f as>(<e g><des fes><c es><a e'><as f'>4)<b g'>
  c <c,_~ g'> c8 <c' f as><as f'>4<c g'>8<g' c><g,, d' h'>4
  ges16( heses c ges' \clef treble heses c ges' heses)
  des( as des, as \clef bass des as des, as)
  ges16( heses c ges' \clef treble heses c ges' heses) \clef bass
  <<
    {
      \mergeDifferentlyHeadedOn
      des,,,( as' f' as \stemDown des4)
    }
    \\
    {
      des,,2
    }
  >>
  <es' b'>4<b' g'>(<c as'>) as, <des, des'>4.<c c'>8<ces ces'>4<fes' d'><es es'> r
  c8
  \clef treble
  <d' f><e g><as, f'><h e>
  <<
    {
      f'[( e)]
    }
    \\
    {
      b4
    }
  >>
  <c g'>8 des d c4 des8<des f><h e><c es><b des>4<as des>8<g  e'><as f'>4
  <b g'>8<c as'><des b'>16 as' g f es des c b as es' f8
  \clef bass
  c16 g b8~ b16 a e8~ e16 a des e
  <<
    {
      r8 fes es d g,4 as2 a4 as! as2 a4 as2
    }
    \\
    {
      ces16 des ces heses as ges fes es~ es4 des2.( ces4) des2. ces2
    }
  >>
  \bar "||"
  \time 2/4
  \revert Staff.TimeSignature.stencil
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \stemUp
  \change Staff = RH
  f'16( des8)
  \change Staff = LH
  c32_( b
  \stemNeutral
  a16.[) e32( a16 as])
  \makeOctaves #-1 { f16( des8) c32_( b a16.[) e32( a16 as]) }
  \repeat tremolo 8 { des,32 des' }
  <f,, c' f>4---^
  <<
    {
      s4
      %\once\override NoteColumn.force-hshift = #1.3
      c''8 h16 a
      %\once\override NoteColumn.force-hshift = #1.3
      h c8 des16
      %\once\override NoteColumn.force-hshift = #1.3
      des eses des ces b as ges f
      \stemDown
      ges2
    }
    \\
    {
      \makeOctaves #1 {
        es8 des f4 e8 as as2
        \once\override Rest.extra-offset = #'(0 . 7)
        \stemUp
        r8 ces, b a
      }
    }
  >>
  \set baseMoment = #(ly:make-moment 1 4)
  b''16 a as g ges es b g
  <<
    {
      f4 as' des heses f s16 es' des c f,4 as des heses f es e s e fis
      h,, s fis' s
    }
    \\
    {
      \voiceOne
      s4 s16 es'' b' as s ges f8 s16 ces heses8 s16 b'8 as s32 g8 \set stemLeftBeamCount = #1 f32
      s4 s16 es b' as s ges f8 s16 ces heses8 s16 b'8 as
      \set stemRightBeamCount = #1 b16[ s32 \set stemLeftBeamCount = #1 a16] s32
      s16. cis16 h \set stemRightBeamCount = #1 fis[ s32 e8] s16
      s16. cis'16 h fis8\noBeam s32
      \set stemRightBeamCount = #1 gis16[ s32 \set stemLeftBeamCount = #1 fis]
      s4 s16. \set stemRightBeamCount = #1 fis16[ s32 \set stemLeftBeamCount = #1 e16]
      s4 s16. \set stemRightBeamCount = #1 cis'16[ s32 \set stemLeftBeamCount = #1 h16]
    }
    \\
    {
      \voiceTwo
      \small
      f,,32 as c f as c
      \clef treble
      f as as, f' es c' b c, as' es
      des as' ges b f as as, ces heses des, ces' e, heses' des heses' e,
      f, c'' b c, f g as f ges b es, g des es c f
      f, f' c as' f c f as as, f' es c' b c, as' es
      des as' ges b f as as, ces heses des, ces' e, heses' des heses' e,
      f, c'' b c, f g as f es, c' b' c, f a es a
      e, h' gis' cis e, h' h, fis' a, a' e cis e a cis, e
      e, h' gis' cis e, h' h, fis' fis, fis' cis a gis' cis, a fis'
      \clef bass
      h,,, fis' h fis'
      \clef treble
      h fis' h fis' gis e, cis' fis, cis gis' e gis,
      \clef bass
      fis, cis' fis cis'
      \clef treble
      fis cis' fis cis' dis h, gis' cis, gis dis' h dis,
      \normalsize
    }
  >>
  <<
    {
      s4 gis
    }
    \\
    {
      \voiceOne
      s16. cis8 \set stemLeftBeamCount = #1 h32 s16
      \set stemRightBeamCount = #1 fis16[ s32 \set stemLeftBeamCount = #1 e16] s32
    }
    \\
    {
      \voiceOne
      s16 gis fis e s8 a,16 gis
    }
    \\
    {
      \small
      h'32 e, gis cis fis, e' e, h' gis h, fis' gis, a e' gis, h
      \normalsize
    }
  >>
  \clef bass
  \time 2/2
  \set baseMoment = #(ly:make-moment 1 4)
  \tweak #'duration-log #1 e,16 gis h fis' h, gis gis' e
  h gis e' h gis' gis, h e
  \tweak #'duration-log #1 dis, gis h fis' h, gis gis' e
  h gis e' h gis' gis, h e
  \once\override TupletBracket.direction = #UP
  \once\override TupletBracket.positions  = #'(5 . 17)
  \times 8/11 {
    \stemDown
    des,,16[ f as]
    \stemUp
    des[ f as des]
    \change Staff = RH \stemDown
    f[ as des f]
  }
  as16_^ f des as b as f as,
  \change Staff = LH
  des, f' des as b as f as,
  <<
    {
      des,4
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      des16 f'' des as
    }
  >>
  b as f as,
  <<
    {
      \stemDown
      heses2 \makeOctaves #-1 { ases4 ges }
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      \stemUp heses16
      \change Staff = RH \stemDown <des' e heses'> q q q q q q
      \change Staff = LH \stemUp ases,
      \change Staff = RH \stemDown <des' e heses'> q q
      \change Staff = LH \stemUp ges,,
      \change Staff = RH \stemDown <des'' e heses'> q q
    }
  >>
  \tuplet 6/4 4 {
    <f,,, f'>16 c'' as' f' as, c, es, c' as' f' as, c,
  }
  \stemNeutral
  des,2
  \change Staff = RH
  \times 8/9 {es'''32 g,( b d es b es f g}
  g, b d es es, g a b
  \change Staff = LH
  as, ces es f g, b d es es, g a b b, es f g)
  <as, as'>4 r <heses heses'>2
  <<
    {
      \autoBeamOff
      \crossStaff {fes'4 s fes s}
      \autoBeamOn
    }
    \\
    {
      fes16 as as as as as as as
      fes g g g g g g g
    }
  >>
  <<
    {
      \set baseMoment = #(ly:make-moment 1 4)
      <es as> q q q \stemDown q q q q <des heses'> q q q
      \stemUp
      ges8( f)
      \shape #'((-.2 . -6) (-2 . -5) (2 . -7) (0 . -2.5)) Slur
      \once\override NoteColumn.force-hshift = #-1.6
      es4( des16 c es as \once\showStaffSwitch
      \change Staff = RH \stemDown
      des4 c)
    }
    \\
    {
      g,2 s4 <des' as'>16 q q q <des heses'> q <c heses'><b! heses'>
      as as as as <b b'> q q q <des b'> q <des heses'> q
    }
  >>
  <<
    {
      \set baseMoment = #(ly:make-moment 1 4)
      \repeat unfold 12 { <f as>16 } <f as>4
    }
    \\
    {
      c8 b as g f4 s
    }
  >>
  <<
    {
      f es des2
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      \tuplet 6/4 4 {
        <f, f'>16 c'' as' f' as, c, es, c' as' f' as, c,
      }
    }
  >>
  <<
    {
      es,4 des <c c'>2
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 4)
      \tuplet 6/4 4 {
        <es, es'>16 b'' g' es' g, b, des, b' g' es' g, b,
      }
    }
  >>
  \change Staff = RH
  \stemDown
  c'32 g' es c g es' c g
  \change Staff = LH
  es c' g es c g' es c \repeat unfold 8 {g es' c g c g' es c}
  \repeat unfold 2 {g es' ces g ces g' es ces}
  \repeat unfold 4 {ges es' ces ges ces ges' es ces}
  ges es' ces ges es ces' ges es
  \ottava #-1
  \set Staff.ottavation = #"8"
  ces ges' es ces ges es'ces ges
  \stemNeutral
  es ces' ges es ces ges' es ces
  es ces' ges es ces ges' es ces ges8-.
  \ottava #0
  r r4 r4 <ges''' ges'>8 r
  f2 \clef treble
  <<
    {
      g'2 as4 g as8 g4 f8 es4 f8 g f4. es8 des4 c b c8 des heses4 ces8 des~ des2
    }
    \\
    {
      es,2 f'8 des4 es8 c2 des es, f g g4. ges8~ ges2
    }
  >>
  \bar "|."
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}
