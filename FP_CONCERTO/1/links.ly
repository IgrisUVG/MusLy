\version "2.18.0"
\language "deutsch"
\include "makeOctaves.ly"
links = {
  \clef bass
  \key es \minor
  \time 2/4
  s16. es,32 ges, b,  es ges b
  \clef treble
  es' ges' b' es'' ges'' b'' es'''
  ges'''4 r\fermata
  \clef bass
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 8/13 {
    s16. c,32[ es, ges, a, b, c es ges a b]
  }
  \clef treble
  \times 8/14{
    c'[ es' ges' a' b' c'' es'' ges'' a'' b'' c'''
    \ottava #1
    \set Staff.ottavation = #"8"
    es''' ges''' a''']
  }
  b'''4
  \ottava #0
  r\fermata
  \clef bass
  as,16( ces d f as4) ges,16( a, b, es ges4)
  <<
    {
      es,16_( ges
      \change Staff = RH
      \stemDown
      b es')
      \change Staff = LH
      \stemNeutral
      b,_( ges
      \change Staff = RH
      \stemDown
      b es')
      \change Staff = LH
      \stemNeutral
      fes,_( as
      \change Staff = RH
      \stemDown
      ces' d')
      \change Staff = LH
      \stemNeutral
      ces_( as
      \change Staff = RH
      \stemDown
      ces' d')
      \change Staff = LH
    }
    \\
    {
      es,4 b, fes, ces
    }
  >>
  es16( ges a b) b,( es ges a) ces( es f as ces'8.)
  <<
    {
      <es, es>16_( b,8) s s8.
      <e, e>16_(ces8) s s4
    }
    \\
    {
      s16 b, e^(f g b8.)
      s16 ces es^(ges g a8) d\rest
    }
  >>
  es,,4 r8 a( b4 ces' g) r f( b e8) r r4 ges( f es8) r
  \clef treble
  s4 s2 s2
  a''8 r as'' r g'' r ges'' r f'' r fes'' r es'' r d'' r des'' r c'' r ces'' r b' r
  r4 s
  \stemDown
  a4->
  \clef bass 
  \stemUp
  ges^> f^>
  \stemDown
  es->
  a,_>  ges,_> f,_>  es,_>
  \stemNeutral
  r4 a,16( b, c es
  a4) as,16( ces d f
  as4) ges,16( a, b, es
  ges4) f,16( as, b, es)
  <<
    {
      \mergeDifferentlyDottedOn
      g16 c f c es8 c16 d
    }
    \\
    {
      <g, g>8 <f, f> <as, es>8. b,16
    }
  >>
  es,8-. d\rest es,,-. d\rest
  \set Score.skipBars = ##t
  R2*8
  \relative es {
    \makeOctaves #-1 {
      es,16 d es fes es f fes es fes es fes f e ges f e f e f ges f g ges f
      ges f ges g ges as g ges g ges g as g a as g as g as a as b a as a as a b a ces b a 
      b g as a b a b h c des d es e f fis g as g as b a b c b fis g as b c des d es
      \clef treble
      e f g as b as b c h c des c b as ges as g as f as 
      \clef bass
      e f des f
      c f ces f b, ces a b ces eses c des b ces as a g as! f ges eses fes des eses es!8 r r4
    }
  }
  R2*4
  r4 r8. <heses, ges ces'!>16
  \override TupletNumber #'transparent = ##f
  \override TupletBracket #'bracket-visibility = ##t
  \times 2/3{<as, f as>4 <f c' f'> <c f c'>}
  \relative c, {
    \override TupletBracket #'bracket-visibility = ##f
    \tuplet 3/2 4 {
      d8 as a e' c cis f c! des g d es
      \override TupletNumber #'transparent = ##t
      as es fes ces' g as des g, as f' c des fis his, cis gis' cis, d
      gis dis e a dis, e b' e, f
      \makeOctaves #-1 {
        c' as a des as heses es b ces
      }
      f, c des ges c, des g cis, d a' f fis
      \clef treble
      \makeOctaves #1 {
        b f ges c f, ges des' gis, a es' gis, a
      }
    }
    \override TupletNumber #'transparent = ##f
    \override TupletBracket #'bracket-visibility = ##t
    \tuplet 3/2 2 {    
      <b c es b'>4<ges c es ges><a c es a>
      <des es ges des'><h es ges h><c es ges c>
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      <ces! des e ces'!><g des' e g><b des e b'>
      <as des e as><e b' des e><g b des g>
      \clef bass
      <f g b f'><es! g b es!><e g b e>
      <es g b es><c g' b c><des ges b des>
      <ces e g ces><a e' g a><b e g b>
      <as b es! as><f b es f><ges b es ges>
      <b es as b><es as b es><g b es g>
      q <f b d f><es as c es>
      <d g b d><c f as c><b es g b>
      <as c es as><g b es g><f b es f>
      <es g b es><b' es f b><es g b es>
      <d,, d'><b'' es as b><f' g b f'>
      <es as b es><c, as' c><b' c es b'>
      \stemDown
      <as, es'>
      \stemNeutral
      <g' c es g><f as c f>
      <es as b es><es, b' es><c'' f b c>
      \stemDown
      <g, es'>
      \stemNeutral
      <as' es' f as><g b es g>
      <f as c f><as c f as><b es g b>
      <c es g c><h f' as h><c f g c>
      <d g c d><h f' g h><c es g c>
      <es g b es><d g b d><es g b es>
      <f as c f><d g c d><es as c es>
    }
    <g b es g>2
    <a,, e'>
    R2*12
  }
  <<
    {
      b2( a) s4
      \clef treble
      a'16\rest fis' dis' e' f' b d' h
    }
    \\
    { 
      f16 c' e' \change Staff = RH f' \change Staff = LH
      s4 r4 c( h,) s4 a
    }
  >>
  c'16 gis a c' f8 c'
  g' fis' a'16 g' d' fis
  <<
    {
      c'16 e' f'8 ces'!16 f' des''!8 r16 fes''8 es''16
      ges'' fes'' ces'' as'
    }
    \\
    {
      c'8 b! s8 b'16 ges'!~ ges'4 ces''8 s
    }
  >>
  fes'16 es' fes' as' b' ces'' ges'' \change Staff = RH es'''
  \change Staff = LH ces''' as'' ges'' es'' des'' ces'' b' as' g' as' es''8
  <<
    {
      s4 s8. fes''16 d''8 c''8 <c' fis' h'>4\arpeggio
    }
    \\
    {
      c''8\rest c'' b' heses' as'4 a8 ais
    }
  >>
  <h d' g' d''>2\arpeggio r4 \clef bass
  h a g fis g es!4. h8 fis4. e8 r4 \clef treble
  g'8 d' es b es' ges'! des''! b'
  <<
    {
      ges''!4
    }
    \\
    {
      a'8 as'
    }
  >>
  g'8 f' es'4
  \clef bass
  ces!16 g d'
  \change Staff = RH
  es' g' as' ces''! es''
  \change Staff = LH
  <es ges'!>2 <f d'><as d'><ces'! des'>
  \set Staff.beatStructure = #'( 4)
  ges,,8 <b, ges><des b><ges des'>
  \change Staff = RH
  \stemDown
  <b ges'>
  \change Staff = LH
  ges <des b><b, ges>
  ges, <des b>
  ges
  \change Staff = RH
  \once \override NoteColumn.force-hshift = #1.3
  <b ges'>
  \once \override NoteColumn.force-hshift = #1.3
  <des' b'>
  \change Staff = LH
  b ges <des b>
  des, ges b
  \change Staff = RH
  <des' b'>
  \once \override NoteColumn.force-hshift = #1.6
  <ges' des''>
  <des' b'><b ges'>
  \change Staff = LH
  ges
  b,, b
  \change Staff = RH
  <des' b'><ges' des''>
  \once \override NoteColumn.force-hshift = #1.6
  <b' ges''>
  <ges' des''><des' b'><b ges'>
  \change Staff = LH
  \stemNeutral
  ges,,2
  R2*25
  <as f'>2
  R2*7
  \stemDown
  b,,32 f, des b, des f b
  \change Staff = RH
  des' f' b' des'' f'' b'' des''' f''' b'''
  \change Staff = LH
  \stemNeutral
  \clef treble
  \override TupletNumber #'transparent = ##f
  \override TupletBracket #'bracket-visibility = ##t
  \tuplet 3/2 {<des'' fes'' as''>4.<c'' fes'' as''>8<des'' fes'' as''>4}
  R2*9
  \clef bass
  \stemDown
  es,,32 b,, ges, es, ges, b, es ges b
  \change Staff = RH
  es' ges' b' es'' ges'' b'' es'''
  \change Staff = LH
  \stemNeutral
  \clef treble
  \tuplet 3/2 {<ges'' heses'' des'''>4.<f'' heses'' des'''>8<ges'' heses'' des'''>4}
  R2*2
  \clef bass
  \stemDown
  fes,,32 ces, as, fes, as, c fes as
  \change Staff = RH
  ces' fes' as' ces'' fes'' as'' ces''' fes'''
  \change Staff = LH
  \stemNeutral
  \clef treble
  \ottava #1
  \set Staff.ottavation = #"8"
  \tuplet 3/2 {<ces''' fes''' as'''>4.<as'' ces''' fes'''>8<ces''' fes''' as'''>4}
  \ottava #0
  R2
  \clef bass
  \stemDown
  des,,32 as,, f, des, f,as,des f as
  \change Staff = RH
  des' f' as' des'' f'' as'' des'''
  \change Staff = LH
  \stemNeutral
  \clef treble
  \tuplet 3/2 {<des'' f'' as''>4.<c'' f'' as''>8<des'' f'' as''>4}
  R2
  \clef bass
  \stemDown
  c,,32 a,, es, c, f, a, c f a
  \change Staff = RH
  c' f' a' c'' f'' a'' c'''
  \change Staff = LH
  \stemNeutral
  \clef treble
  \tuplet 3/2 {<f'' a'' c''' es'''>4.<c'' es'' a'' c'''>8<f'' a'' c''' es'''>4}
  R2
  \clef bass
  \set Staff.beatStructure = #'()
  <<
    {      
      b,16_( des'
      \change Staff = RH
      \stemDown
      f' b')
      \change Staff = LH
      \stemUp
      f_( des'
      \change Staff = RH
      \stemDown
      f' b')
      \change Staff = LH
      \stemUp
      ces_( es'
      \change Staff = RH
      \stemDown
      ges' a')
      \change Staff = LH
      \stemUp
      ges_( es'
      \change Staff = RH
      \stemDown
      ges' a')
    }
    \\
    {
      b,4 f ces ges
    }
  >>  
  \change Staff = LH
  \stemNeutral
  \relative b {b16( des e f) f,( b des e) ges,( b c es ges8)}
  <<
    {
      s16
      \stemDown
      <b, b>(
      \stemUp
      f8) s4 s16
      \stemDown
      <h, h>16(
      \stemUp
      ges8) s4 s16
      \stemDown
      <c c'>16(
      \stemUp
      g8) s4. b,8 s
    }
    \\
    {
      s8
      f16( h c' d' es'8.) s16
      ges( b des' d' e'8.) s16
      g16( b c' des')
      \tuplet 3/2 {<es es'>8^- <g, g>^- <ges, ges>^-}
      b,16( des e ges)
    }
  >>
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \tuplet 3/2 4 {
    <a, a>8--<f, f>--<ges, ges>--<b, b>--<e, e>--<f, f>--
    <ces ces'>--<f, f>--<ges, ges>--<c c'>--<g, g>--<as, as>--
  }
  \relative b {%%%%%%%%%%%%%%%%%%
               <d, d'>16( fes ges g)<c, c'>( es f ges)<ces, ces'>( d e f)
               <b, b'>( des es fes)<a, a'>( c d es) <as, as'>( ces des d)
               <g, g'>( b c des)<ges, ges'>( a h c)<f, f'>( as b ces) s2
               \set baseMoment = #(ly:make-moment 1/8)
               \set beatStructure = #'(2 2 2 2)
               \set subdivideBeams = ##t
               \override TupletNumber #'transparent = ##f
               \tuplet 6/4 4 {b,16( f' e b' f c'
                              \override TupletNumber #'transparent = ##t   
                              a des b e c f des a' e b' f c' a des b e c f)
               }
               <e, e'>4-><des des'>-><c c'>-><b b'>->
               <e, e'>4-><des des'>-><c c'>-><b b'>->
               <ges ges'>-> r4
               <f'' b f'>8.<des b' des>16<f b des f>4
               <ges a ces ges'>8.<es a ces es>16<ges a ces ges'>4
               <f b f'>8.<des b' des>16<f b f'>4
               \tuplet 6/4 {g,16 a' d, b' ges! des'!}
               g,4_> ges!-> f-> ces2 s \stemDown e,_\laissezVibrer s
               \stemNeutral <as, as'>2\laissezVibrer s
               \stemDown <des des'>\laissezVibrer s
               \stemNeutral <a a'>\laissezVibrer s
               \stemDown <des, des'>\laissezVibrer s
               \stemNeutral <f f'>\laissezVibrer s
               \stemDown <a a'>\laissezVibrer s 
               \stemNeutral <d d'>\laissezVibrer s
               \stemDown <b b'>\laissezVibrer s
               \stemNeutral <ges ges'>\laissezVibrer s
               \stemDown <des des'>\laissezVibrer s
  }%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      <e,, e,>2 s4 <\tweak #'duration-log #1 g,, \tweak #'duration-log #1 g,>4
      s2 <d,, d,>2 s4 <\tweak #'duration-log #1 fes,,\tweak #'duration-log #1 fes,>4
      s2<des,, des,>2 q q q q <es,, es,> q q q <f,, f,> q q q q q q q
    }
    \\
    {
      g8\rest <h, g><fis h><e dis'><c, es>16.<c c'>32<es es'>8
      b8\rest <d b><a d'><g fis'><b,, des>16.<b, b>32<des des'>8
      g8\rest <a, fis><e a><d cis'><as,,! es, as,>16.<c c'>32<es es'>8
      a8\rest <ces heses><as fes'><ges ges'><as as'>4
      \repeat unfold 5 {g8\rest <as, f><heses es'>16.<f f'>32<as as'>8}
      \repeat unfold 4 {a8\rest <b, ges><ces' f'>16.<ges ges'>32<b b'>8}
      \repeat unfold 8 {b8\rest <ces as><c' d' ges'>16.<as as'>32<ces' ces''>8}
    }
  >>
  \clef treble
  \set subdivideBeams = ##f
  \repeat unfold 8 {c'16 g' c'' es'' d'' g''}
  \repeat unfold 6 {des' g' as' es'' des'' f''} des' ges'! as' es'' des'' f''
  des' ges' as' es'' des'' f'' \repeat unfold 17 {des' ges' as' es'' des'' ges''} r8
  \clef bass
  s16. es,32 ges, b,  es ges b
  \clef treble
  es' ges' b' es'' ges'' b'' es'''
  ges'''4 r\fermata
  \clef bass
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 8/13 {
    s16. c,32[ es, ges, a, b, c es ges a b]
  }
  \clef treble
  \times 8/14{
    c'[ es' ges' a' b' c'' es'' ges'' a'' b'' c'''
    \ottava #1
    \set Staff.ottavation = #"8"
    es''' ges''' a''']
  }
  b'''4
  \ottava #0
  r\fermata
  \clef bass
  R2
}