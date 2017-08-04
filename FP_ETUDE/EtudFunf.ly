\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
globalFive = {
  \time 3/4
  \key e \minor
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rechtsFive = \relative {
  \clef treble
  R2.
  \clef bass
  \repeat tremolo 6 {a,16^( dis,}
  \repeat tremolo 6 {a' d,!}
  \repeat tremolo 4 {b' cis,} b' f b f')
  <as, as'>8-> <g g'>-^~ q2~ q2.
  \clef treble
  <<
    {
      gis'''2( a4 h2.)
    }
    \\
    {
      <h, e>4( <his dis><cis e> h2 <ais cis>4)
    }
    \\
    {
      \voiceFour
      s2. e'4 dis s
    }
  >>
  R2.
  \clef bass
  r8 f,-. d-. h-. gis-. f-. d-. h-. gis-. f-. d-. h-. b4-. r2
  \break
  \once \override Slur.positions = #'(2 . 1)
  \repeat tremolo 6 {c'16^( fis,}
  \repeat tremolo 6 {c' f,!}
  \repeat tremolo 6 {des' e,}
  \repeat tremolo 6 {es' a,}
  \repeat tremolo 6 {es' as,}
  \repeat tremolo 6 {fes' g,}
  \repeat tremolo 6 {fis' his,}
  \repeat tremolo 6 {fis' h,!}
  \repeat tremolo 6 {g' ais,)}
  <h h'>8-> <b b'>-^~ q2~ q2.
  \clef treble
  s2.*2
  c'16 c' cis, cis' d, d' dis, dis' e, e' f, f'
  <fis,! fis'!>8-> <fis fis'>16-> q-> \times 2/3 {q8-> q-> q->} q8-> q->
  \break
  q2-^ <g e' g>4->
  <a cis a'>2(<h gis' h>4<cis fis cis'>2.)
  <<
    {
      g'
    }
    \\
    {
      <cis, cis'>2^(<h h'>4)
    }
  >>
  <fis' ais fis'>2.
  <<
    {
      s4 e'( d) <e, cis'>(<d h'><cis a'>)<cis a'>2
    }
    \\
    {
      f4\rest <f a>2
      \once\override NoteColumn.force-hshift = #1.2
      g2.
      \once\override NoteColumn.force-hshift = #1.6
      g4( fis)
    }
  >>
  <c e a><h e gis>2<b e g>4->~ q2.
  \clef bass
  R2.
  \once \override Slur.positions = #'(2 . 2)
  \repeat tremolo 6 {a,,16^( dis,}\repeat tremolo 6 {a' d,!}\repeat tremolo 6 {b' cis,}
  \repeat tremolo 6 {c'^^ c,}\repeat tremolo 6 {c' c,}<h h'>8->) r r2
  \repeat tremolo 6 {a'16^( dis,}\repeat tremolo 6 {a' d,!)}
  \break
  b'8( cis16 g e' b g' cis, b' e, cis' g
  \clef treble
  e' b g' cis, b' e, cis' g e' b g' cis,)
  <<
    {
      \stemDown <his_~ gis'~>2.( q <h! fis'><ais eis'>\stemUp dis)
    }
    \\
    {
      s2.*4 gis,4( g <fis h>)
    }
  >>
  R2.
  \clef bass
  \repeat tremolo 6 {gis,,16^( cisis,}
  \repeat tremolo 6 {gis' cis,!}
  \repeat tremolo 4 {a' his,} a' e a e')
  <g, g'>8 <fis fis'>~ q2~ q2. r4 \repeat tremolo 4 {g16 g'}
  \repeat tremolo 4 {fis,16 fis'}\repeat tremolo 2 {c16 c'}
  \repeat tremolo 6 {h,16 h'} R2.*2
  r8 gis,16-- h-- e-- gis-- h-- e--
  \clef treble
  gis16-- h-- e-- gis~\afterGrace gis!2.\startTrillSpan {fis16[(\stopTrillSpan gis]} a4)
  \clef bass
  <cis,,, e a>2-> r8 g16-- b-- cis-- g'-- b-- cis--
  \clef treble
  g'-- b--cis-- g'~
  \afterGrace g2.\startTrillSpan {fis16[(\stopTrillSpan g]} a4)
  \clef bass
  <dis,,, fis h>2 r8 fis,16-- a-- dis-- fis-- a-- dis--
  \clef treble
  <<
    {      
      \stemDown
      fis-- a-- dis-- fis~\afterGrace fis!2.\startTrillSpan {\stemUp eis16[_(\stopTrillSpan fis]}
      %\stemUp
      gis2.)^( a4 h4. a8 g!2.) a2( g4 es f4. es8 d4 es4. des8 ces2.)
    }
    \\
    {
      s4 s2. r4 <gis h><a cis><h dis><cis e>2 d4 <g, h><a cis><h d>< cis e>2
      <g b>4<a c!>2<f b>4<fes g>2 <es as>2.
    }
  >>
  R2.*2
  \clef bass
  \repeat tremolo 6 {a,,16^( dis,}\repeat tremolo 6 {a' d,!}
  \repeat tremolo 6 {b' cis,}\repeat tremolo 2 {h'! h,}
  \repeat tremolo 4 {gis' gis'}\repeat tremolo 4 {g,! g'}\repeat tremolo 2 {d d'}
  c, c' des, des'
  \clef treble
  f, f' a, a' c, c' f, f')<as, c as'>2.<fes' ces' fes>4<f b f'>2<des b' des>2.
  <<
    {
      b'2
    }
    \\
    {
      <es, es'>4<f f'>
    }
  >>
  <g! es' g!>
  <<
    {
      dis'2.
    }
    \\
    {
      <g, g'>2<fis fis'>4
    }
  >>
  <e h' e>2.
  dis'16 dis, cis' cis, h' h, a' a, g' g, f' f,
  dis' dis, cis' cis, h' h, a' a, g' g, f' f, <g h dis>4-^<dis'' a' c dis>2->
  \clef bass
  \repeat tremolo 6 {a,,16^( dis,}
  \repeat tremolo 6 {a' d,!}
  \repeat tremolo 4 {b' cis,} b' f b f')
  <as, as'>8-> <g g'>-^~ q2~ q2.
  \clef treble
  <<
    {
      h'''4\rest gis4.( a8 h2.)
    }
    \\
    {
      h,4( <his dis><cis e> h2 <ais cis>4)
    }
    \\
    {
      \voiceFour
      e'8\rest e s2 e4 dis s
    }
  >>
  R2.
  \clef bass
  r8 f,-. d-. h-. gis-. f-. d-. h-. gis-. f-. d-. h-. b4-. r2
  \clef treble
  <<
    {
      h''''2( c4<d, d'>2) r4
    }
    \\
    {
      <d g>4(<dis fis><e g> g fis) r
    }
  >>
  R2.
  \clef bass
  r8 as,-. f-. d-. ces-. as-. f-. d-. ces-. as-. f-. d-. des4-. r2
  r8 ces'''-. as-. f-. d-. ces-. as-. f-. d-. ces-. as-. f-. e4-.
  \clef treble
  r8 <gis'' gis'>16->^\sf q-> q8.-> q16-> q2-^ r4
  \clef bass
  <<
    {
      d,2\rest
    }
    \\
    {
      \hideNotes \repeat unfold 8 {g16}\unHideNotes
    }
  >>
  <<
    {
      \once \override Slur.positions = #'(2 . 2)
      f,16( c' a' es'
      \clef treble
      f4 g2 \stemDown <f a d>2.)
    }
    \\
    {
      s4 <b, d>2<e! cis'>4 s2.
    }
  >>
  <fis! a cis>-^
  <<
    {
      e'2.
    }
    \\
    {
      b4( a2)
    }
  >>
  <gis fis'>2.
  <<
    {
      g'2.
    }
    \\
    {
      c,4( b2)
    }
  >>
  <a f'>4<b g'><c a'><fis! a>2.<g b><fis a>~ q2 r4 R2.<fis a>->(<g b><fis a>)
  \repeat unfold 2 {\repeat tremolo 6 {d16 e}}
  \once \override Hairpin #'extra-offset = #'(1 . 7.7)
  \repeat tremolo 6 {cis-^\> e\!}
  \repeat tremolo 2 {h d}\repeat tremolo 2 {c es}\repeat tremolo 2 {cis e}
  \repeat tremolo 2 {d f}\repeat tremolo 2 {dis fis}
  <<
    {
      \repeat tremolo 2 {e g}\repeat tremolo 6 {fis a}
    }
    \\
    {
      b,4( d2.)->
    }
  >>
  R2. \clef bass R2.
  <<
    {
      \repeat tremolo 6 {a,,16 dis,}
      \repeat tremolo 6 {a' d,!}
      \repeat tremolo 6 {b' cis,}
    }
    \\
    {
      r4 gis'-> g-> fis-> f-> e-> dis-> d-> dis->
    }
  >>
  <h! e h'!>4-^ r2 <g' e'>2.->\fermata \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynamicFive = {
  \override Hairpin.to-barline = ##f
  \override Hairpin.minimum-length = #10
  s2\sf\> s8 s8\pp s2.*3 s2.\sf s4.\< s\> s2.*2\mf s2\sf\> s8 s8\pp
  s2.*2 s2\sf\> s4\pp
  s2 s4^\markup {\italic {poco cresc sempre}} s2.*2
  s2\sf\> s4\p s2.*2 s2\> s8 s8\! s2.*2
  s2.*5\ff s2.\sf s2\> s4\! s2.*7\p s2.\< s2.\f s2\sf\> s4\pp
  s2.*3\< s2\sf\> s4\p s2.\< s2\sf\> s4\pp s2.*2 s4. s4.^\markup {\italic cresc}
  s2. s2.\ff s2.*3\> s2.\p s2.\> s2.*3\pp s2.\sf
  s4\< s16 s8.\> s s16\! s4 s2\< s4. s4.\> s2.
  \once \override DynamicText #'extra-offset = #'(1 . 0)
  s2.*2\ppp
  s4. s4.\< s2.\> s4 s2\p s4. s4.\< s2.\> s4 s2\p s4. s4.\< s2.\> s2 s4\!
  s2\< s4\! s2\> s4\! s2\< s4\! s2\> s8 s8\! s2 s4^\markup {\italic dim} s2.*2
  s2\sf\> s8 s8\pp s2 s4\< s2. s2 s4\! s4\f s2\< s4 s2\> s4 s4\< s8. s16\!
  s2.*6\ff s4 s2\> s2 s8 s8\! s4\sf s2\ff s2\sf\> s4\pp s2.*2
  s2\sf\> s8 s8\! s4.\< s8\> s8. s16\! s2.*2 s2\sf\> s8 s8\pp s2.*5
  s2\sf\> s4\pp s2.*2 s2\sf\> s4\pp s2.*2 s2\sf\> s4\pp s2\ff\> s4\p
  s2 s4\sf s\f s2\< s2.\! s2\sf\> s8. s16\! s2.*2\mf s2.\< s2 s8 s8\!
  s2.*3\> s2 s4\! s2.
  \once \override DynamicText #'extra-offset = #'(0.5 . 0)
  s2.*3\pp
  \once \override DynamicText #'extra-offset = #'(1 . 0)
  s2.\ppp s2\sf\> s8 s8\! s2.
  \once \override DynamicText #'extra-offset = #'(0.5 . 0)
  s2\mp s4^\markup {\italic cresc} s2. s2.\ff\> s2 s8 s8\mp s2\sf\> s4\pp
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
linksFive = \relative {
  \clef bass
  \repeat tremolo 6 {e,,16-^ e'}
  \repeat unfold 4 {\repeat tremolo 6 {e, e'}}
  e, e' dis, dis' d, d' cis, cis' d, d' dis, dis'
  \repeat unfold 5 {\repeat tremolo 6 {e, e'}}
  \repeat tremolo 6 {g,!-^ g'!}
  \repeat unfold 3 {\repeat tremolo 6 {g, g'}}
  \repeat tremolo 6 {b,-^ b'}
  \repeat unfold 2 {\repeat tremolo 6 {b, b'}}
  \repeat tremolo 6 {cis,-^ cis'}
  \repeat unfold 2 {\repeat tremolo 6 {cis, cis'}}
  e, e' dis, dis' d, d' dis, dis' e, e' f, f' fis, fis' g, g' gis, gis' a, a' b, b' h, h'
  c, c' cis, cis' 
  \override TextScript.extra-offset = #'(-1 . 12)
  d,-\markup {\italic cresc} d' dis, dis' e,
  \change Staff = RH e'
  \change Staff = LH f,
  \change Staff = RH f'
  \change Staff = LH fis,
  \change Staff = RH fis'
  \change Staff = LH g,
  \change Staff = RH g'
  \change Staff = LH gis,
  \change Staff = RH gis'
  \change Staff = LH a,
  \change Staff = RH a'
  \change Staff = LH b,
  \change Staff = RH b'
  \change Staff = LH h,
  \change Staff = RH h'
  \change Staff = LH
  \repeat tremolo 6 {e,,,,-^ e'}
  \repeat tremolo 6 {h-^ h'}\repeat tremolo 2 {h, h'}
  \repeat tremolo 4 {b, b'}
  a, a' e e' a, a' cis, cis' e, e' a, a'
  \clef treble
  \repeat tremolo 4 {h, h'}\repeat tremolo 2 {a, a'}
  \repeat tremolo 6 {e e'}\repeat tremolo 6 {dis, dis'}\repeat tremolo 6 {d, d'}
  \clef bass
  \repeat tremolo 6 {b,, b'}
  b, b' a, a' as, as' g, g' fis, fis' f, f' e, e' dis, dis' d, d' cis, cis' c, c' h, h'
  b, b' a, a' as, as' g, g' fis, fis' f, f'
  \repeat tremolo 6 {e,-^ e'}
  \repeat unfold 3 {\repeat tremolo 6 {e, e'}}
  \repeat tremolo 6 {dis,-^ dis'} \repeat tremolo 6 {dis, dis'}
  \repeat tremolo 6 {e,-^ e'}
  \repeat unfold 2 {\repeat tremolo 6 {e, e'}}
  <<
    {
      cis2.-^
    }
    \\
    {
      \repeat tremolo 6 {e,16 e'}
    }
  >>
  \repeat tremolo 6 {e,16 e'}\repeat unfold 10 {\repeat tremolo 6 {dis, dis'}}
  dis, dis' d, d' cis, cis' c, c' cis, cis' d, d' \repeat tremolo 6 {dis, dis'}
  \repeat tremolo 2 {dis, dis'}\repeat tremolo 2 {a a'}\repeat tremolo 2 {gis, gis'}
  \repeat unfold 8 {\repeat tremolo 6 {e, e'}}
  \repeat unfold 3 {\repeat tremolo 6 {dis, dis'}}
  \repeat tremolo 6 {e, e'}\repeat tremolo 6 {fis, fis'}
  \repeat tremolo 6 {g, g'}\repeat tremolo 6 {a, a'}
  \repeat tremolo 6 {b, b'}\repeat tremolo 6 {c, c'}
  \repeat tremolo 6 {ces, ces'}\repeat tremolo 6 {h, h'}
  \repeat tremolo 6 {e,,16-^ e'}
  \repeat unfold 4 {\repeat tremolo 6 {e, e'}}
  \repeat tremolo 2 {e, e'}\repeat tremolo 2 {b b'}\repeat tremolo 2 {a, a'}
  f, f' e, e' es, es' d, d' des, des' c, c' as8 es16 es' as, as' es es' c c' es, es'
  \clef treble
  as, as' ces, ces' \repeat tremolo 2 {es, es'}\repeat tremolo 2 {d, d'} ges,8\noBeam
  \clef bass
  des,,,16 des' ges, ges' des des' b b' des, des'
  \clef treble
  \repeat tremolo 4 {ces ces'}\repeat tremolo 2 {b, b'} fis8\noBeam
  \clef bass
  h,,,16 h' fis fis' h, h' dis, dis' fis, fis'
  \repeat tremolo 4 {a, a'}\repeat tremolo 2 {gis, gis'}
  \override TrillSpanner #'(bound-details right padding) = #4
  \once \override TrillSpanner #'extra-offset = #'(0 . -0.6)
  \once \override DynamicText #'extra-offset = #'(0 . 1.6)
  \once \override Hairpin #'extra-offset = #'(0 . 3.7)
  c,!2.\startTrillSpan\sp\<
  \once \override TrillSpanner #'extra-offset = #'(0 . -7)
  \once \override DynamicText #'extra-offset = #'(0 . -1)
  \once \override Hairpin #'extra-offset = #'(0 . 2.7)
  c,!\startTrillSpan\sp\<
  \repeat tremolo 2 {fis,16\stopTrillSpan\! fis'}
  \repeat tremolo 2 {fis,, fis'}\repeat tremolo 2 {f, f'}
  \repeat tremolo 6 {e,-^ e'}
  \repeat unfold 3 {\repeat tremolo 6 {e, e'}}
  e, e' dis, dis' d, d' cis, cis' d, d' dis, dis'
  \repeat unfold 2 {\repeat tremolo 6 {e, e'}}
  \repeat tremolo 6 {e,-^ e'}
  \repeat unfold 2 {\repeat tremolo 6 {e, e'}}  
  \repeat unfold 3 {\repeat tremolo 6 {g, g'}}
  \repeat tremolo 6 {g,-^ g'}
  \repeat unfold 2 {\repeat tremolo 6 {g, g'}}
  \repeat tremolo 6 {b,-^ b'}
  \repeat unfold 2 {\repeat tremolo 6 {b, b'}}
  \repeat tremolo 6 {cis,-^ cis'}\repeat tremolo 6 {eis,, eis'}
  \repeat unfold 3 {\repeat tremolo 6 {f, f'}}
  cis8 fis,!16 fis'! cis cis' fis, fis' a, a' cis, cis'
  \clef treble
  \repeat unfold 2 {\repeat tremolo 6 {d fis}}
  \repeat unfold 2 {\repeat tremolo 6 {d f}}
  \repeat tremolo 6 {d e}\repeat tremolo 6 {d es}\repeat tremolo 6 {d e}
  \repeat tremolo 6 {d e}\repeat tremolo 4 {d e} d( e fis a)
  \repeat tremolo 6 {d e}\repeat tremolo 6 {d es}\repeat tremolo 6 {d e}
  R2.
  \clef bass
  \repeat tremolo 6 {b,,,16-^ b'} b, b' a, a' b, b' h, h' c, c' cis, cis'
  \repeat tremolo 2 {d, d'}\repeat tremolo 2 {c, c'}\repeat tremolo 2 {b, b'}
  \repeat tremolo 2 {a, a'}\repeat tremolo 2 {as, as'}\repeat tremolo 2 {g, g'}
  \repeat unfold 2 {\repeat tremolo 6 {fis, fis'}}
  \repeat tremolo 6 {f,-^ f'}\repeat unfold 3 {\repeat tremolo 6 {e, e'}}
  e,4-^ r2 <e h' e>2.->\fermata \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%