\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
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
   'span-text "poco dimin.")
offsetPositions =
  #(define-music-function (parser location offsets) (pair?)
    #{
       \once \override Slur.positions = #(lambda (grob) 
	 `(,(+ (car offsets) (cdar (ly:slur::calc-control-points grob))) . 
	   ,(+ (cdr offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
    #})
  
%%%%%%%%% VOICES %%%%%%%%%
groundBas = \relative {
  \stemUp
  \override Stem.length = 7
  \repeat unfold 7 {r4 gis,,! gis! gis!}
  \repeat unfold 5 {r4 f! f! f!} r a a a r f! f! f!
  \repeat unfold 6 {r4 gis! gis! gis!}
  \repeat unfold 4 {r4 g! g! g!}
  \repeat unfold 4 {r4 fis! fis! fis!}
  r4 f! f f r f f f 
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  f1
  \bar "|."
}
groundTehor = \relative {
	\override Slur.positions = #'(0 . 0)
  c8_( g' h e
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5 . -3.5)
  fis g! h c)
  \change Staff = LH
  \stemUp
  fis,,_( c'
  \change Staff = RH
  \stemDown
  es gis
  \once\override Beam.positions = #'(-4 . -3.5)
  a h 
  \once\override NoteColumn.force-hshift = #.8
  c h)
  \change Staff = LH
  \stemUp
  h,,_( e h' cis
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5 . -3.5)
  e g! ais h)
  \change Staff = LH
  \stemUp
  c,,_( g' d' es
  \change Staff = RH
  \stemDown
  fis g! <es g! c><fis a es'>)
  \change Staff = LH
  \stemUp
  d,_(e g! b
  \change Staff = RH
  \stemDown
  e g! <fis b><e a>)
  \change Staff = LH
  \stemUp
  dis,_( fisis gis dis'
  \change Staff = RH
  \stemDown
  e fisis <e gis><f a>)
  \change Staff = LH
  \stemUp
  es,_( b' f' ges
  \change Staff = RH
  \stemDown
  \once\override Score.MetronomeMark.extra-offset = #'(-2 . -1.3)
  \tempo "rit."
  as b <as c><g ces d>)
  \change Staff = LH
  \stemUp
  \tempo "a t-po"
  ces,,_( ges' b es
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-4.5 . -3.5)
  f ges b ces)
  \change Staff = LH
  \stemUp
  f,,_( b d g!
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-4 . -3.5)
  as b c b)
  \change Staff = LH
  \stemUp
  des,,_( g as
  \change Staff = RH
  \stemDown
  f'
  \once\override Beam.positions = #'(-4 . -3)
  ges as h! c)
  \change Staff = LH
  \stemUp
  b,,_( f' ges c
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5.5 . -3)
  des f a! b)
  \change Staff = LH
  \stemUp
  e,,_( b'
  \change Staff = RH
  \stemDown
  des fis
  \once\override Beam.positions = #'(-4 . -3)
  g a
  \once\override NoteColumn.force-hshift = #.8
  b a)
  \change Staff = LH
  \stemUp
  a,,_( d a' h
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5.5 . -4)
  d f gis a)
  \change Staff = LH
  \stemUp
  b,,_( f' c' des
  \change Staff = RH
  \stemDown
  e f 
  \once\override NoteColumn.force-hshift = #.2
  g a)
  \bar "||"
  \change Staff = LH
  \stemUp
  c,,8_( g' h e
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5 . -3.5)
  fis g! h c)
  \change Staff = LH
  \stemUp
  fis,,_( c'
  \change Staff = RH
  \stemDown
  es gis
  \once\override Beam.positions = #'(-4 . -3)
  a h 
  \once\override NoteColumn.force-hshift = #.7
  c h)
  \change Staff = LH
  \stemUp
  h,,_( e h' cis
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-5 . -3.5)
  e g! ais h)
  \change Staff = LH
  \stemUp
  c,,_( g' d' es
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-4.5 . -4)
  fis g! <e g! c><f a es'>)
  \change Staff = LH
  \stemUp
  cis,_( fis his fis'
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-4 . -3.5)
  <a c> h dis <ais eis'>)
  \change Staff = LH
  \stemUp
  dis,,_( a'! b c
  \change Staff = RH
  \stemDown
  \once\override Beam.positions = #'(-4.5 . -4)
  fis a <ais fis'><h g'>)
  \change Staff = LH
  \stemUp
  cis,,_( fisis gis dis'
  \change Staff = RH
  \stemDown
  e fisis gis ais)
  \change Staff = LH
  \stemUp
  cis,,_( gis' his dis
  \change Staff = RH
  \stemDown
  a' ais <gis his><g cisis>)
  \change Staff = LH
  \stemUp
  his,,_( cisis eis gisis h!
  \change Staff = RH
  \stemDown
  eis ais <a cisis>)
  \change Staff = LH
  \stemUp
  h,,!_( d! g! e'
  \change Staff = RH
  \stemDown
  ais h e g)
  \change Staff = LH
  \stemUp
  c,,,_( f g h
  \change Staff = RH
  \stemDown
  c g' as h)
  \change Staff = LH
  \stemUp
  c,,_( fis g h
  \change Staff = RH
  \stemDown
  c d 
  \once\override NoteColumn.force-hshift = #.3
  g as)
  \change Staff = LH
  \stemUp
  des,,_( f a b
  \change Staff = RH
  \stemDown
  c des e f!)
  \change Staff = LH
  \stemUp
  d,!_( fis g a 
  \once\override Beam.positions = #'(5 . 6)
  b
  \change Staff = RH
  \stemDown
  cis d e)
  \change Staff = LH
  \stemUp
  es,_( f ges a 
  \once\override Beam.positions = #'(5.5 . 5)
  b d
  \change Staff = RH
  \stemDown
  es e)
  \change Staff = LH
  \stemUp
  \shape #'((0 . 0) (2 . -.5) (.5 . -4) (0 . 0)) Slur
  e,_( f g! a 
  \once\override Beam.positions = #'(13 . 14)
  b
  \change Staff = RH
  %\stemDown
  des e fis)
}
%%%%%%%%%%% RH %%%%%%%%%%%%
dreizehnteRH = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  %\set Staff.printKeyCancellation = ##f  
  <<
    {
      e''2.
    }
    \\
    {
      <a, h>2.
    }
  >>
  <<
    {
      g'8( e g2) a16(g fis e dis4)
      e2.
    }
    \\
    {
      s4 <a, c>2. s4 
      \once \override Dots.extra-offset = #'(0 . 1)
      h2.
    }
    \\
    {
      \stemDown
      s4 s1 
      \once\override NoteColumn.force-hshift = #1.1
      a4( g!2)
    }
    \\
    {
      \voiceTwo
      \override NoteColumn.force-hshift = #.2
      e4( es2.) 
      \once\override NoteColumn.force-hshift = #1
      f!4( e2.)
    }
  >>
  <<
    {
      g'8( e g1)
    }
    \\
    {
      s4 c,2. s4
    }
    \\
    {
      \voiceTwo
      \offsetPositions #'(1 . 0)
      \override NoteColumn.force-hshift = #.2
      e,4( es2.) s4
    }
  >>
  <<
    {
      g'8( a b2) g!4 cis,2. h4 es2. heses'4( es,2.)
    }
    \\
    {
      <g, e'>2. s4 <dis gis>2. s4 <ges b>2. s4 <as b>2.
    }
  >>
  <<
    {
      ges'8( es ges2~ ges8) f4 e!8 es4.( des8) c es as ges
      des2.
    }
    \\
    {
      s4 <as c!>2. s4 as2. s4 des2.
    }
    \\
    {
      \voiceTwo
      \override NoteColumn.force-hshift = #.2
      es,4( d2) s4 ges( f2.) e!4( f2.)
    }
  >>
  <<
    {
      f'8( des f2) g16( f e d cis4) <a d>2.
    }
    \\
    {
      s4 <g b>2. s4 
      \once\override NoteColumn.force-hshift = #1.2
      g4( f2)
    }    
    \\
    {
      \voiceTwo
      eses4( des2.) 
      \once\override NoteColumn.force-hshift = #1
      es4( 
      \once\override NoteColumn.force-hshift = #1.4
      d2.)
    }
  >>
  <<
    {
      f'8( d f2.) des4( e2.)
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #.2
      d,4( des2.) b'4( <a h>2.)
    }
  >>
  <<
    {
      g'8( e g2) a16( g fis e dis4) <h e>2.
    }
    \\
    {
      s4 <a c>2. s4 
      \once\override NoteColumn.force-hshift = #.4
      a4^( g!2)
    }
    \\
    {
      \voiceTwo
      \offsetPositions #'(3 . 0)
      \override NoteColumn.force-hshift = #.2
      e4( es2.) 
      \once\override NoteColumn.force-hshift = #.9
      f4( 
      \once\override NoteColumn.force-hshift = #.6
      e2) s4
    }
  >>
  <<
    {
      g'8( e g1)
    }
    \\
    {
      s4 c,2. s4
    }
    \\
    {
      \voiceTwo
      \offsetPositions #'(1 . 0)
      \override NoteColumn.force-hshift = #.2
      e,4( es2.) s4
    }
  >>
  <<
    {
      fis'8( gis a2) fis4( g!1) gis2.---> e8( cis
      e2) fisis4
    }
    \\
    {
      d4. cis8 s2 <h e>2 s2 ais2 s a!4. gis8 s4
    }
    \\
    {
      \voiceTwo
      fis2. f4( e2) s4 e( dis2) s4 e( dis2) s4
    }
  >>
  <<
    {
      e'!4 ais2. gis8( eis gis1) as g2. f!8( d f2) e4 c
      h!2. b8( g b2) a!4 ges s1 g
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #.2
      eis4( <fis dis'>2) s2 <gis dis'> s4 
      \once\override NoteColumn.force-hshift = #.2
      fis( <f! c'!>2) s4
      \once\override NoteColumn.force-hshift = #.2
      e4( <es c'>2) s4
      \once\override Slur.positions = #'(0 . 0)
      h'4( b2) s4 
      \once\override NoteColumn.force-hshift = #.2
      h,!4( <b g'>2) s4
      \once\override NoteColumn.force-hshift = #.2
      a4( <as es'>2) s4
      \once\override NoteColumn.force-hshift = #.2
      g!( <ges f'>2) s4 f e1 
    }
  >>
}
%%%%%%%%%%% LH %%%%%%%%%%%%
dreizehnteLH = \relative {
  \clef bass
  \key c \major
  \time 4/4
  %\set Staff.printKeyCancellation = ##f
  <<
    {
      \groundTehor
    }
    \\
    {
      \groundBas
    }
  >>
}
%%%%%%%%%%%% D %%%%%%%%%%%%
dynamicDrzehn = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1*31\pp
}
%%%%%%%%%%%%%%%%%%%%%%