\version "2.18.0"
\language "deutsch"
\include "makeOctaves.ly"
rechts = {
  \clef bass
  \key es \minor
  \time 2/4
  \override DynamicLineSpanner.staff-padding = #3
  \change Staff = LH
  \tag #'Part {\shape #'((0 . -6.5) (5 . 3) (3 . 1) (0 . 0)) Slur}
  es,,32^( b,, ges,
  \change Staff = RH
  \stemUp
  b, es ges b
  \clef treble
  es'
  \stemNeutral
  ges' b' es'' ges'' b'' es'''ges''' b'''
  es''''4) r\fermata
  \clef bass
  \change Staff = LH
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 8/13 {
    es,,32[( b,, ges,
    \change Staff = RH
    \stemUp
    a, b, c es ges a b
    \clef treble
    c' es' ges']
  }
  \stemNeutral
  \times 8/14 {
    a'[ b' c'' es'' ges'' a'' b'' c''' es''' ges'''
    \ottava #1
    \set Staff.ottavation = #"8"
    a''' b''' c'''' ges'''']
  }
  a''''4)
  \ottava #0
  r\fermata
  r\p ces'16( d' f' ces'')<b b'>8(<as! as'!>) b16( es' ges' a')
  b'8. ges'16^( b'4)
  \stemUp
  ces''8. as'16^(
  \stemNeutral
  ces''4)
  b'8. ges'16( b'4)
  r4\sp es'16( f' ges' <es' es''>)
  <d' d''>8( <des'  des''>) c'16( des' e' <b b'>)
  <deses' deses''>8(<ces' ces''>) d'16( es' ges' <ces' ces''>)
  \relative es' {
    es16\mp ges b es ges, as des ces ges b es f ges a, c es e g h e fis, g d' c
    b g f e es c h a g b d g a, b f' es d ges, a c f, as b es es,\< ges b es
    \change Staff = LH
    f, ges
    \change Staff = RH
    a c
    \change Staff = LH
    ges b
    \change Staff = RH
    es ges
    \change Staff = LH
    a, es'
    \change Staff = RH
    ges a
    \change Staff = LH
    es ges
    \change Staff = RH
    a c
    \change Staff = LH
    ges b
    \change Staff = RH
    es ges
    a\f es f ges
    as d, e f
    g des es fes
    ges c, d es
    f ces des d
    fes b, c des
    es a, h c
    d as b ces
    des g, a b
    c ges as a
    ces f, g as
    b fes ges g
    a( ges es b
    \change Staff = LH
    a ges es b)
    \override TupletNumber #'transparent = ##f
    \times 4/6 {a16( b d \change Staff = RH es ges des')}
    \stemDown
    \times 4/6 {\change Staff = LH ges,,( a b \change Staff = RH d es ges)}
    \clef bass
    \times 4/6 {\change Staff = LH f,( ges a \change Staff = RH b d es)}
    \stemUp
    \times 4/6 {
      \change Staff = LH es,( f ges \change Staff = RH
      \stemDown
      a b d)
    }
    \stemUp
    \times 4/6 {
      \change Staff = LH a,16( b d \change Staff = RH
      \stemDown
      es ges des')
    }
    \stemUp
    \times 4/6 {
      \change Staff = LH ges,,( a b \change Staff = RH
      \stemDown
      d es ges)
    }
    \stemUp
    \times 4/6 {
      \change Staff = LH f,( ges a \change Staff = RH
      \stemDown
      b d es)
    }
    \stemUp
    \change Staff = LH
    es,32( f ges a b
    \stemDown
    \change Staff = RH
    d es ges)
    \clef treble
    \stemNeutral
    b16( es ges b \times 2/3{a8 f ges)}
    c,16( ges' a c \times 2/3{ces8 g as)}
    ces,16( d f ces') b8( as)
    b,16( es ges a) <des, des'>8(<ces ces'>)
    <<
      {
        \mergeDifferentlyDottedOn
        <b b'>8<as as'>
        \clef bass
        <g g'>8.<f f'>16
      }
      \\
      {
        b16 es as, <b es>
        g <c es> b f
      }
    >>
    <es b' es>8-. r
    \clef treble
    \ottava #1
    \set Staff.ottavation = #"8"
    <es''' es'>-.
    \ottava #0
    r
  }
  \set Score.skipBars = ##t
  R2*8
  \clef bass
  \relative es {
    \makeOctaves #1 {
      es16 d es fes es f fes es fes es fes f e ges f e f e f ges f g ges f
      \clef treble
      ges f ges g ges as g ges g ges g as g a as g as g as a as b a as a as a b a ces b a
      b g as a b a b h c des d es e f fis g as g as b a b c b fis g as b c des d es
      \ottava #1
      \set Staff.ottavation = #"8"
      e f g as b as b c h c des c b as ges as g as f as e f des f
      \ottava #0
      c f ces f b, ces a b ces eses c des b ces as a g as! f ges eses fes des eses es!8 r r4
    }
  }
  R2*4 \break
  r4 r8. <c'' es'' ges'' c'''>16
  \override TupletBracket #'bracket-visibility = ##t
  \times 2/3{<ces''! f'' ces'''!>4 <g' c'' f'' g''> <as' c'' f'' as''>}
  d'16 a' e'' g'' h' f'' a'' d''' g' des''! fes'' b'' b' es'' g'' des'''
  as' es'' deses''' fes''' fes'' ces''' fes''' as'''
  des'' as'' des''' f'''b'' f'''
  \ottava #1
  \set Staff.ottavation = #"8"
  as''' des''''
  fis'' h'' gis''' cis'''' a'' fis''' a''' d''''
  gis'' cis''' fis''' his'''  cis''' gis''' cis'''' e''''
  b'' f''' c'''' es'''' g''' des'''' f'''' b''''
  es''' heses''' deses'''' ges'''' heses'' es''' ges''' ces''''
  \ottava #0
  <<
    {
      b''! f''' b''' des'''' ges'' des''' f''' b''' d'' g'' d''' g'''
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \tuplet 3/2 4 {
        <a'' a'''>8 <f'' f'''> <fis'' fis'''>
      }
    }
    \\
    {
      \autoBeamOff
      \crossStaff {
        \override TupletNumber #'transparent = ##t
        \override TupletBracket #'bracket-visibility = ##f
        \tuplet 3/2 4 {
          f'8 c' des' ges' c' des' g' cis' d' a' f' fis'
        }
      }
      \autoBeamOn
    }
  >>
  \ottava #1
  \set Staff.ottavation = #"8"
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \tuplet 3/2 4 {
    <b'' b'''> <f ''f'''> <ges'' ges'''> <c''' c''''> <f'' f'''> <ges'' ges'''>
    <des''' des''''> <gis'' gis'''> <a'' a'''><es''' es''''> <gis'' gis'''> <a'' a'''>
  }
  \relative es'''{
    \override TupletNumber #'transparent = ##f
    \override TupletBracket #'bracket-visibility = ##t
    \tuplet 3/2 2 {
      <b c es b'>4<ges c es ges><a c es a>
      <des ges a des><h es ges h><c es ges c>
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      <ces! des e ces'!><g des' e g><b des e b'>
      <as des e as><e b' des e><g b des g>
      \ottava #0
      <f g b f'><es! g b es!><e g b e>
      <es g b es><c g' b c><des ges b des>
      <ces e g ces><a e' g a><b e g b>
      <as b es! as><f b es f><ges b es ges>
      <b es as b><es as b es><g b es g>
      <es g b es><h es g h><c es g c>
      <f g b f'><d f b d><es g b es>
      <f b es f><g b es g><as es' f as>
      <b es g b>4.<g b es g>8<b es g b>4
      <f g b f'><c f g c><b es g b>
      <c es g c><b es f b><as c es as>
      \change Staff = LH
      \stemUp
      <as,, c es as>
      \stemNeutral
      \change Staff = RH
      <b' es as b><b' c es b'>
      <d f b d><c es as c><b es g b>
      \change Staff = LH
      \stemUp
      <b,, es g b>
      \stemNeutral
      \change Staff = RH
      <c' es g c><c' f b c>
      <es as c es><d g b d><c f as c>
      <es as c es><d g b! d><c f as c>
      <f as c f><es as c es><d as' c d>
      <f g b f'><es g b es><d g b d>
      <g as c g'><f as c f><es g c es>
    }
    <b' es f b>2
    \clef bass
    <a,,, c e a>
  }
  R2*12
  \clef treble
  <<
    {
      f''2-- b''--
    }
    \\
    {
      h'8\rest c''4( b'8)
    }
    \\
    {
      s4
      \stemDown
      h'16 c'' e'' d'' e'' f'' a'' g'' fis'' g'' f'' e''
    }
  >>
  <<
    {
      f''4. g''8
    }
    \\
    {
      e''16 cis'' e'' d'' a' b' g'' c''
    }
  >>
  <d'' e''>16 a'' cis''' f''' <h'' e'''> a'' <e'' f''> h'
  <<
    {
      g''16 e'' cis'' d'' e'' h' c'' e''
      \stemDown
      <b' fis''>16 a'' <e'' c'''>8
      \stemNeutral
      s8 <g' c''>
    }
    \\
    {
      h'4( a') s <f'' d'''>
    }
    \\
    {
      s2. s8. \stemDown a'16
    }
  >>
  <ges''! es'''!>4
  %\ottava #1
  <<
    {
      ces''''4 b''' as''' <des''' des''''>4. <ces''' ces''''>8
      <f'' f'''>8[<ges'' ges'''><as'' as'''><ges'' ges'''>]
    }
    \\
    {
      ges'''16 des''' ces'''8 b'''16 as'' des''' es''' fes''' as'' ces''' ges'''
      s4 f'''16 ges''' s8 f''16 des''' es''' fes''' es''' des''' b'' ces'''
    }
  >>
  <<
    {
      <des'' des'''>4 as'''16 des''' g''' c''''
    }
    \\
    {
      s8 \stemUp b''4 s8
    }
    \\
    {
      \stemDown
      des''16 fes'' as'' es''' f'''!8 <as'' fes'''>
    }
  >>
  \relative es'''{
    h'16 g d es a g cis, d fis e h c cis d e d ais h c gis a h c a
    g fis eis fis d' h a g fis g a ais c h cis d e fis a g fis e cis d
    e d h c d c ais h
  }
  <<
    {
      c'''4 b'' g''2 s as''4 g''
    }
    \\
    {
      \mergeDifferentlyHeadedOn
      c'''16 a' es'' g'' b'' b' d'' es'' g'' b' es'' c'' d'' ges'' b'' d'''
      c''' es''' b''' ges'''! es''' d''' g''' ces''' as'' b' c'' es'' g'' as' c'' d''
    }
  >>
  f''2 <b' d''>4. <a' c''>8
  <<
    {
      c''4. ces''8 ces''4 b' b' as'
    }
    \\
    {
      as'2 ges' f'
    }
  >>
  <<
    {
      b'2
      \set Staff.beatStructure = #'( 4)
      s8 <ges' des''><b' ges''><des'' b''>
      <eses'' ces'''><ces'' ges''><ges' eses''><eses' ces''>
      <ges' eses''><ces'' ges''><eses'' ces'''><ges'' eses'''>
      <ces''' ges'''><ges'' eses'''><eses'' ces'''><ces'' ges''>
      <a' f''><eses'' a''><f'' eses'''><a'' f'''>
      <eses''' a'''><a'' f'''><f'' eses'''><eses'' a''>
      <f'' eses'''><a'' f'''>
      < eses''' a'''><f''' eses''''>
    }
    \\
    {
      \autoBeamOff
      \crossStaff {
        s2 s8 des' s4 s4 des'8 s
        s ges' des'8 s s des' ges' s
        s4. des'8 s ges' s4
      }
      \autoBeamOn
    }
  >>
  \ottava #1
  \set Staff.ottavation = #"8"
  <b''' ges''''>2
  \ottava #0
  R2*25
  <<
    {
      b''4( as'')
    }
    \\
    {
      <ces'' d''>2
    }
  >>
  R2*7
  \change Staff = LH
  s16. \stemUp f32 b
  \change Staff = RH
  des' f' b' des'' f'' b'' des''' f'''
  \ottava #1
  \set Staff.ottavation = #"8"
  b''' des'''' f''''
  \stemNeutral
  \override TupletNumber #'transparent = ##f
  \override TupletBracket #'bracket-visibility = ##t
  \tuplet 3/2 {<des''' fes''' as''' des''''>4.<des''' fes''' as''' c''''>8<des''' fes''' as''' des''''>4}
  \ottava #0
  R2*9
  \change Staff = LH
  s16. \stemUp b,32 es ges b
  \change Staff = RH
  es' ges' b' es'' ges'' b''
  \ottava #1
  \set Staff.ottavation = #"8"
  es''' ges''' b'''
  \stemNeutral
  \tuplet 3/2 {<ges''' heses''' des'''' ges''''>4.<f''' heses''' des'''' f''''>8<ges''' heses''' des'''' ges''''>4}
  \ottava #0
  R2*2
  \change Staff = LH
  s16. \stemUp ces32 fes as
  \change Staff = RH
  ces' fes' as' ces'' fes'' as'' ces''' fes'''
  \ottava #1
  \set Staff.ottavation = #"8"
  as''' ces''''
  \stemNeutral
  \tuplet 3/2 {<ces''' eses''' as'''>4.<as'' ces''' eses''' as'''>8<ces''' eses''' as''' ces''''>4}
  \ottava #0
  R2
  \change Staff = LH
  s16. \stemUp as,32 des f as
  \change Staff = RH
  des' f' as' des'' f'' as'' des'''
  \ottava #1
  \set Staff.ottavation = #"8"
  f''' as'''
  \stemNeutral
  \tuplet 3/2 {<des''' f''' as''' des''''>4.<des''' f''' as''' c''''>8<des''' f''' as''' des''''>4}
  \ottava #0
  R2
  \change Staff = LH
  s16. \stemUp a,32 es ges a
  \change Staff = RH
  es' ges' a' es'' ges'' a'' es''' ges''' a'''
  \ottava #1
  \set Staff.ottavation = #"8"
  \stemNeutral
  \tuplet 3/2 {<f''' a''' c''''>4.<es''' a''' c''''>8<f''' a''' c'''' f''''>4}
  \ottava #0
  R2 \break
  \set Staff.beatStructure = #'()
  \relative es'' {
%%%%%%%%%%%%%
    \stemUp
    f8.\f des16^( f4) ges8. es16^( ges4)
    \stemNeutral
    f8. des16( f4)
    r4 b,16( c des <b b'>)<a a'>8(<as as'>) g16( as h <f f'>)
    <ases ases'>8(<ges ges'>) a16( b des <ges, ges'>)
    <b b'>8(<a a'>) h16( c d <g, g'>)
    <des' des'>8(<c c'>) d16( es ges ces!)
    <e, e'>( b' c des)<es, es'>(a h c)<d, d'>( as' b ces)<des, des'>( g a b)
    <c, c'>( ges' as heses)<ces, ces'>( f g as)<b, b'>(fes' ges! ases)
    <a, a'>(es' f ges)<as,! as'!>(d e f)<g, g'>( des' es fes)
    <ges,! ges'!>( c d es)<f, f'>( ces' des eses)
    <<
      {
        <e, e'>2->~^( q4 <des des'>_><c c'>_><b b'>_>)
      }
      \\
      {
        e16( des' b des,
        \change Staff = LH
        \stemUp
        b des, b e,)
        \change Staff = RH
        s2 s
      }
    >>
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    \set subdivideBeams = ##t
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \tuplet 6/4 4 {
      des''16( a' e b' f c' a des b e c f des a' e b' f c' a des b
      \ottava #1
      \set Staff.ottavation = #"8"
      e c f
      des a' e b' f ces'!)
    }
    <c, e a c>8-><des e a des>->
    \override TupletNumber #'transparent = ##f
    \override TupletBracket #'bracket-visibility = ##t
    \tuplet 3/2 {<f b des f>4.<e b' des e>8<f b des f>4}
    <ges heses des ges>4
    \ottava #0  r
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \tuplet 6/4 4 {
      \ottava #1
      \set Staff.ottavation = #"8"
      f'16( e es des c ces b a as ges f e
      \ottava #0
      es des c ces b a as ges f e es des
      c ces b a as ges \parenthesize f e es des c ces)
    }
    b4->
    \tuplet 6/4 4 {
      \change Staff = LH g16 \change Staff = RH
      a' d, b' ges! des'! g, a' d, b' ges! des'!
      \ottava #1
      \set Staff.ottavation = #"8"
      g, a' d, b' ges! des'!
      \set subdivideBeams = ##f
      fes ases, es' ces ges ces,
      \ottava #0
      fes ases, es' ces ges ces,
      fes ases, es' ces ges ces,
      \change Staff = LH
      fes ases, es' ces ges ces,
      e a \change Staff = RH fis' \change Staff = LH g,
      \change Staff = RH dis' h'
      e, a fis' g, dis' h' e, a fis' g, dis' h'
      \ottava #1
      \set Staff.ottavation = #"8"
      e, a fis' g, dis' h'
      as! d, b es ces fes,
      \ottava #0
      as d, b es ces fes,
      as d, b es ces fes,
      \stemUp
      as d, \change Staff = LH b \change Staff = RH es ces
      \change Staff = LH
      fes, \mergeDifferentlyHeadedOn
      des heses' \change Staff = RH es \change Staff = LH f,!
      \change Staff = RH des' as'
      \stemNeutral
      ges heses es f, des' as'
      ges heses es f, des' as'
      \ottava #1
      \set Staff.ottavation = #"8"
      ges heses es f, des' as'
      a e h c dis, a \ottava #0 a' e h c dis, a a' e h c dis, a
      a' e \change Staff = LH h c dis, a
      des, as'' \change Staff = RH es' \change Staff = LH fes,
      \change Staff = RH des' g
      <<
        {
          des as' es' fes, des' g
        }
        \\
        {
          des,4
        }
      >>
      des'16 as' es' fes, des' g
      \ottava #1
      \set Staff.ottavation = #"8"
      des as' es' fes, des' g
      as f h, c g c, \ottava #0 as' f h, c g c,  as' f h, c g c,
      as' f h, c \change Staff = LH g c, a f' h e,
      \change Staff = RH c' gis' a, f' h e, c' gis' a, f' h e, c' gis'
      \ottava #1
      \set Staff.ottavation = #"8"
      a, f' h e, c' gis' a d, fis, e' b e, \ottava #0
      a d, fis, e' b e, a d, fis, e' b e, a d, \change Staff = LH fis,
      \change Staff = RH e' \change Staff = LH b e,
      \stemUp b f' d' es, ges c \stemNeutral
      <<
        {
          b \change Staff = RH f' d' es, ges c
        }
        \\
        {
          b,4
        }
      >>
      \change Staff = RH
      b'16 f' d' es, ges c
      \ottava #1
      \set Staff.ottavation = #"8"
      b f' d' es, ges c
      heses ges c, \ottava #0 des as des, heses' ges c, des as des,
      heses' ges c, des \change Staff = LH as des,
      heses' ges c, des as eses des as' des es as, f'
      des as' \change Staff = RH des es \change Staff = LH as,
      \change Staff = RH f' des as' des es as, f' des as' des es as, f'
    }
  }%%%%%%%%%%%%%%%%
  <<
    {
      s8 g''' fis''' e''' h'''4 s8 g''' fis''' e''' a'''4 s8 a''' gis''' fis''' c''''4 s8 heses'''
      as''' ges''' ces''''4 s8 as''' g''' f'''
      \repeat unfold 4 {ces'''' as''' g''' f'''} b''' ges'''! f''' es'''
      \repeat unfold 3 {b''' ges''' f''' es'''}
      \repeat unfold 8 {b''' f''' e''' d'''}
    }
    \\
    {
      \relative es''' {
%%%%%%%%%%%%%
        \override TupletNumber #'transparent = ##t
        \tuplet 6/4 4 {
          g,16 fis c' g' h, e, fis' h, e, e' h e,
          h'' es, as, d g, c, b' fis d' g b, d,
          fis' b, d, e' b d, a'' des, ges, c f, b,
          g' fis d' a' d, fis, gis' d fis, fis' d fis,
          c'' fes, b, es as, c, fes ces' fes heses ces, fes,
          as' ces, fes, ges' ces, fes, ces'' ges heses, fes' as, c,
          des g es' as des, f,! g' des f, f' des f,
          \repeat unfold 4 {ces'' es, g, as' des, f,! g' des f, f' des f,}
          \repeat unfold 4 {b' ces, f, ges' b, es, f' b, es, es' b es,}
          \repeat unfold 8 {b'' ces, f, f' as, d, e' as, d, d' as d,}
        }
      }%%%%%%%%%%%%%%
    }
  >>
  \tuplet 6/4 4 {
    \repeat unfold 12 {g''' d''' es''' as'' c''' g''} as''' c''' des'''! as'' es''' f''
    \repeat unfold 7 {as''' c''' des''' as'' es''' f''}
    \repeat unfold 4 {as''' c''' des''' as'' es''' ges''} as''' ces'''! des''' as'' es''' ges''
    \repeat unfold 25 {as''' ces''' des''' as'' es''' ges''}
  }
  \clef bass
  \change Staff = LH
  es,,32^( b,, ges,
  \change Staff = RH
  \stemUp
  b, es ges b
  \clef treble
  es'
  \stemNeutral
  ges' b' es'' ges'' b'' es'''
  \ottava #1
  \set Staff.ottavation = #"8"
  ges''' b'''
  es''''4)
  \ottava #0
  r\fermata
  \clef bass
  \change Staff = LH
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 8/13 {
    es,,32[( b,, ges,
    \change Staff = RH
    \stemUp
    a, b, c es ges a b
    \clef treble
    c' es' ges']
  }
  \stemNeutral
  \times 8/14 {
    a'[ b' c'' es'' ges'' a'' b'' c''' es''' ges'''
    \ottava #1
    \set Staff.ottavation = #"8"
    a''' b''' c'''' ges'''']
  }
  a''''4)
  \ottava #0
  r\fermata
  R2
}