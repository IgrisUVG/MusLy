\version "2.19.15"

\language "deutsch"

%%%%%%%%%% THREE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsThree = \relative {
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Valse maestoso"
  \makeOctaves #1 {
    e'8[-> r16 a]( dis,8)->
  }
  cisis16( dis e fis g a
  \makeOctaves #-1 {
    c!8[) r16 f,]( h8->)
  }
  c!16( h a32 g fis e dis d c b\break
  a4-.) <h cis e f a>-. q-. r <h cis e f as>-. q-.
  r <h cis e f a!>-. <h cis e f a>-. r q-. q-.
  r <h cis e f as>-. q-. r <h cis e f as>-. q-.
  r <h cis e f a!>-. <h cis e f a>-.
  r
  <<
    {
      a'8( gis a h\stemDown c d dis2)\fermata\break
    }
    \\
    {
      <h, cis e f>4-. q-. s2.
    }
  >>
  e4( fis g) dis2( d4) cis( dis e) c!2( h4) f'2( e4) b2( a4) g'2( fis4) des2( c4)
  <as h c f>-> q-> q-> <g h c es>-^ r2
  e'!4( fis g) dis2( d4) cis( dis e) c!2( h4) fis'( g a) e2( dis4) g( a b) fis2( eis4)
  <<
    {
      h'2( ais4) e!2( dis4) cis'2( c4) gis2( g4)<c,! fis><c fis> q <d f> q q <cis g'> q q
      <es as> q q( his' cis d e fis gis)
    }
    \\
    {
      eis,4( fis g) a,( h c) dis( e fis) h,( cis d) ais2( a4) gis( ais h) g!2( fis4)
      c'!2( h!4) f'2( e4) d'2( cis4)
    }
  >>
  \makeOctaves #1 {
    a2 cis4 gis2. f g! e2 dis4 cis c h fis'2.~ fis4 g gis
  }
  <<
    {
      s4 <a cis fis>
    }
    \\
    {
      <a a'>2
    }
  >>
  <e a cis>4<e gis c!><g b><es fis a><gis e'><fis ais d><d g h>
  <<
    {
      <a' cis e><cis e a><a cis f><a h d><fis'! h e><d gis cis>
      <a c!><b d fis><g c><fis a><fis h d><a c e>
    }
    \\
    {
      d,2( e4 cis2.) c!2( d4 h2.)
    }
  >>
  \stemUp
  <h' e fis>4<gis' cis fis><e ais dis><f g d'!><h, e g><e g ais><d g a!><gis, d' f><fis h e>
  \stemNeutral <e a d>2.~
  \cadenzaOn
  q8[ c( d f a h]) des[( c) g'( fis!) b( a)] g--[ g,( b e g fis] eis[) d,( gis h d cis]
  c[) ais( h e g a!] ais2.)\fermata
  \acciaccatura {his32 ais gisis} ais4
  \acciaccatura {his32 ais gisis} ais4\bar ""\break
  \acciaccatura {his32 ais gisis} ais16[
  \shape #'(
             ((-0.5 . 0) (0 . 0) (0 . 0) (0.5 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0.5 . 0))
             ) PhrasingSlur
  his,(\( cis dis cis e) eis( fis) cisis( dis) his( cis])
  gisis[( ais) eis( fis) cisis( dis)\change Staff = LH his( cis) gisis( ais) eis( fis])
  \shape #'(
             ((0 . 0) (0 . 3) (0 . 1) (0 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ) Slur
  cis[( dis fis ais cis\change Staff = RH dis fis ais h cis dis fis]\bar ""\break
  \acciaccatura fisis8 gis8[)\)
  \acciaccatura fisis8 gis8
  \acciaccatura fisis8 gis8]
  <<
    {
      \override TrillSpanner.bound-details.left.text = \markup{
        \musicglyph #"scripts.trill"
        \raise #1.65 \teeny \sharp
      }
      \once\override TextScript.extra-offset = #'(0.7 . 0)
      gis2.~\startTrillSpan^\markup { \fermata }
      gis1 s1 s2 s8\stopTrillSpan
    }
    \\
    {
      s2. r8
      \shape #'((0 . 4) (0 . 0.5) (0 . 0.5) (0 . -0.5)) PhrasingSlur
      fis\( his,[^( dis!] cis![) gisis!^( h ais!) eis!^( gis] fis[) his,!^( dis! cis!)
      \change Staff = LH gisis!^( h]\stemUp ais!16[) eis( gis fis) his,!( dis cis) gisis( h ais])\)
    }
  >>
  \change Staff = RH
  \cadenzaOff
  \bar "|"
  \break
  <<
    {
      e'''8. <a, a'>16 dis!2~( \stemDown dis8 d cis c h ais)\stemUp
      <g g'>8. c16\makeOctaves #-1 {
        \override TieColumn.tie-configuration =
        #'((4.5 . 1) (-4.5 . -1))
        fis2~_( fis8 f e dis d cis)
      }
    }
    \\
    {
      r2 <f, a h>4 s2. s2 <gis c d>4 s2.
    }
  >>
  c!4( h8 c fis4~ fis) f-> e8( dis e4) eis8( fis ais4~ ais) a!4.( g8 fis f e dis cis c
  h) ais( h e dis c f-.) h,( c! g' fis dis a'-.) e( g h ais eis c'-.) fis,( ais cis f, g\break
  \override Staff.TimeSignature #'stencil = ##f
  \time 7/4
  \makeOctaves #-1 {fis4)\fermata fis,\fermata}
  \shape #'((0 . 0) (1 . 3) (-1 . 4) (0 . -3)) Slur
  ais'32[( fis g e f h, c g ais fis g e f\change Staff = LH h, c g ais fis g e f
  h, c g ais fis g e f h, c g] e4-^)\fermata\bar "|."
  \stopStaff
  s-\markup { Attacca }
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicThree = {
  \override Hairpin.to-barline = ##f
  s2.\ff s2 s4\> s2.*9\mp s2.*3\pp s4 s2-\markup {\italic cresc} s2.*4 s2.\ff s2.\>
  s2.*5\pp s2.*13-\markup {\italic poco cresc} s2.*8\ff s4. s4.-\markup {\italic dim}
  s2. s2 s4\p s2.*8
  \cadenzaOn s8 s\mf s2 s2. s s s s s2\p s2. s s4. s\> s\ppp s2.
  s8
  \once \override TextScript.extra-offset = #'(-1 . 0)
  s4.-\markup {\italic cresc} s2. s s4. s4 \cadenzaOff
  s2.*4\ff s2.*4\sp s2.*5-\markup {\italic cresc} s1\fff s2.
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksThree = \relative {
  \time 3/4
  \clef bass
  <a,, a'>4-> <dis' f a h>8-> cisis16( dis <b cis e> fis' g a
  <e,, e'>4) <cis'' e f ais>2->
  \makeOctaves #-1 {
    fis!2 a4 eis2 cis4~ cis e!2 c h4~ h a gis g!2 dis4~ dis e eis fis2.
  }
  r2.\fermata
  e4( <h' g'> q) h,( <gis' f'> q) g,( <b' e> q) dis,( <a' fis'> q) c,( <as' des> q)
  f( <c' es ges> q) d,( <g es'> q) g,( <b' e!>< b e>)
  \makeOctaves #-1 {
    d,-> d-> d-> a'-^ g-- fis-- e(
  }
  <h' g'> q) h,( <gis' f'> q) g,( <b' e> q) dis,( <a' fis'> q) c,( <a' dis> q)
  h,( <g' c> q) e( <cis' g'> q) ais,( <dis' h'> q)
  <<
    {
      s4 <d fis g> s s <c fis a> q s <cis a'> q s <cis e ais> q s <c es> s
    }
    \\
    {
      \makeOctaves #-1 {
        c!2 es4 h2. gis ais g!2 fis4
      }
    }
  >>
  \makeOctaves #-1 {
    e4 dis d
  }
  <<
    {
      s2. g'2.( ais a!)
    }
    \\
    {
      s4 e e s2. s4 <d g> q s \stemUp <b d> q
    }
    \\
    {
      \voiceTwo
      \makeOctaves #-1 {
        ais2.~ ais4 h his cis2. s
      }
    }
  >>
  <d,, d'>4<eis'' h'><eis' gis><a,, dis fis c'>-> q-> q-> <d, d'><f' as e'> q
  <a,,! a'!><a''! c es><a c es><ais,, ais'><fis'' his> q <e,, e'><e'' g ais> q
  <dis,, dis'><c'' fis a!><c fis a><gis, gis'><c' es a> q
  <<
    {
      <e,, e'>4 s2 s8
    }
    \\
    {
      \change Staff = RH\stemDown r8 gis'''[_( dis\change Staff = LH b fis cis h!])
    }
  >>
  \override Beam.breakable = ##t
  \change Staff = RH\stemDown fis''8[_( d!\change Staff = LH b e,! c! b])
  \change Staff = RH eis'[_( d \change Staff = LH a e h a])
  \change Staff = RH e''![_( cis\change Staff = LH a e cis h])
  \change Staff = RH gis''[_( d \change Staff = LH a fis c! b])
  \change Staff = RH gis''[_( e \change Staff = LH b fis d a])
  \change Staff = RH es''[_( c \change Staff = LH g d a gis])
  \change Staff = RH ais''[_( e cis\change Staff = LH fis, h, g!])
  \change Staff = RH ais''[_( e cis\change Staff = LH f, h, fis])
  \change Staff = RH h''[_( f h,\change Staff = LH gis h,]\stemNeutral f2.~)
  \cadenzaOn f8 s s2 s2. s s s s s2 s2. s s s4. s2. s2 s2. s s4. s4 \cadenzaOff
  \makeOctaves #1 {
    a!8(
    \set Staff.extraNatural = ##f
    gis! g fis! f e dis d cis c h ais a!) h'( ais a gis g fis f e dis d cis e,4)
  }
  <e''f h> q e, <dis' a' c> q e, <d'! gis c> q <e,, e'><e''f h> q e, <dis' a' c> q
  e, <d'! gis c>4.<c e f c'>8<h d fis! h><ais cis g' ais>4.<a d gis a>4
  <gis h d gis>4.<g h dis g>4<fis c' dis fis>8~ q4<f h e f>4.<e ais h e>8
  \override Staff.TimeSignature #'stencil = ##f
  <es es'>4\fermata <c, c'>\fermata\change Staff = RH s1 s4\bar "|."
  \stopStaff
}