\version "2.19.15"

\language "deutsch"

%%%%%%%%%% ONE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsOne = \relative {
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  R1*2
  h8[( ais h e fis g fis dis] h[ ais h e g h] ais4)->
  e8[( dis e fis g h ais fis] e[ dis e g h d!] cis4)~->
  cis8 r r <cis d>16-> r r8 r q16-> r r8
  q8---> q16-> r r8 q16-> r r2 q16-> r r8 r q->~ q16 r
  <ais h cis d>16-> r r4 r8 q16-> r r4 r r8 q-^
  \makeOctaves #-1 {
    h8[( ais h e fis g fis dis] h[ ais h e g h] ais4)->
    e8[( dis e fis g h ais fis] e[ dis e g h d!] cis4)->
  }
  h16[( ais h e fis g fis dis h ais h e g h ais8])->
  \ottava #1
  \set Staff.ottavation = #"8"
  e16[( dis e fis g h ais fis e dis e g h d! cis8])->
  \ottava #0
  \repeat unfold 2 {
    \clef bass
    e,,,,4-.-^
    \clef treble
    <h'' e ais>->
    \clef bass
    f,4-.-^
    \clef treble
    <h' dis a'>->
  }
  \repeat unfold 4 {
    \clef bass
    e,,,,4-.-^
    \clef treble
    <h'''' e ais>->
    \clef bass
    f,,,4-.-^
    \clef treble
    <h''' dis a'>->
  }
  r16 e( ais g h ais a fis dis h ais h c e dis h g2) ais16( a g f fis dis fis a
  ais c dis h e g fis f fis e dis h ais g f e dis2) e16( g ais c dis f g h
  ais c, fis f h, dis d ais fis! g dis f ais g a ais
  c h dis e f fis g a ais c dis c h ais a fis
  g f e c dis d ais g f fis g ais g h c dis
  e g f c dis h d fis g ais g a fis e dis f
  ais e a g fis g a h c ais g f e dis h ais
  a! g fis f g fis g a) g( ais h e f g ais h
  e f g ais h a f dis c h a f dis c h a)
  g( ais h e f g ais h e f g ais h a f dis
  c h a f dis c h ais)
  <e g h>8-><e g ais>-><dis f a h>-><f a h e>->
  <g ais h fis'!>-><ais h e g>-><a h dis fis>-><f a h dis>->
  <e g h>-><e g ais>-><dis f a h>-><f a h e>->
  <ais h e g>-^<h e g h>-^<ais dis f ais>4-^<h d fis ais h>-^<c e ais h c>-^
  <c dis a'! h c>1-^
  h8--[ ais-- h-- e-- fis-- g-- fis-- dis--]
  h--[ ais-- h-- e-- g-- h--] ais4--
  \makeOctaves #-1 {
    e8--[ dis-- e-- fis-- g-- h-- ais-- fis--]
    e--[ dis-> e-> g-> h-^ d!-^] cis4-^
  }
  <h, e g ais>4-^<g, g'>-><h' c dis a'>-^<eis,, eis'>-^
  <<
    {
      \repeat unfold 3 {ais'4( a)} ais(
      \once \override NoteColumn.force-hshift = #1.4
      \once \override Accidental.extra-offset = #'(2.2 . 0)
      a!)
    }
    \\
    {
      h,8--[ ais-- h-- e-- fis-- g-- fis-- dis--]
      h--[ ais-- h-- e-- g-- h--] ais4--
    }
  >>
  e8[_( dis e fis g h ais fis] e[ dis e g h d!] cis4)
  <f, a c>-^ \clef bass <h,, h'>-^\clef treble <h'' e ais>-^ r \bar "|."
}

%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicOne = {
  \override Hairpin.to-barline = ##f
  s1*3\pp s2.
  \once \override TextScript.extra-offset = #'(-3 . 0)
  s4-\markup {\italic poco a poco cresc} s1*6 s1*4\ff s1*2\mp
  \once \override DynamicText.extra-offset = #'(0 . 6)
  s1*2\sf
  \once \override DynamicText.extra-offset = #'(-3 . 6)
  s1*4\ff s1*3\mf
  s2 s8 s8-\markup {\italic cresc} s4s1*2 s1*6\f s2. s4\< s1*2
  \tag #'Part {\pageBreak}
  s1\fff s1*5\f
  s2 s2-\markup {\italic dim} s1 s4\p s2. s1 s4\sf s2.\ff
}

