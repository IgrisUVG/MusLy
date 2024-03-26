\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = " "
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  %top-markup-spacing.basic-distance = #15
  %markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #22
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})
pocoCr =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco cresc.")
pocoDim =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco dim.")
xLV =
#(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
   #})
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key c \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(0 . 2)
  \mark "Allegro"
  \clef bass
  <es g c es>2-><g b d g>-><fis a c fis>1->
  \clef treble
  ces'''16( b fis g heses as e f g ges d es f fes c des
  es d! b ces des c as heses ces b fis g heses as e f
  g ges d es f fes c des es d b ces des c as heses
  b1)^>
  <g h e g>2^><h d fis h>^><b des e b'>^> r
  <ces es as ces>1
  <c es g c>2^><cis es a cis>^><d b' d>1
  c''16( h g as b a f ges as g es fes ges f d es
  f e c des es d b ces des c as heses ces b fis g
  heses as f ges as g es fes ges f cis d fes es h c
  cis1)
  <<
    {
      dis1 e fis gis a h cis d es?
    }
    \\
    {
      h,1 b? ais h cis dis e fis g
    }
  >>
  <fes, as des fes>2^><as ces es as>^><g b des g>^> r
  <as c f as>^- r <a d f a>^- r <a es' fis a>^- r
  s8 \bot <b, d g b>
  \stemUp
  \top <d' g><d g b d><e as c e>(< d g b>) d \bot <g,, b d g>
  \top
  <<
    {
      <d''' fis h d>2-><fis a cis fis>->
    }
    \\
    {
      s4
      \autoBeamOff
      \crossStaff {<d, fis>8 s s <d fis h> d}
      \autoBeamOn
      s8
    }
  >>
  <<
    {
      <f'! as h f'!>1-> s s
    }
    \\
    {
      \stemUp
      r8 g'16^( ges d es) f^( e
      \stemDown
      c des) es^( d b h) des^( c
      as heses) ces^( b ges ases) heses^( as
      fes f) ases^( ges d es) f^( fes
      <b,? f'!>1)
    }
    \\
    {
      \voiceTwo
      s4
      \autoBeamOff
      \crossStaff {<d, f>8 s8}
      \autoBeamOn
      s2 s1 s4
      \autoBeamOff
      \crossStaff {<d f>8 s s <d f b> d s}
      \autoBeamOn
    }
  >>
  <<
    {
      <f a f'>1<fis a fis'>
    }
    \\
    {
      s4
      \autoBeamOff
      \crossStaff {<cis f>8 s s <cis f a>}
      \autoBeamOn
      s4 s
      \autoBeamOff
      \crossStaff {<c e>8 s s <e a>}
      \autoBeamOn
    }
  >>
  \stemNeutral
  \repeat percent 9 {
    \repeat percent 4 {
      \tuplet 6/4 {des'16 as' g des'-\markup {\italic legato} g, as}
    }
  }
  <<
    {
      b2( es,)
    }
    \\
    {
      r8 <es g><des f><ces es><b des><as c><es b'><as c>
    }
  >>
  <f des'>4<ges es'><as c as'><g b g'>
  <<
    {
      c'2( f,) h( e,) b'?( es,) a( d,)
    }
    \\
    {
      <as f'>8\noBeam <f' as><es g><des f><c es><b d><f c'><b d>
      <c e>\noBeam <e g><d fis><c e><h d><a c><e h'><a c>
      <b? des>\noBeam <es g><des f><ces es><b des><as ces><es b'><as ces>
      <h dis>\noBeam <dis f><cis e><h dis><a cis><gis h><d a'><gis h>
    }
  >>
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      s4 e' g c
    }
    \\
    {
      c,1
    }
    \\
    {
      \voiceTwo
      r16^( g fis g e' c h c g' e dis e c' g fis g)
    }
  >>
  <<
    {
      \hideNotes
      e'4( s2 s8. e16)
      \unHideNotes
    }
    \\
    {
      \repeat percent 4 {e16 cis his cis}
    }
  >>
  <<
    {
      s2 es,4 g
    }
    \\
    {
      s4
      \stemUp
      c,2.
    }
    \\
    {
      \voiceTwo
      es'!16^( c! h c c, g fis g es' c h c g' es d es)
    }
  >>
  <<
    {
      s4 fis as d
      s g, h d
      s ges, b es
    }
    \\
    {
      \tweak #'duration-log #0 
      d,16^( as g as fis' d cis d as' fis eis fis d' as g as)
      \tweak #'duration-log #0
      d,^( h ais h g' d cis d h' g fis g d' h ais h)
      \tweak #'duration-log #0
      es,^( b? a b ges' es d es b' ges f ges es' b a b)      
    }
  >>
  \omit Staff.TimeSignature
  \time 2/4
  \repeat tremolo 8 {g'32 ges}
  \time 4/4
  <as, c f as>8-^ r r4 <g h d g>8-^ r r4
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key c \minor
  \time 4/4
  <c, g' c>2<b f' b><a es' a>1
  \clef treble
  es''''16_( fes es d cis d cis c h c h b a b a as
  g as g fis f ges f fes es fes es d cis d cis c
  h c h b a b a as
  \clef bass
  g as g fis f ges f fes
  es1)
  \ottava #-1
  \set Staff.ottavation = #"8"
  <e,, h' e>2<d a' d><des g des'>
  \ottava #0
  r
  <as' es' as>1
  <g es' g>2<fis es' fis><f f'>1
  \clef treble
  e''''16_( f e es d es d des c des c ces b ces b heses
  as heses as g fis g fis f e f e es d es d des
  c des c ces
  \clef bass
  b ces b heses as heses as g fis g fis f
  e1)
  <<
    {
      s1 gis a gis g! fis f! e es!
    }
    \\
    {
      dis1 d! cis c! h ais a gis g!
    }
  >>
  <des as' des>2<ces ges' ces><b fes' b> r
  <f c' f>-- r <f d' f>-- r <fis es' fis>-- r
  <<
    {
      r8 s
      \autoBeamOff
      \crossStaff {<g'' b>8 s s b <d, g b> s}
      \autoBeamOn
      r8
      \stemDown
      <h d fis h><fis' h> \top <d' fis h d>
      <es g cis es>( \bot h) <d, fis h><fis, h d fis>
      r <h d f h><f' h> \top <d' f h d>
      \bot
      \clef treble
      \stemUp
      <e as c e>_( <h d f h>)
      \clef bass
      <d, f h d><f, h d f>
      \stemDown
      r <b? es ges b?><ges' b es ges>
      \clef treble
      <es' ges b es><fes as c? fes>(<b, es ges b>)
      \clef bass
      <es, ges b es><ges, b es ges>
      r <b d f b><f' b> \top <d' f b d>
      <es ges c es>( \bot b) <d, f b><f, b d f>
      r <a cis f a><f' a> \top <cis' f a cis>
      <dis gis b? dis>( \bot a) <cis, f a cis><f, a cis f>
      r <a c e a><e' a> \top <c' e a c>
      <d fis b d>( \bot <a c>) <c, e a c><e, a c e>
    }
    \\
    {
      <g, g'>1<fis fis'><f! f'!><es es'><d d'><cis cis'><c! c'!>
    }
  >>
  \makeOctaves #-1 {
    fes''2 es4.. ces16 eses1 des2 c4.. as16 ces1 des
    eses 2 \tuplet 3/2 {fes4 des as} g1 ges f2 fes es4
  }
  f'16( e f g as2)~ as4 ges es e <f,, f'> g''16( fis g as b2)
  g1 ges f e d2~ d8\noBeam cis b? a
  \makeOctaves #1 {
    g1 fis f! es 
    \omit Staff.TimeSignature
    \time 2/4
    ces2
    \time 4/4
    c8-^ r r4 des8-^ r r4
  }
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1*2\fff s4 s2.\pocoDim s1*2 s1\pp s1*2\fff s1*2\fff s1*4\ffff
  s1\pp s1*8\pocoCr s1\f s1*2\fff s1\mf s\p s\pp s\mp s1*3\mf
  s1*3-\markup {dim} s1*7\pp s2 s2\< s1 s1*3\f
  s2 s-\markup {poco a poco dimin} s1*2 s1\p\< s\f s\sp s4 s2.\pocoCr
  s1 s4 s2.\< s2\sp\< s\ff
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}