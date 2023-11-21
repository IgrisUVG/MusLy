\version "2.19.15"

\language "deutsch"

%%%%%%%%%% TWO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsTwo = \relative {
  \time 6/8
  \set Staff.beatStructure = #'(6)
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegretto"
  <<
    {
      d'4( fis8 e d cis d4 fis8 e d cis d e fis a~ a4<e g>~ q8 c'!~ c4~) c2.
    }
    \\
    {
      s2.*2 s4. g8 fis d~ d4. b'8
      \set tieWaitForNote = ##t
      a~ f~ <a f>2.
    }
  >>
  \repeat unfold 2 {
    <<
      {
        d,4( fis8 e d cis d4_~ d8 cis~ cis4)
      }
      \\
      {
        \override Rest.staff-position = #-9
        r4. h r a
      }
    >>
  }
  <<
    {
      d4( fis8 a g fis e a h a~ a4) a8 h d h~ h[ d] d4 e8 fis~ fis4~ fis2.
    }
    \\
    {
      r4. h,, d cis <d fis><d g>4<d h'>8<d a'>4<e a>8<fis ais>4.~ q2.
    }
  >>
  \repeat unfold 2 {
    <<
      {
        d4( fis8 e d cis d4_~ d8 cis~ cis4)
      }
      \\
      {
        r4. h r a
      }
    >>
  }
  <<
    {
      fis'4\( a!8 g fis e
      \shape #'((-0.2 . 0) (-0.5 . 0) (-0.5 . 0) (-1.2 . 0)) Slur
      e4_(
      %\once\override Script.extra-offset = #'(0 . 0.8)
      d8_\prall _>) c~ c4\)
    }
    \\
    {
      \override Rest.staff-position = #-8
      r4. d s2.
    }
  >>
  <<
    {
      c'4( e8 d c h c4~ c8 h~ h4)
      c4( e8 d c h c4 d8 e~ e4)
    }
    \\
    {
      <e, a>4.<f a><d g><d g>
      <e a><f a><d g><d gis>
    }
  >>
  <fis a fis'>4<cis' cis'>8<h fis' h><a a'><gis gis'><a a'>4~ q8<gis e' gis>~ q4
  \makeOctaves #1 {
    a8 cis e d cis h a h cis h gis4 fis g!8 a~ a[ d]
  }
  e4 d8 c~ c4 a8 h c4. d8
  <<
    {
      es8 d b2~ b2.
    }
    \\
    {
      \revert MultiMeasureRest.direction
      r4. g~ g2.
    }
  >>
  d4~ d8 fis( e d cis d d4->~ d8) fis( e d cis d d4->~ d8) fis( e d cis d
  d-.) r
  <<
    {
      <fis' h d fis><e h' e><d h' d>
      %\once \override NoteColumn.force-hshift = #-2
      <cis h' cis><d a' d>4~ q8 <cis a' cis>~ q4
    }
    \\
    {
      \autoBeamOff
      \stemDown
      \crossStaff {
        <d, fis h>8 r d
        \once \override NoteColumn.force-hshift = #-1.5
        <d g h>
      }
      \autoBeamOn
      r8 <a' d e><e a> r
      \once \override NoteColumn.force-hshift = #1.5
      <a cis fis><fis a>
    }
  >>
  \set PianoStaff.connectArpeggios = ##t
  <h dis fis h>2.\arpeggio
  <g h e g>4<d' g d'><h e g h>8<c e g c><d fis a d>4<e a e'><fis h d fis>
  <g c es g><c, es g c>8<d g d'><es as c es>4
  <ges b d ges><f b d f>8<es b' es><d g b d>4
  \set Staff.beatStructure = #'(3 3)
  <c e! a c>8 <c e a c> q <a c f a> q q <g d' g> q q <e g h e> q q
  \set Staff.beatStructure = #'(6)
  <d d'>4<fis fis'>8<e h' e><d d'><cis cis'><d d'>4~ q8 <cis a' cis>~ q4
  \set Staff.beatStructure = #'(2 2 2)
  fis'16( eis fis g a h cis d fis e d cis
  d4~ d16) e( d cis h a g fis e d cis d e fis g a cis h a gis
  g!4~ g16) a( h c! d es d c h a gis a gis a h c d e f g
  f e d c h a g f e d c h <h, e g>2.)
  \set Staff.beatStructure = #'(6)
  <<
    {
      e'4( gis8 fis e dis e4_~ e8 dis~ dis4)
      <g,! e'>4 h8 a g fis g4
      \once \override NoteColumn.force-hshift = #-1.5
      <d fis>2
    }
    \\
    {
      r4. cis' r h r e, g8
      \set tieWaitForNote = ##t
      d fis a\noBeam h4
    }
    \\
    {
      \voiceTwo
      s2.*3 s8 \hideNotes d,~ d s4.\unHideNotes
    }
  >>
  \bar "|."
  \tag #'fullPart {\stopStaff}
}