%%%%%%%%%%% LH %%%%%%%%%%%%
linksOne = \relative {
  \time 4/4
  \clef bass
  \repeat unfold 15 {e,8-. h'-. f-. h-.}
  \repeat unfold 5 {e, <h' e> f <h f'>}
  \repeat unfold 8 {<e, e,><h' e><f, f'><h' f'>}
  \repeat unfold 4 {e,-. <g' h e>-. f,-. <a' h dis>-.}
  \makeOctaves #-1 {
    \repeat unfold 2 {e,4-.-^ g'' f,,-.-^ cis''16( c cis8)}
    h,8[_( ais h e fis g fis dis] h[ ais h e g h] ais4)
    e8[_( dis e fis g h ais fis] e[ dis e g h d!] cis4)
  }
  \repeat unfold 12 {e,,8-. <e' g ais h>-. f,-. <dis' a' h c>-.}
  <<
    {
      \makeOctaves #-1 {
        \slurDown
        s8 e,( c h) s f'( h) s ais s c( fis,) s f s s e s ais,( h dis) s s c
        s d( dis f) s e s f( fis g) s ais s a( ais c) s h s c( d dis) s f_>
      }
    }
    \\
    {
      <e g ais h>^> s s s <dis a' h c>^> s s <e g ais h>^> s <dis a' h c>^> s s
      <e g ais h>^> s <dis a' h c>^> <e g ais h>^> s <dis a' h c>^> s s s
      <e g ais h>^> <dis a' h c>^> s <e g ais h>^> s s s <dis a' h c>^> s
      <e g ais h>^> s s s <dis a' h c>^> s <e g ais h>^> s s s <dis a' h c>^> s
      <e g ais h>^> s s s <dis a' h c>^>
    }
  >>
  \makeOctaves #-1 {
    e-> dis-> d-> cis-> c-> h-> ais-> a->
    gis-> g-> fis-> f-> e-> dis-> d-> cis->
    c-> h-> ais-> a-> as'4-^ g8-^ fis-^ f1-^
  }
  \repeat unfold 6 {
    <h e h'>8[( e, e,])<h'' f' h>[( f f,])
  }
  <h' e h'>8( e, e,4-^)
  \repeat unfold 2 {<e' e' f>8-.<e' f>-.<f, e' f>-.<e' f>-.}
  \repeat unfold 2 {
    <<
      {
        s8 s
        \voiceThree
        \once \override NoteHead #'X-offset = #1.5
        \once \override Stem #'rotation = #'(-43 0 0)
        \once \override Stem #'extra-offset = #'(-0.6 . -2.7)
        \once \override Stem #'length = #6
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental #'extra-offset = #'(3.5 . 0)
        f
        s
      }
      \\
      {
        <e fis g>-.<fis g>-.<fis g>-.<fis g>-.
      }
    >>
  }
  \repeat unfold 2 {
    <<
      {
        ais4( a)
      }
      \\
      {
        s8 s
        \voiceThree
        \once \override NoteHead #'X-offset = #1.2
        \once \override Stem #'rotation = #'(-43 0 0)
        \once \override Stem #'extra-offset = #'(-0.9 . -2.7)
        \once \override Stem #'length = #6
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental #'extra-offset = #'(4.5 . 0)
        f
        s
      }
      \\
      {
        \voiceTwo
        <e fis g>-.<fis g>-.<fis g>-.<fis g>-.
      }
    >>
  }
  \repeat unfold 2 {
    <<
      {
        \repeat unfold 2 {
          \voiceThree
          \once \override NoteHead #'X-offset = #3.4
          \once \override Stem #'rotation = #'(-35 0 0)
          \once \override Stem #'extra-offset = #'(1.2 . -3.8)
          \once \override Stem #'length = #8
          \hide Flag
          %\once \override Flag.stencil = ##f
          \once \override Accidental #'extra-offset = #'(2.5 . 0)
          a!\noBeam
          \once \override NoteHead #'X-offset = #3.3
          \once \override Stem #'rotation = #'(-35 0 0)
          \once \override Stem #'extra-offset = #'(1.2 . -3.7)
          \once \override Stem #'length = #8
          \hide Flag
          %\once \override Flag.stencil = ##f
          \once \override Accidental #'extra-offset = #'(2.5 . 0)
          a!\noBeam
        }
      }
      \\
      {
        \once\override Beam.positions = #'(-3 . -3)
        \override Accidental #'extra-offset = #'(1.3 . 0)
        <e ais>-. ais-. <f ais>-. ais-.
      }
    >>
  }
  <h, dis h'>4-^ <e,, e'>-^ <g'' g'>-^ r
}