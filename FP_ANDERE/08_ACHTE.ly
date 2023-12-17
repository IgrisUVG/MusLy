\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "8" }
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
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

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key c \major
  \time 4/2
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \override Staff.TimeSignature.stencil = ##f
  <h des g>2<c f!>
  <<
    {
      <h gis'>4(<c a'>)
    }
    \\
    {
      d2
    }
  >>
  <d e c'>2<f d'><fis cis'>
  <<
    {
      <f h>
    }
    \\
    {
      e4( d)
    }
  >>
  <cis g' a>2
  <<
    {
      as'2.
    }
    \\
    {
      <c,! f>2( <des fes>4)
    }
  >>
  <c e a>
  <<
    {
      ges'2.
    }
    \\
    {
      <b, es>2(<as des>4)
    }
  >>
  <g es' g>
  \break
  <<
    {
      e'!1 r4 <d es b'><es c'><f des'>
    }
    \\
    {
      d!2 c4 h a s
      %\once\override Accidental.extra-offset = #'(.8 . 0)
      %\once\override NoteColumn.force-hshift = #1.2
      as'2
    }
  >>
  <fis h! es>2<g c d>
  <<
    {
      <a cis> as4(<g es'>)
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.6
      cis4( h) b2
    }
  >>
  <fis h! d>2<gis ais gis'>
  <<
    {
      <a g'>2
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.6
      f'4( e)
    }
  >>
  <h dis fis>2<gis e'><b d! f!><a cis fis><gis cis gis'>
  <<
    {
      \makeOctaves #1 {
        %\small
        ais8 a g! fis e es des ces
        b as g f s2
      }
    }
    \\
    {
      r4 e'( a gis) s \stemUp
      \once\override NoteColumn.force-hshift = #-.4
      cis^( \stemDown fis2^>)
    }
  >>
  %\override TrillSpanner.extra-offset = #'(0 . -3)
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill"
    \raise #1.65 \teeny \flat
  }
  \endSpanners
  g1\startTrillSpan
  <<
    {
      gis,2 r4 a
    }
    \\
    {
      r4 dis,2.
    }
  >>
  e2 <d fis><e h'!>1~
  <e h'>8<fis' dis'><dis cis'><cis ais'>
  <ais gis'><gis fis'><fis dis'><dis cis'>
  <<
    {
      <des b'>2
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.3
      fes4( es)
    }
  >>
  <d h'>2<d c'><cis e a><f gis h><fis g c>
  <g d'>1~ q8 <cis' fis><ais dis><gis cis>
  <fis ais><dis gis><cis fis><ais dis>
  <<
    {
      <gis cis>2
    }
    \\
    {
      fis4( e)
    }
  >>
  <es as c>2
  <<
    {
      <e cis'>4(<f d'>)
    }
    \\
    {
      g2
    }
  >>
  <g a f'><b g'><h fis'>
  <<
    {
      <b e>
    }
    \\
    {
      a4( g)
    }
  >>
  <fis c'd>2
  <<
    {
      \makeOctaves #1 {
        %\small
        gis8 g f! e d des ces heses as ges f es
      }
      s2
    }
    \\
    {
      s1 s4 \stemUp
      \once\override NoteColumn.force-hshift = #-.4
      h''^( \stemDown e!2)
    }
  >>
  <f, cis' f><a d e>
  <<
    {
      <h dis> b4( <a f'>)
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.6
      dis( cis) c2
    }
  >>
  <gis cis e><ais his ais'>
  <<
    {
      <a a'>
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.6
      g'4( fis)
    }
  >>
  <cis eis gis>2
  <<
    {
      %\small
      ais'8 a g fis e es des ces b as g f! e! d! cis h!
    }
    \\
    {
      r2 h'( b4) cis,( fis,2)
    }
  >>
  r2 r4 es' f! g
  <<
    {
      as8<f f'><g g'><gis gis'><ais ais'>4
    }
    \\
    {
      as4-> s ais8
      \makeOctaves #1 {a' g fis}
    }
  >>
  \makeOctaves #1 {e es des ces b as g f! e! d! cis h!}
  \shape #'((0 . -11) (3 . -7.5) (4 . -5) (4.2 . -6)) Slur
  ais'4( g e des
  \change Staff = LH
  b g e cis)
  \change Staff = RH
  r2 <h'! d fis>2<b es g>1
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key c \major
  \time 4/2
  \override Staff.TimeSignature.stencil = ##f
  \makeOctaves #-1 {
    fis2 g
  }
  <<
    {
      a2 g
    }
    \\
    {
      e,2. h'4
    }
  >>
  <b f' c'>2
  <<
    {
      h'!4( ais) a1 as2.
    }
    \\
    {
      cis,2 d e f( des4)
    }
  >>
  <a! e'><b es>2(<ces des>4)<b es>
  <<
    {
      fis'2 g s4 c,2( es4)
    }
    \\
    {
      <a, d!>2<g d'>2. f4( b ces)
    }
  >>
  <h! es>2<c! e!><a fis'><b b'><h! a'><his gis'><d g>
  <<
    {
      h' c4( h)
    }
    \\
    {
      e,( fis gis2)
    }
  >>
  <d b'>2
  <<
    {
      cis'2 h4( ais) r2 h->( b4) s
    }
    \\
    {
      cis,( dis e2) f,!1-^ s2
    }
  >>
  \makeOctaves #1 {
    %\small
    e'!8 d cis h! ais a g fis e es des ces
    \ottava #-1
    \set Staff.ottavation = #"8"
    b as g f e! es des ces b4
    \ottava #0
  }
  <<
    {
      cis'''4( d e)
    }
    \\
    {
      g,2.
    }
  >>
  <gis e'>2<a d><ais cis>1 ces2 g! <fis a!><f h><e c'!><es c'>
  <<
    {
      c'4( h) a2
    }
    \\
    {
      d,1
    }
  >>
  <cis ais'>1<h h'>2<c! c'!>
  <<
    {
      d' c
    }
    \\
    {
      a,2. e'4
    }
  >>
  <es b' f'>2
  <<
    {
      e'!4( dis) d1
    }
    \\
    {
      fis,2 g a
    }
  >>
  <<
    {
      s2 a->~ a!1
    }
    \\
    {
      es1-- es,-^
    }
    \\
    {
      \voiceTwo
      s1.
      \makeOctaves #1 {
        %\small
        d'!8 c! h! a!
      }
    }
  >>
  %\normalsize
  <gis gis'>2<d' fis><h g'><c! c'!><cis h'><cisis ais'><e a>
  <<
    {
      cis'
    }
    \\
    {
      fis,4( gis)
    }
  >>
  <<
    {
      f'!1
    }
    \\
    {
      \voiceOne
      s4 e( a, gis b2)
    }
    \\
    {
      \voiceTwo
      %\small
      ais8 a g fis e es des ces b as g f!
    }
  >>
  e! d! cis h!
  <<
    {
      ais'' a g fis e es des ces
    }
    \\
    {
      ais,1->
    }
  >>
  b'8 as g f! e! d! cis h!
  <<
    {
      ais1
    }
    \\
    {
      \stemUp
      \once \hide NoteHead
      ais8  h cis d e f g as
    }
  >>
  b ces des es e fis g a
  ais\breve b,4 r <h,! fis' d'>2<es es'>1
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -2)
  \mark \markup {\fontsize #-2 {&glqq;Berge&elqq;}}
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1\pp s2\< s2\! s1\> s s\sf s\sf s\f\> s4\! s2.\p\<
  s1\mf s2. s4\pocoCr s1*4 s1\ff
  \once\override DynamicTextSpanner.extra-offset = #'(-1 . -7)
  s\dim
  \once\override Hairpin.extra-offset = #'(0 . 7)
  s2.\> s8 s8\! s1 s1*8\pp s1*2\pp s\cresc s\ff\dim s\p
  s1 s\< s\ff s\dim s\p s\cresc s1*2\sf s1
  \once\override Hairpin.extra-offset = #'(0 . .5)
  s\>
  \once\override DynamicText.extra-offset = #'(0 . .5)
  s2\pp s1.\ff
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}