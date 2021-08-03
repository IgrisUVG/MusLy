\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsZehn = {
  \clef treble
  \key b \major
  \time 4/4
  \once\override Score.RehearsalMark.extra-offset = #'(1 . 2)
  \mark "Allegro"
  %\override Staff.Clef #'break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  %\override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  %\set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  %\override Staff.KeyCancellation #'break-visibility = #all-invisible
  %\override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible
  \set Staff.printKeyCancellation = ##f
  <<
    {
      \partial 2 r8\stemDown f'''->( d''' b''
      f'' d'' f'' b'\stemNeutral f'-.) f'4->-- b8
      d'( g' b' es''\stemDown <b' g''>-.)<b' g''>4->-- f''8\stemUp
      d''( b' f'-.) es'4->-- b'8( ges' es' f'-.) d'4->-- r8<b b'><a d' a'> r <b' b''>(
      <f' f''><es' es''><d' d''>-.)<d' d''>2->-- <b b'>8(
      <a a'><g d' g'><f d' f'>4->) d'''8( f''' d''' b'' g''-.) g''4->-- g''-> f''8( b'' f''
      d''-.) c''4 a'8 c'' d''4-> a''8 a'' a'' a'' a''4 c''8( a' f'
      c'-.) a4-> d'8( c'-.)\noBeam es''( c'' as'
      es'-.) c'4-> c'8-. r <c'' c'''>->(<a'! a''!><f' f''>
      <c' f' c''>)<a d' a'>4-><d' g' d''>8(<c' g' c''>->)\noBeam
      \ottava #1
      \set Staff.ottavation = #"8"
      es'''' c'''' as'''
      \ottava #0
      es''' f'''4 g'''8->~g'''4 d'''8 b''
      \autoBeamOff
      g'' b' g'' f'' d''4 d''8 b' g'4. g'4~g'4.
      s8 g'' f'' d''4 g''8 f'' d'' c'' b'4~b'~b'4.
    }
    \\
    {
      s2 s b8-. b4->-- r8 r4 es'8 g' s2
      f'4 b8-. b4 b4. c'8-. b4-- s8 s4 <g d' g'>~q s2. s2 f''4. d''8 b'-. b'4 b'4 b'4.
      es'8 d'4 d' f' r8 r c'' d'' c''4-> c'4 a8
      f d4-> g <es' g'> c'8 as f4 e8 r
      c''4 a'8 s2 s8 <es''' g'''> q <c''' es'''>
      <es'' as''><f'' c'''>4<g'' b''>8~q4 g''8 d''
      \autoBeamOff
      b' s d''4 g' g'8 d' b4. c'4~c'4. b'8 d''4 g' d'' s8 g'1
    }
  >>
  \bar "||"\break
  \relative b'' {
    \override Slur.positions = #'(1 . 1)
    f8[(f16]b8[b8.]g8[b16]b8[b8.]f16[f8]b[b8.]g16[a b]b8.[c8]d4.c8b2)
    f8[(f16]b8[b16b8]g[b16]b8[b16b8]f8[f16]b8.[b16b]g[ a b]b8.[c8]d4.c8b2)
    f'8[(f16]f8[d8.]g,8[b16]b8[c16d8])r f16[(f]f[d8] b16g8[b16]b~b4)
    f8[(f16]b8[b16b8]g[b16]b8[b16b8])f8[(f16]b8.[b16c]d8.b[c8]d2.)f8(d
    es4.es8d[ c b8.c16]d8b2)r8f'8(d
    es4.es8d[ c b8.c16]d2.)f8(d
    es4.es8d[ c b8.c16]d8b2)r8r<b d>16(q
    q<a c><g b>q~q8)<b d>16(q q<a c><g c><a c>~q8)<g b>16(<a c>
    <b d><a c><g b><f b>~q8)<b d>16(q<d f><b d>q q~q8)q16(q q<d f>8.~q4~q4.g8
    d16[b8])\repeat unfold 3 {<f d'>16[(<d b'>8]->)}<f, d'>16[(<d b'>8]->)r16
    d'16([b8])\repeat unfold 2 {<f d'>16[(<d b'>8]->)}r8. r4\bar "||"
    \time 2/4
    \times 2/3{r8[<c c'><d d'>]}\times 2/3{<es es'><f f'><fis fis'>}
    <g g'>4\times 2/3{<b b'>4<f' f'>8}<es es'>4~\times 2/3{<es es'>4<as as'>8}
    <g g'>4\times 2/3{<ges, ges'>4<des' des'>8}
    <h h'>4\times 2/3{
      <ais ais'>4
      \ottava #1
      \set Staff.ottavation = #"8"
      <cis' cis'>8
    }<h h'>4.<ais ais'>8
    \times 2/3{
      <gis gis'>8
      \ottava #0
      gis,( ais
    }\times 2/3{h8 cis cisis)}%\break
    \key h \major
    dis4(\times 2/3{fis4 cis'8}h4~\times 2/3{h4 e8}dis4.) e,8\rest
    \change Staff = LH
    r4 \tuplet 6/4 4 {
      \shape #'((0 . -12) (0 . 1) (0.5 . 2) (0 . -4)) Slur
      fis,,,16( cis' ais' cis fis ais\change Staff = RH cis fis ais cis h-> ais
    }
    dis,4)
    \change Staff = LH
    r4 \tuplet 6/4 4 {
      cis,,16( gis' h e gis cis \change Staff = RH e gis cis gis' fis!-> e
    }
    es4)\key b \minor
    \change Staff = LH
    f,,\once\showStaffSwitch
    \change Staff = RH \times 2/3{as4 es'8}
    \once\showStaffSwitch
    \change Staff = LH des4\clef bass s4
    \change Staff = RH
    \key es \major
    g,4\once\showStaffSwitch
    \change Staff = LH
    \clef treble
    \times 2/3{b4 f'8}\once\showStaffSwitch
    \clef bass
    \change Staff = RH
    es4\change Staff = LH r4\key g \minor as,\once\showStaffSwitch
    \change Staff = RH \times 2/3{c4 g'8}\once\showStaffSwitch
    \change Staff = LH f4
    r \clef bass <b,,,, b'>2\change Staff = RH
    <e' c'>2<c a'>4<a f'> r2\bar "||"
    \break
    \key a \minor
    \clef treble
    \set Staff.printKeyCancellation = ##f
    a''2.( h c2 e8 d d4 c2) \repeat unfold 3 {e,2 gis8(fis)} e4 c'2
    a2.( h c4 e4. d8) gis,4( a2)\repeat unfold 3 {e2 gis8(fis)} e4 c'4.( h8
    a2. h <es, c'>4-.)r\clef bass <a,, fis'>(<b g'>) r2 \bar "|."
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.direction = #DOWN
    \override Score.RehearsalMark.extra-offset = #'(0 . -1)
    \mark \markup {\small{( Август )}}
  }
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksZehn = {
  \clef bass
  \key b \major
  \time 4/4
  %\override Staff.Clef #'break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  %\override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  %\set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  %\override Staff.KeyCancellation #'break-visibility = #all-invisible
  %\override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible
  \set Staff.printKeyCancellation = ##f
  <<
    {
      r8 d'-> b f b g b f d-. d4 f,8
      b, es g b\stemDown <es es'>-.<es es'>4 d'8\stemUp
      b f d-. c4->-- ges8 es b, f, b, f, d, <g, g><f, b, f><es,_~ b,~ es~>4
      q <b,, b,>8-. q2_>_- <g, g>8<f, f><es, b, es><d, b, d>4->
      \clef treble
      \stemNeutral b'8_( d'' b' f' es'_.) es'4_>_-\stemUp
      \clef bass
      es'4 d'4. g8 f4-> f a-> r8 r f f r4 a8 f c
      a,-. f,4-> b,8 es-.\noBeam c' as es c-. as,4-> g,8 r <a! a'>-><f f'><c c'>
      <a, a><f, d f>4-><b, g b>8 es s4. s8 as'4 <d' f'>8->~q4 b'8 g'
      \autoBeamOff
      f'8 s4. s4 b8 g es4. e4~e4. s1 s1
    }
    \\
    {
      b,2~b,4. b,8 f,-. f,4 r8 es,1 b,4 f,8-. g,4 es,4. b,,2 s s1 s2 s
      s4. c4 d8 f d b, a,4 f,8 a, b,4 f8 f b, b, f,4->~f,4.
      c,8-. b,,4 es,8 as,4. g,8 es, des,4 c,8 <f,, f,>2
      c,8 b,,4 es,8 as,\noBeam\clef treble c''' b'' <es'' g''>
      c'' des'4 g8~g4 d'8 b
      \autoBeamOff
      g\clef bass <d g d'>4.<es b es'>4 d8 b, g,4. g,4~g,4.
      <d g d'>4.<es! b es'!>4<d g d'>4.<es b es'>1
    }
  >>
  \relative b {
    \repeat unfold 10
    {
      b,16 b' d  b b' b, d  b
      es,  b' es b g' b, es b
    }
    \repeat unfold 5 {
      b,  b' d  b b' b, d  b
      d,  b' d  b b' b, d  b
      es, b' es b g' b, es b
      f   c' f  c a' c, f  c
    }
    b, b' d b b' b, d b
    r f b f f' f, b f
    r d f d d' d, f d
    r b d b b' b, d b
    \tuplet 6/4 4 {
      as16d f b f d
      \override TupletNumber.stencil = ##f
      b c b as g f
      es( b' es g b es)
      d,,( g g' b d f)
      c,,( g' es' g c es)
      ces,,( as' es' as ces es)
      b,,( g' es' g b es)
      b,,( es es' ges b des)
      gis,,,( dis' h' dis gis h)
      ais,,( fis' cis' fis ais cis)
      h,,( fis' dis' fis h dis)
      dis,,( ais' fis' ais dis fis)
      dis,,( h' gis' h dis gis)
      ais,,( fis' ais cis fis ais)
      \key h \major
      h,,( fis' h dis fis h)
      ais,,( dis dis' fis ais cis)
      gis,,(dis' h' dis gis h)
      g,,( e' h' e g h)
      fis,,( dis' h' dis fis h)
      gis,,( dis' h' dis gis h\change Staff = RH dis gis h dis cis-> h
    }
    e,4)
    \change Staff = LH r4
    \tuplet 6/4 4{
      gis,,,16( dis' h' dis gis h\change Staff = RH dis gis h dis fis f
    }
    e4)
    \change Staff = LH r4
    \tuplet 6/4 4{
      c,,,16( as' es' as c es\key b \minor \change Staff = RH f as des f es des)\change Staff = LH
      \shape #'((0 . -7) (0 . 1) (0.5 . 2) (0 . -2)) Slur
      c,,,( f es'\clef treble as c f \change Staff = RH b des f b as f des as f b,\change Staff = LH des, f,)
      \key es \major
      \shape #'((0 . -2.5) (0 . 1) (0.5 . 2) (0 . -1.3)) Slur
      es( b' es g\change Staff = RH b es g b d f es d)\change Staff = LH
      c,,,( es g b c es\change Staff = RH g b c es f g \key g \minor  as c f as g f)\change Staff = LH
      \shape #'(((0 . -3) (0 . 5) (-2 . 10) (0 . 10))
                ((0 . 0) (0 . 0) (0 . 0) (-0.5 . -3.5))
                ) Slur
      e,,,( as g'\clef treble c e as\change Staff = RH \ottava #1 d f a! d a f d a\ottava #0 f d a f
    }
    <f, d'>2)
    \time 3/4
    \clef bass \change Staff = LH
    <a,, a'>2<e e'>4<d d'> r2
    \break
    \key a \minor
    a'''4<c e> q e, <gis h d> q a4<c e> q h <dis fis a> q
    e,,-><e' gis h> q gis,-><e' gis h> q h-><e gis h> q d-><e gis h> q
    c <a' e'> q h, <gis' d' e> q a, <c' e> q d, <f a d> q
    e,-><e' gis h> q gis,-><e' gis h> q h-><e gis h> q d-><e gis h> q
    a, <c' e> q g, <d'' f> q <c, g'>-. r d,( g,) r2
  }
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicZehn = {
  \override Hairpin.to-barline = ##f

}