%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicTwo = {
  \override Hairpin.to-barline = ##f
  s2.*5\mf s2.*3\pp s2
  \once \override TextScript.extra-offset = #'(1 . 1)
  s4-\markup {\italic poco cresc} s2.*3 s2 s4\f s2. s2.*6\pp s2.*4\mf s2\f
  s4-\markup {\italic cresc} s2.*3 s2.*6\ff s2 s4-\markup {\italic dim} s2.*2
  s4\p
  \once \override DynamicText.X-offset = #-2.5
  s2\sf s2.*2 s2.*4\mf s2 s4\< s2.
  \once \override DynamicText.X-offset = #0.5
  s2.*2\ff s2.*5\p s8 s8\> s2 s2.\pp s4.\sf s\f
  \once \override TextScript.extra-offset = #'(0 . 2)
  s2.*2-\markup {\italic dim} s2.\p
}

%%%%%%%%%%% LH %%%%%%%%%%%%
linksTwo = \relative {
  \time 6/8
  \clef bass
  h,8( fis' h) a,(  e' a) h,8( fis' h) a,(  e' a) g,( d' g) d,( a' d)
  c,( g' c)
  <<
    {
      \set tieWaitForNote = ##t
      \tieDown f,~( c'~ \tieUp f~)
      <f, c' f>2.
    }
    \\
    {
      s4. f,2.
    }
  >>
  h'8( fis'! h) g,( d' g) a,( e' a) fis,( cis' fis)
  h,8( fis' h) g,( d' g) a,( e' a) fis,( cis' fis)
  h,8( fis' h) g,( d' g) a,( e' a) fis,( cis' fis)
  h,8( fis' h) g,( d' g) a,( e' a)
  <<
    {
      \set tieWaitForNote = ##t
      \tieDown fis,~( cis'~ \tieUp fis~)
      <fis, cis' fis>2.
    }
    \\
    {
      s4. f,2.->
    }
  >>
  \repeat unfold 2 {
    h'8( fis'! h) g,( d' g) a,( e' a) fis,( cis' fis)
  }
  d( ais' d) h,( fis' h) c,( g' c) as,( es' as)
  a,!( e'! a!) f,(  c'  f) g,( d' g) e,( h' e)
  a,( e' a) f,(  c'  f) g,( d' g) e,( h' e)
  \repeat unfold 2 {
    fis,( cis' fis) d,( a' d) e,( h' e) cis,( gis' cis)
  }
  d,( a' d) g,( d' g) c,,( g' c) a( e' a) f,( c' f) b,( f' b) as,( es' as)
  <<
    {
      \set tieWaitForNote = ##t
      \tieDown es,~( b'~ \tieUp es~)
      <es, b' es>2.
    }
    \\
    {
      s4. es,2.->
    }
  >>
  h''8-.[ r <fis' h>]_( g,)-.[ r <d' g>]_( a)-. <e' a>(
  h8-.)[ r <fis' h>]_( g,)-.[ r <d' g>]( a)-. <e' a>_(
  h8-.)[ r <fis' h>]_( g,)-.[ r <d' g>]_( a)-. <e' a><fis a> r
  <<
    {
      s8 <g,, g'>4.<a a'><fis fis'><fis'' h dis fis>2.\arpeggio
    }
    \\
    {
      h8 s <d, fis a> h' s <a, d e><e' a d> s <a, cis fis><fis' a cis>
      <h,, h'>2.\arpeggio
    }
  >>
  <e' g h>8<d e g h><c e g h><e g c><d e g c><c e g c>
  <d g a><c d g a><h d g a><d fis h><c d fis h><h d fis h>
  <c es g><b c es g><as c es g><c es as><b c es as><as c es as>
  <b es f><as b es f><g! b es f><b d g><as b d g><g b d g>
  \makeOctaves #1 {f4 e d c h ais}
  h16( h' fis fis' h, h') g,,( g' d d' g, g')
  a,,( a' e e' a, a') fis,,( fis' cis cis' fis, fis')
  h,,8 <fis'' h d> q g,, <g'' h d> q a,, <e'' a d> q fis,, <fis'' a cis> q
  d, <fis' ais> q  h,, <d' fis h> q c, <f' g c> q as,, <es'' as c> q
  a,,! <e''! a! c><e a c> f,, <f'' a c> q g,, <d'' g c> q e,, <e'' g h> q
  <e, h' e>2.
  cis'8( gis' cis) a,( e' a) h,( fis' h) gis,( dis' gis)
  <e, e'>(<h' g'><e h'>)<c, c'>(<g' e'><c g'>)
  <d, d'>(<a' g'><d a'>)<h, h'>(<fis'd'><h fis'>)
  \tag #'fullPart {
    \stopStaff
    s4-\markup { Attacca }
  }
}