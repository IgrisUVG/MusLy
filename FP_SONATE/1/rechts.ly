\version "2.19.15"

\language "deutsch"

\include "makeOctaves.ly"

rechts = {
  \clef treble
  \key es \minor
  \time 4/4
  \override DynamicLineSpanner.staff-padding = #3
  \set Staff.printKeyCancellation = ##f
  \relative {
    <ces' des ges>2(<b es b'>4-.) r <des f b>2(<b ges'as des>4-.) r
    <es ges des'>1(<des as' ces>4-.) r <d ges b>-. r <es ges heses>-. r <f as>-. r
    <<
      {
        <es b'>2( \stemDown <f es'> \stemNeutral as1) s4\p
      }
      \\
      {
        s1 ges2( f \stemUp ges4-.)
      }
    >>
    r <f as>-. r <es b'>-. r r2
    <es ces'>(<as des><b es><ges ges'><des b'>4-.) r r2 <des as'>4-. r r2 R1
%%%%%%%%%%%%%%%%%%
    %\repeat volta 3 {
    <ces des ges>2(<b es b'>4-.) r <des f b>2(<b ges'as des>4-.) r
    <es ges des'>1(<des as' ces>4) r <d g b> r <deses ges! heses> r <es b' des> r
    <e as c> r <fes ges ces>-- r <es ges es'>-- r <f as des>-- r
    des''8 ges, b, b es ges, b, es f des es f ges as b ces
    <<
      {
        \mergeDifferentlyHeadedOn
        <des, des'>1-> ces''4 s b s as2( ces4) r ces2( es4) r
      }
      \\
      {
        \once \override NoteColumn.force-hshift = #2
        des,8 ges, ces, es ges ces es ges ces des, ges, des' b' des, ges, des'
        as' as, es' as ces ces, fes as ces ces, ges' ces es es, as ces
      }
    >>
    <<
      {
        <es, es'>1 r4 <es es'>2 q4~ q q2 q4~ q q2 q4~ q <es! es'!> s4
      }
      \\
      {
        r4 ces'^( as4. \stemUp des,8 ges,1) s1*3
      }
      \\
      {
        \voiceTwo
        s1. ges'4.( ces,8 es,2) b''4.( des,8
        <b, f'>2) as''4.( as,8 cis,2) g''4.( a,8)
      }
    >>
    \bar "||"
    \key d \major
    d,4 g fis a e d fis d cis d
    <<
      {
        a'2( a h cis e a,) h\rest h-- h\rest h\rest a( h cis d h a g
        \times 2/3 {
          d4) fis, d'
        }
      }
      \\
      {
        cis4 h e d a d e
        \change Staff = LH \stemUp a,
        \change Staff = RH \stemDown fis'
        \change Staff = LH \stemUp a,
        \change Staff = RH \stemDown cis d cis h
        \change Staff = LH \stemUp
        \once\override NoteColumn.ignore-collision = ##t
        a
        \change Staff = RH \stemDown d cis fis d e e fis g d e fis
        g fis eis fis e d cis d s2
      }
    >>
    \set tupletSpannerDuration = #(ly:make-moment 2 4)
    \times 2/3{
      a'4 e h' fis' a, d
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      g h, g' a d, a' a d, a' ais d, ais' ais d, ais'
      h d, h' h d, h' c d, c' c d, c'
      cis! d, cis' cis d, cis'
      d d, d' d d, d' d d, d' <d e> e, <d' e>
      <d fis> fis, <d' fis><d g> g, <d' g>
    }
    <a d a'>2
    \ottava #1
    \set Staff.ottavation = #"8"
    < h d h'><cis e cis'><e fis e'>
    \ottava #0
    \makeOctaves #1 {
      g,8 fis eis fis h e, d e h' a gis a g fis e d
      fis e dis e g cis, fis eis fis h, e! dis
      e b d cis d a cis his cis g h a
    }
    \set tupletSpannerDuration = #(ly:make-moment 2 4)
    \times 2/3{
      \override TupletNumber #'transparent = ##f
      \override TupletBracket #'bracket-visibility = ##t
      <d, d'>4 g a d a e' d a' g
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      fis h, e d g a d a e' d a' g fis h, e d
      \ottava #1
      \set Staff.ottavation = #"8"
      g a d a e' d a' g fis h, e
    }
    %}
    %\alternative {
    %  {
    %    d4
    %    \ottava #0 r4 r2 <d,,, h'>4 r r2
    %  }
    %  \bar ":|."
    %  {
    %    \ottava #1
    %    \set Staff.ottavation = #"8"
    d8 a g e h' a fis d
    \ottava #0
    %  }
    %}
    g fis d a e' d a fis d' a g e h' a fis d
    g fis d a e' d a fis d' cis b fis ces' b fis cis
    \bar "||"
    \key es \minor
    \stemUp as' des, ces
    \change Staff = LH
    f, f' b, as des,
    \once\override NoteColumn.ignore-collision = ##t
    ges, des' ges as des, b'
    \change Staff = RH
    eses f ges, des' ges as \stemDown des, b' eses f
    ges2( b4) r b2( des4) r
    <<
      {
        des1( ces4) r r2 as2( ces4) r ces2( es4) r es1( des4) r r2
        b2( des4) r des2( f4) r
        \makeOctaves #1 {\stemDown f,2( es des ces b as ges1)}
        \stemUp f'2( es des ces b as \stemNeutral
        \once \override Slur #'direction = #DOWN
        \acciaccatura {es8[ f]} ges4_.)
      }
      \\
      {
        ces2( es4) r es2( ges4) r ges1( f4) r r2
        des2( f4) r f2( as4) r as1( ges4) r r2
        s1*3 r4 des as' ges
        f8 b, es, b' es ces es, ces'
        des as es as ces ges des ges
        b ges es ges as f des f s4
      }
    >>
    \stemNeutral
    ges ges8( f es f ges4-.)\acciaccatura g8 as4 as8( ges f ges
    as4-.)\acciaccatura a8 b4 b8( as ges as b4-.) ces4.-> es8 des ces
    ces( b) ges' b, b( as) des as b2-. b8( as ges as
    b4-.) \acciaccatura b8 ces4 ces8( b as b
    ces4-.) \acciaccatura c8 des4 des8( ces b ces
    des4-.) \acciaccatura d8 es4 es8( des ces des
    es-.) es'-. des-. ces-. b-. as-. ges-. f-.
    es-. des-. c-. des-. es-. f-. ges-. as-.
    b-. as-. b-. ces-. des4-. des,-. ges1-. R
    <<
      {
        r4 \stemDown b( a4. c,8 \stemUp es4 d2) r4
        es2( eses des c) ces2( ges4 a \stemDown b \stemUp f ges a
        \stemDown b2 es)
        \stemUp f1 d des ces b heses g ges
      }
      \\
      {
        s1 r4 as( ges4. ces,8 f4 ges) ases( b heses2 as) b4 f s2*5
        b2( heses) as( ases) ges( f) fes( es) d( des) c( ces) b( heses) as( ases)
      }
    >>
  }
  <<
    {
      \relative{
        as''2( ces4) r ces2( d4) r des1( c4-.) r b-. r
        heses-. r as-. r ases-. r ges-. r
        f-. r fes-. r es-. r eses-. r
      }
    }
    \\
    {
      \relative{
        g'2 r8 f' heses, fes' b,2 r8 as' des, g c,4.( ges'8 d4-.) es-.
        des-. es-. fes-. b,-.
        as-. ces-. d-. g,-.
        ges-. as-. heses-. es,-.
        e-. ges-. ases-. des,-.
        d-. e-. f-. c-.
      }
    }
  >>
  \relative{
    \makeOctaves #1 {
      des'2( f4) r f2( as4) r as1( ges4--) r f-- r es---> r des-- r c-- r des-- r
      f1_( es4) r
    }
    <c' ges' as c>2( <des f b des>4) r r2
    \parenthesize b,8
    \repeat unfold 2 {
      c des es f ges as b c
      des es f ges as b c des
      c b as ges f es des c
      b as ges f es des c \parenthesize b
    }
    c des es f ges as b c
    des es f ges as b c
    <<
      {
        \repeat unfold 12 {des b} \repeat unfold 4 {es c}
      }
      \\
      {
        \repeat unfold 4 {ges2( f)}
      }
    >>
    \repeat unfold 4 {f'8 des} ges! es \repeat unfold 3 {ges es}
    \ottava #1
    \set Staff.ottavation = #"8"
    \repeat unfold 4 {g e} \repeat unfold 4 {a ges}
    \repeat unfold 4 {b g} \repeat unfold 4 {ces as}
    \repeat unfold 4 {c a} \repeat unfold 4 {des b}
    \repeat unfold 4 {d h} \repeat unfold 4 {es c}
    \repeat unfold 4 {e des} \repeat unfold 4 {f d}
    \repeat unfold 4 {ges es}
    g ges, c ces f, fes' b, des g, ges c des, as' eses fes b,
    \ottava #0
    fes' es, f ces' heses es c ges
    des' g, as fes' es, d' ges, f
    des' ges, c, f as b ces es,
    ces! b' eses,des ases' ges f,! c'
    ces! f ges, g as heses' es, e
    f as,( des as' b) c,( f c'
    des) f,( c' f) es,( as des es)
    \repeat unfold 2 {
      des,( ges b des) ces,( des ges ces)
      b,( des ges b) ces,( des ges ces)
    }
    des,( ges b des) ces,( des ges ces) b,( des ges b) as,( des es as)
    ges,( b des ges) f,( b des f) fes,( as des fes) es,( as b es)
    des,( ges b des) ces,( des f ces') b,( es ges b) a,( des f a)
    g,( des' fes g) ges,( c es ges) f,( as d f) r( b, des e)
    r a, c es f a, ces e
    \bar "||"
    \key d \major
    <<
      {
        d'4 g fis a
        \makeOctaves #-1 {
          \once \override NoteColumn.force-hshift = #-.3
          e d fis d
        }
        cis d fis e d2 cis d e d e4
        %\once \override NoteColumn.force-hshift = #-.3
        cis
      }
      \\
      {
        fis,8 a e' a, d a cis a
        \once \override NoteColumn.force-hshift = #.7
        d a
        \once \override NoteColumn.force-hshift = #1.3
        h a
        \once \override NoteColumn.force-hshift = #1.3
        cis a
        \once \override NoteColumn.force-hshift = #1.3
        h a g a fis h a h g a fis a a' a, e h' h' h,
        fis a a' a, g a a' a,fis a a' a, g a
        \once \override NoteColumn.force-hshift = #1.3
        a' a,
      }
    >>
    <fis d'> e g a <d e> a <cis fis> a'
    <h, d> fis <a cis> fis' <g, cis> d <a' h> d
    <<
      {
        a2 a d4 s2. d'4 g fis a e d fis d cis d fis e
      }
      \\
      {
        e,,8 d d' d, cis e e' e,
        \set tupletSpannerDuration = #(ly:make-moment 2 8)
        \times 2/3 {
          fis g a h cis d e fis g a h cis d a fis g' a, e
          \override TupletNumber #'transparent = ##t
          \override TupletBracket #'bracket-visibility = ##f
          fis' a, d, a'' cis, e,
          e' a, d, d' a d, fis' a, cis, d' fis, h,
          cis' d, g, d'' g, h, fis'' a, cis, e' g, d
        }
      }
    >>
    \set tupletSpannerDuration = #(ly:make-moment 2 8)
    \times 2/3 {
      d' g, h
      \ottava #1
      \set Staff.ottavation = #"8"
      d g h d a e a e h
      \ottava #0
      a d, e fis a, d e h d e g h a d, e fis a, d e h d e g h
      cis d, fis g a d h h, d g h d fis, a, h d e a e a, h cis d e
    }
    d2( fis4) r fis2( a4) r a1( g4) r fis2( e d cis d fis1 e2--) r
    d-- r cis-- r h-- r R1
    \bar "||"
    \key es \minor
    <<
      {
        ces'2( d4) r d2( f4) r
        \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) Slur
        fes1( es4-.) r des-. r c-. r ces-. r b-. r heses-. r as-. r g-. r
        ges-. r f!-. r fes-. r es-. r d-. r des-. r
        c-. r ces-. r b-. r heses-. r as-. r ases-. r
        d2\rest \repeat unfold 5 {c( ces b)}
        c( h
        \bar "||" \key d \major
        b) c( h b) cis!( c h) cis( c h)
        d( fis4) r fis2( a4) r a!1( g4) r fis2
      }
      \\
      {
        b,2 r8 as' c, g' des2 r8 ces' fes, b
        \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) Slur
        es,4.( heses'8 f4-.) as-. fes-. ges-. g-. des-.
        ces-. d-. f-. b,-. heses-. ces-. c-. ges-.
        g-. heses-. b-. fes-. f!-. g-. as-. d,-.
        es-. f!-. ges-. d-. es-. f-. ges-. ces,-.
        des-. es-. f-. b,-. ces-. des-. es-. as,!-.
        a-. b-. des-. f!-.
        \repeat unfold 20 {ges8 es}
        \repeat unfold 12 {as fes}
        a f! \repeat unfold 11 {a f}
        \repeat unfold 12 {ais fis}
        h! g \repeat unfold 7 {h g}
        \repeat unfold 8 {c as}
      }
    >>
    \break
    \acciaccatura {ais8[ his]} <cis e>4-. q q8( <his dis><ais cis><his dis>
    <cis e>4-.) \acciaccatura {dis8[ eis]} <fis a d!>4
    <<
      {
        \once\override Slur.positions = #'(1 . 1)
        fis8( eis dis eis fis4-.)
      }
      \\
      {
        dis8( cisis his4 ais)
      }
    >>
    \acciaccatura {eis'8[ fis g]} <gis ais dis>4-.
    <<
      {
        \shape #'(
                   ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                   ((0 . 0) (0 . -1) (-0.5 . -2) (-1 . -3))
                   ) Slur
        gis8( fis e fis gis8-.)
      }
      \\
      {
        \shape #'(
                   ((0 . -2) (0 . -1) (0 . 0) (0 . 0))
                   ((0 . -1) (0 . -0.5) (0 . 0) (0 . 0))
                   ) Slur
        dis4( cisis his8)
      }
    >>
    <cis' eis><his dis><fisis cis'><gis h><e b'><fis a><d as'><es g>\noBeam
    \new Voice <<
      {
        des' c des fis h, a h
        fis' e dis e d cis h a
        cis! h ais h d gis, cis! his
        cis fis, h! ais h f a gis
        a e as g as d, fis e
      }
      {
        b' a as g f e dis
        d' c h ais h a eis fis
        fisis gis fisis eis
        e cis d fis
        eis cisis dis fis
        e cis dis eis
        fis cis d es
        f b, c cis
      }
    >>
    <<
      {
        a'4-. r as-. r g-. r fis-. r f-. r e-. r es-. r d-. r
      }
      \\
      {
        d4-. e-. f-. h,-. a-. c-. dis-. gis,-.
        g-. a-. b-. e,-. f-. g-. as-. d,-.
      }
    >>
    \time 3/8
    r4.
    \time 4/4
    \key es \minor
  }
}