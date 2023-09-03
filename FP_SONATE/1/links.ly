\version "2.19.15"

\language "deutsch"

\include "makeOctaves.ly"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

links = \relative {
  \clef bass
  \key es \minor
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  ces8 des es f ges( f ges) as b( a b) as ges f es des
  ces es ges es ges ces b( ces) ges as b g( as) f( ges) es
  des( c) b c des es e( f ges as f ges as b  ces as des c des es des ces b as
  ges4-.) r <des as'>-. r <es ges>-. r r2
  <ges des'>(<f ces'><es ges><c as' b><des ges>4-.) r r2 f4-. r r2 R1
  %%%%%%%%%%%%%%%
  ces8 des es f ges( f ges) as b( a b) as ges( f) es-. des-.
  ces-. b-. as-. ges-. f-. es-. des-. ces-. b-. a-. b-. ces-. c-. des-. d-. es-.
  e-. f-. ges g as a b ces c des d es e f ges( g as a b ces c des es f)
  <ges, ges'>2( b4) r <b, b'>2( <des des'>4) r
  <<
    {
      \times 2/3 {\stemDown r2 ases' ges}
      \times 2/3 {\tupletDown fes2 <es es'><des des'>}
      \stemNeutral
      ces4 s8 as4 s8 fes8 ces' r4 \stemDown ges' es4. \stemNeutral as,8
    }
    \\
    {
      ces,1 s ces'8[as' ces] as,[ fes' as] fes,4 es1
    }
  >>
  <<
    {
      des8 as' f' as \stemDown des as des \change Staff = RH f_~ f2
      \mergeDifferentlyHeadedOn
      \change Staff = LH \stemUp es as,, ces'
    }
    \\
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      s1 es,,2 s
      \stemDown as8 es' b' des ces ces, g' es'
    }
    \\
    {
      \voiceTwo
      des,,1 es8 b' ges' b es ces, ges' des'^~
      \once\override NoteColumn.ignore-collision = ##t
      \stemUp
      des2 s
    }
  >>
  <<
    {
      f,,,8 f' c' g' as2 a,,8 e' cis' fis e'2
    }
    \\
    {
      f,,,2 as''8 c, f h a,,2 e'''8 e, a cis
    }
  >>
  \bar "||"
  \key d \major
  r2 d,_( a1 g fis2 g) r d' a1 g fis2 g r a d,1 fis4 g a2 r4 e' d a h2. fis4
  fis2 e'' fis,, e'' g,, es'' g,, d'' g,, a' fis, a' fis, a' e, h''
  d,,8 a' fis' h e d a g fis d cis h a g fis e
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 2/3 {
    \tupletUp
    d4 <a' fis'><d a'> fis, <d' h'><fis d'> a, <fis' cis'><a fis'>
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    d, <a' fis'><d a'> e,, <fis' d'><cis' a'> fis,, <fis' e'><d' a'>
    g,, <g' e'><d' a'> a, <a' fis'><e' g> h, <fis' d'><cis' a'> g, <g' d'><cis h'>
  }
  d,,2
  \clef treble
  r4. <g' d' g>8 q4 r
  \clef bass
  d,
  \clef treble
  r8 <a'' e' a> q4 r
  \clef bass
  fis,
  \clef treble
  r8 <h' fis' h> q4 r
  \clef bass
  g,
  \clef treble
  r8 <h' fis' h> q4 r
  \clef bass
  a,
  \clef treble
  r8 <cis' fis cis'> q4 r
  \clef bass
  h,
  \clef treble
  r8 <d' a' d>
  %q4 r r2
  %\clef bass
  %fis,4 r r2
  %\clef treble
  <d a' d>4 r r2
  \clef bass
  d,,1 cis h b
  \key es \minor
  as ges~ ges
  ces8 ges' des' ges, b, ges' des' ges, b, f' des' f, as, ges' des' ges,
  ges, es' ces' es, ces as' es' as, b, ges' es' ges, as,f' es' f,
  ges, ges' des' ges, des as' f' as, ces, as' es' as, b, ges' es' ges,
  as, f' des' f, des b' f' b, ces, as' f' as, b, ges' f' ges,
  as, as' es' as, ces, as' f' as, b, ges' ges' ges, as, f' des' f,
  ges, es' b' es, as, es' ces' es, b es c' es, ces! es des' es,
  c es es' es, des ces'! f ces es, b' ges' b, f ces' b' ces,
  ges2 <as ges'><b f'><ces es><c as'><des ces'>
  es4-. r <des as'>-. q-. b r <es b'>-. q-. ces-. r <es c'>-. q-.
  des-. r <es ces'> r <des ges> r <des ces'> r
  ges,8-. f-. ges-. as-. b-. ces-. des-. as-.
  ces( b-.) es-. as,-. des( ces-.) f-. des-.
  es( des-.) es-. f-. ges-. f-. es-. des-.
  ces-. b-. as-. ges-. f-. es-. des-. ces-.
  b4-. ges ges8( f es f ges4-.)\acciaccatura g8 as4 as8( ges f ges
  as4-.)\acciaccatura a8 b4 b8( as ges as b4-.) \repeat unfold 11 {b''8 ges}
  \repeat unfold 4 {b as} \repeat unfold 2 {b ges} \repeat unfold 2 {ces ges}
  \repeat unfold 2 {des' ges,} \repeat unfold 2 {d' ges,}
  \repeat unfold 4 {es' ges,} \repeat unfold 2 {d' ges,}
  \repeat unfold 2 {des' ges,} \repeat unfold 2 {c ges}
  \repeat unfold 2 {ces ges} \repeat unfold 2 {b ges} b! ges b ges
  \repeat unfold 4 {a f} \repeat unfold 4 {g es} f! des \repeat unfold 3 {f des}
  \repeat unfold 4 {es ces} \repeat unfold 4 {d b}
  des! heses c as ces ases b ges a f as fes g es ges eses
  f ges, c ces d, as'ges g a es' fes b, g' ges, c f fes c es a as des, ces' b,
  a' c, des ges d es' f, ces b' c, fes es d, des' ges, c
  ces fes, b heses g' ges, c des d, c' ces f, ges as' eses g,
  des' ges, d' es des,! fes' as, a'
  as des as' des,, as' des f g, as as, des as' des as' f f,
  ges des' b' as ges f es des c des b des ges, des' des, des'
  f, des' es, des' des, b' f b ges b des f ges as b c
  <<
    {
      <as des es>4 s
    }
    \\
    {
      as8 b es,des
    }
  >>
  as as' es des c b as ges f es des c b f' c' des es f g a
  \repeat unfold 2 {
    <<
      {
        <b, b'>2_( <ges ges'>4) r <ges des' ges>2_( <es c' es>4) r
        <b b'>2_( <des des'>4) r <des des'>2_( <f f'>4) r
      }
      \\
      {
        \once \override NoteColumn.force-hshift = #1.3
        es'2. s4 s1
        \once \override NoteColumn.force-hshift = #1.3
        f,2. s4
        \once \override NoteColumn.force-hshift = #1.3
        b2. s4
      }
    >>
  }
  <<
    {
      <b b'>2_( <ges ges'>4) r <ges des' ges>2_( <es c' es>4) r
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.3
      es'2. s4 s1
    }
  >>
  <b, f' b>1 R
  <<
    {
      r4 \stemDown f'''4( e4. g,8 \stemUp b4 a2) r4
      r eses'4( des4. e,8 g4 ges2) r4
      r des'4( c4. es,8 ges4 f2) r4 r es ges2
      f1 eses des ces b heses ases ges
    }
    \\
    {
      s1 r4 es'( des4. ges,8 c4 des) r2
      r4 c( b4. es,8 a4 b) r2 r4 des( ces4. e,8 b'4 ces) r e,
      g2( ges) f( fes) es( eses) des( c) ces( b) heses( as) ases( ges) f( fes)
    }
  >>
  \makeOctaves #-1 {
    f'!2( as4) r as2( ces4) r b1(
    heses4-.) r as-. r ases-. r ges-. r f-. r fes-. r es-> r eses-> r
    des2-^( f4) r f2( as4) r as1( ges4-.) r des'-. r
  }
  b1( as4-.) r des-. r
  \makeOctaves #-1 {as1( ges4-.) r des'-. r b1( as4-.) r} es'-. r
  \makeOctaves #-1 {ces1( b4-.) r} f'-. r des1_( ces4-.) r e8 g4.
  <<
    {
      r8 ges4.~ ges2
    }
    \\
    {
      es1
    }
  >>
  \key d \major
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 2/3 {
    \override TupletNumber #'transparent = ##f
    \override TupletBracket #'bracket-visibility = ##t
    d4 d, a' d a d a' d, a
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    d a d, d' d, g d' g, d' fis, d' fis g, d' g a, d a' h, d h' a, d e a e a,
    d d, g d' g, d' fis, d' fis g, d' g a, d a' e a, e d a' d a d a'
  }
  <<
    {
      d2( fis4) s fis2( a4) s a1( \makeOctaves #-1 {\stemDown g4)}
    }
    \\
    {
      d8 d, a' d fis fis, h d fis fis, cis' fis a a, d fis g, a h cis d cis h a s4
    }
  >>
  r4 \makeOctaves #-1 {cis2_( d a fis g} <h,, d'><g' h> a1)
  d,8 a' fis' fis, h fis' d' h, cis a' fis' cis, d a' fis' d,
  e h' g h d, h' g h cis, a' e' a, d, a' e' a,
  e a e' a, fis a e' a, g a e' a, h a e' a, cis a e' a, g' a, e' a,
  d a' fis a cis, a' fis a h, fis' d fis a, fis' d fis g, d' h d fis, d' h d
  e, h' g' fis e d cis h a g fis e d cis h a
  \key es \minor
  as heses, es d f, ces' heses b c ges' g des b' heses, es as
  g es ges c ces fes, d' des, c' es, fes heses f ges' as, d,
  des' es, g ges f,! fes' heses, es d g, des'! c b' heses, es fes
  f, es' d as a ces' f,! b,! fes' heses, f' ges fes, g' ces, c'
  ges as heses c, heses f' fes es, d ges g des' f, ces' ges' d
  es fes g ges, c des, fes es' eses, des' as ases es' des, ases' b
  es, g ges heses\> fes' as, ases \xLV #6 es'\!\laissezVibrer
  R1*4
  r4 \makeOctaves #-1 {b'( a4. c,8 es4 d2.)} <des' fes ges ases ces>1 <b,, b'>
  r4 \makeOctaves #-1 {
    a''( g4. h,8
    \key d \major
    d4 cis2.)
  } <d' e fis g a b>1 <a,,! a'!>
  r4 \makeOctaves #-1 {h''( b4. cis,8 a'4 es2.)} <es' g as b>1 <d,, d'>
  r4 \makeOctaves #-1 {g'( fis4. c8 h'4 b2.)}
  a,!8 gis' d es c' fis, a g f h, b e! g, gis' d a b d h f fis cis' es, e'!
  f, d' cis gis c h,! a' es' e,! d' b h c' cis, gis' d es b' e, f g, gis' d cis
  c' d, es a as fis, c' g' cis, gis' c, h cis' b, fis' f, h a as f' as c, cis d'
  es h b e, c' fis, h, es d cis b h' f e' cis d, es' e, a b d, e' b g
  \override Score.TimeSignature.stencil = ##f
  \time 11/8
  d'[ ais h gis] cis,[ a' b d,]
  r4.
  \break
  \time 4/4
  \key es \minor
  <<
    {
      \shape #'((0.5 . -7.5) (0 . 0) (0 . 0) (0 . 0)) Slur
      r8( ces' b b '
      \stemDown
      as as' ges4)
      \stemUp
      \shape #'((0.3 . -6) (-2 . 1) (0 . 0) (0 . 0)) Slur
      r8( b,, as as'
      \stemDown
      ges es' f4)
      \stemUp
      \shape #'((0.5 . -3) (0 . 0) (0 . 0) (0 . 0)) Slur
      r8( ges,, b des
      \stemDown
      f as es'4)
      \stemUp
      \shape #'((0.5 . -4) (0 . 0) (0 . 0) (0 . 0)) Slur
      r8( es,, b' f'
      \stemDown
      as b des es)
      r8( c, g' as b c des es)
      \stemUp
      r8( des,, as' es'
      \stemDown
      f ges as b)
    }
    \\
    {
      <es,,, es'>1 <des des'> <ces' ces'> <as as'> <f f'> <ges ges'>
    }
  >>
  <<
    {
      s8 ges'( des' as' es ges b f')\once\showStaffSwitch
      \change Staff = RH
      \stemDown
      \once \override NoteColumn.force-hshift = #.7
      ges2\once\showStaffSwitch
      \change Staff = LH
      f8 f, as c
    }
    \\
    {
      \stemUp
      s1 s8 as,( es' b') s2
    }
    \\
    {
      \voiceTwo
      <ces,, ces' ges' des'>1 <des des'>
    }
  >>
}