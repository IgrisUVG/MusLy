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
}

%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicTwo = {
  \override Hairpin.to-barline = ##f
  s2.*5\mf s2.*3\pp s2
  \once \override TextScript.extra-offset = #'(1 . 1)
  s4-\markup {\italic poco cresc} s2.*3 s2 s4\f s2. s2.*6\pp s2.*4\mf s2\f
  s4-\markup {\italic cresc} s2.*3 s2.*6\ff s2 s4-\markup {\italic dim} s2.*2
  s4\p
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
}