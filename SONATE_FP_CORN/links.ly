\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "myNoteHeads.ly"
%\include "makeOctaves.ly"

links = {
  \clef bass
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
  <<
    {
      a2\rest
      \times 2/3 {f4\rest <des, des><c, c>}
      a8\rest <a, es><as, eses>4 a2\rest
      \stemDown
      \tuplet 3/2 2 {
        f4\rest <des des'><a, a><des des'><a, a><b, b>
        \stemUp
        f4\rest <cis e><c es>
      }
      <h,! d>2
    }
    \\
    {
      s1*3 s2 \times 2/3 {d,4\rest ges,!2}
    }
    \\
    {
      \stemUp
      <fis,, fis,>4<e,, e,>
      \stemDown
      <d,,! d,!>2 <h,,! h,!>
      \stemUp
      <g,, g,>4<f,,! f,!><des,, des,>1<ges,, ges,>
    }
  >>
  <e,, a,, e,>1~ q <fes,, ces, fes,><ges,, ces, ges,><e,, h,, e,>2\fermata r
  <<
    {
      \repeat unfold 2 {<a,, e, a,>2}
      \repeat unfold 2 {<a,, e,! a,>2<a,, e, a,>}
      <a,, e,! a,>
    }
    \\
    {
      r2. es,,4~ es,,!2. es,,!4~ es,,!2. es,,!4~ es,,!2
    }
  >>
  <<
    {
      s2 \repeat unfold 4 {s2 fis2}
    }
    \\
    {
      \stemUp
      <a,, e, a,>2
      \stemNeutral
      g4\rest<e a h>2.\repeat unfold 3 {e'4\rest<e a h>2.}
    }
    \\
    {
      \stemDown
      s4 <es,,! b,,! es,!>_~\sf  q1 <cis,, cis,>1<h,,, h,,><a,,, a,,>
      \stemNeutral
    }
  >>
  <<
    {
      <c e>2 s q s <b, d>
    }
    \\
    {
      r4 <a,, g,>\stemUp<b,, a,><g,, as,>~\stemDown q <a,, g,>\stemUp<b,, a,><g,, as,>~
      \stemDown q <ges,, as,>
    }
  >>
  <d,, d,><b,,, b,,><es,, es,>1<d,, d,><ces,, ces,>
  \clef treble
  ges''4 es'' des'' <b' f''>8<g' d''>
  <<
    {
      <f' c''>4 a'8 ges' <des' as'>4 \clef bass <b,, b,>_~ q1 <es,, es,>
      <des, b,>2 s <ges,, c es><g,! es> d\rest <a, b,>
    }
    \\
    {
      f'8 e' <es' a'>4 s2 s \stemUp<a,,, a,,> s \stemDown<h,! fis cis'>
      s4 f <es g><d f> s1 <d,, d,>
    }
  >>
  <es,, des,>2<e,, f,><d,,! ges, des as>
  <<
    {
      ges4 es
      \override NoteColumn.ignore-collision = ##t
      ces2 c ges,4 f, des, s
    }
    \\
    {
      \voiceOne
      s2
      \once \override Stem.length = #6
      as,,4 s
      \once \override Stem.length = #6
      ges,,
      \once \override Stem.length = #8
      \stemDown as_>
      \once \override Stem.length = #6
      \stemUp f,, s2. s2 \stemDown a,,4 \stemUp cis
    }
    \\
    {
      \voiceTwo
      fes,4 ces,
      \tuplet 3/2 4 {
        \shape #'((1.5 . 1.4) (0.5 . 0.4) (0.3 . 0.3) (0 . -0.2)) Slur
        as,,8^( es, es as b \change Staff = RH d') \change Staff = LH
        \override TupletNumber #'transparent = ##t
        \shape #'((1.5 . 1.4) (0.5 . 0.4) (0.3 . 0.3) (0 . -0.2)) Slur
        ges,,^( es, des \stemUp as \change Staff = RH es' c'') \change Staff = LH
        \stemDown
        f,,^( des, as, f, des es des, as, ges b des' es')
        f'( ges' des' \stemUp ges b, des,) a,,^( e, h,! \stemDown cis e a)
      }
    }
  >>
  <<
    {
      \override TupletNumber #'transparent = ##t
      \times 2/3 {f,,8( c,! as,} g16
      \change Staff = RH
      \stemDown
      h c' g'
      \change Staff = LH
      \stemUp
      as'
      \change Staff = RH
      \stemDown
      c'' des'' b''
      \change Staff = LH
      \stemUp
      f'' g''
      \change Staff = RH
      \stemDown
      as'' es''')
    }
    \\
    {
      f,,4 g \clef treble as' f''
    }
  >>
  \relative e''' {
    \tuplet 3/2 4 {
      \override TupletNumber #'transparent = ##f
      des8^\markup {\italic legatissimo} as es f g as
      \override TupletNumber #'transparent = ##t
      es' c f, as b es, e! his' gis dis ais' gis cis, e a dis his gis
      \repeat unfold 7 {h e, h fis' e h e, h' e fis h, e}
      h' f! c g' f as, des c f, as g c,
      \clef bass
      des c f, as g c, des c f, as g c,
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      <e,,! f,>2 dis,,
    }
    \\
    {
      a16\rest \stemUp as, es b s4
      c'16\rest \stemUp e, h, gis s4
    }
    \\
    {
      \override TupletBracket.direction = #DOWN
      s4 \times 2/3 {d4\rest \stemDown e8~} e2
    }
    \\
    {
      \hideNotes
      \shape #'((2 . 0) (1 . 2) (-4 . 1) (1 . 0)) PhrasingSlur
      a4^\( \change Staff = RH s8 g'8\)
      \change Staff = LH
      \override NoteColumn.ignore-collision = ##t
      \shape #'((-3.5 . -1.3) (-3 . 4) (-7 . 4) (0 . 0)) PhrasingSlur
      a4.^\( \change Staff = RH s16 gis'\)
      \change Staff = LH
      \unHideNotes
    }
  >>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %{ <<
     {
     <e,,! f,>2 dis,,
     }
     \\
     {
     a16\rest \stemUp as, es b s4
     c'16\rest \stemUp e, h, gis s4
     }
     \\
     {
     s4 \times 2/3 {r4 \stemDown e8~} e2
     }
     >>
     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     %{ <<
     {
     s4 \times 2/3 {r4 \stemDown e8~} e2
     }
     \\
     {
     \stemUp
     <e,,! f,>2 dis,,
     }
     \\
     {
     s4 s8 \hideNotes \stemDown e8^( s4 s8.
     \change Staff = RH g'16) \unHideNotes
     \change Staff = LH
     }
     >>%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      cis,,2 c,!_> s1
      <e,! b, es>2.\fermata e4\rest
    }
    \\
    {
      a16\rest \stemUp gis,^( c! dis \stemDown gis
      \change Staff = RH fis c'! fis')
      \change Staff = LH
      a16\rest \clef treble \stemUp e'^( g'! a' h' c''
      \change Staff = RH \stemDown d'' fis''
      <h'' d'''>2)^~ q^\fermata \change Staff = LH
      \clef bass
      s2 \myBigFillNoteHeads c,,4\fermata s \normalNoteHeads
    }
  >>
  <<
    {
      r4 \repeat unfold 3 {<c es ges h>2 q4~ q} q2 q4
    }
    \\
    {
      \myBigNoteHeads
      \repeat unfold 4 {c,,2} c,,2\laissezVibrer s s1
      \normalNoteHeads
    }
  >>
  h,16-. <des c'>-. h,-. <des c'>-. r4 r2
  <fis,, d, fis,>1 <cis,, cis,>2 <f,,! f,!> <as,, es, as,>1 r2
  \relative e {
    \override TupletNumber #'transparent = ##f
    \override TupletBracket #'bracket-visibility = ##t
    \tuplet 3/2 2 {
      r4<e ais e'>-.<dis a' dis>-.<d gis d'>-.<cis g' cis>-.<c fis c'>-.<h f' h>-.<ais e' ais>-.<a dis a'>-.
      r \stemDown<as d! as'>-.<g des' g>-.<ges c! ges'>-.<f h! f'>-.<fes b fes'>-.
    }
    \stemNeutral<es a! es'>4-.-> r <cis g' cis>-.-> r
    \override TupletBracket.direction = #DOWN
    \tuplet 3/2 2 {
      r4<gis' d' gis>-.<g cis g'>-.<ges c ges'>-.<f h! f'>-.<fes b fes'>-.
    }
    <dis a' dis>4-.-> r <des g des'>-.-> r
  }
  \repeat unfold 33 {a1.}
  <<
    {
      g,4 s2. g,4 s2. g,8 cis s2.
    }
    \\
    {
      g,8 d! a r e' d' b4
      g,8 d! a r e' d' b4
      g,4 b2 es4 b,1
    }
  >>
  \override TupletNumber.stencil = ##f
  \override TupletBracket.bracket-visibility = ##f
  \stemDown
  r8 \tuplet 23/24 {g,64[( gis, a, ais, h, c cis d dis e f fis g fis f e dis d cis c h, ais, a,]}
  \stemNeutral
  gis,4) r
  \stemDown
  r8 \tuplet 23/24 {g,64[( gis, a, ais, h, c cis d dis e f fis g fis f e dis d cis c h, ais, a,]}
  \stemNeutral
  gis,4) r
  r8 \tuplet 15/16 {g,64[ gis, a,ais, h, c cis d dis e f fis g gis a]} \tuplet 10/8 {b64[ a gis g fis f e dis d cis]}
  \tuplet 5/4 {c32[ h, ais, a, gis,} \tuplet 8/6 {g,16 fis, f, e, es, d, des, c,]}
  h,,1 r2 r4. r2 r4.
  <<
    {
      \repeat unfold 4 {e2 d8 e fis}
    }
    \\
    {
      s2 s4. a,2~ a,4. g,2~ g,4. f,!2~ f,4.
    }
  >>
  <es, e!>2 <des, d!>8<es,! e!><f,! fis>
  \ottava #-1
  \set Staff.ottavation = #"8"
  <es,, es,>2<des,, des,>8<es,, es,><f,,! f,!>
  \repeat unfold 5 {<d,, es,>2<c,, des,>8<d,,! es,><e,,! f,>}
  <d,, es,>8.<as,, a,!><g,, as,>8~ q16<cis, d>8.<d, es>8<a,,! h,><f,, g,>8.<g,, as,> <cis, d><c, des>
  <des, es>8<as,, a,!>4<b,, h,!>8~<b,, h,><a,,! b,>4
}