\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Фрагменты 2"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 0
  %ragged-right = ##t
  ragged-last = ##t
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \time 2/2
  \once\override Score.RehearsalMark.extra-offset = #'(6 . 2)
  \mark \markup {\italic Allegretto}
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  \ottava #1
  \set Staff.ottavation = #"8"
  h'''\mp d, g a,
  \bar ":|."
  \ottava #0
  \ottava #1
  \set Staff.ottavation = #"8"
  \repeat unfold 2 {h' d, g a,}
  h'! d, g a,
  \repeat unfold 5 {h' d, g a,}
  h'8 e, g c,! d g, a d,
  \bar ".|:"
  h'' e, g c,! d g, a d,
  \bar ":|."
  \repeat unfold 5 {h'' e, g c, d g, a d,}
  \bar ".|:"
  h'' e, g c, d g, a d,
  \bar ":|."
  \repeat unfold 3 {h'' e, g c, d g, a d,}
  \bar ".|:"
  h'' e, g c, d g, a d,
  \bar ":|."
  \repeat unfold 8 {h'' e, g c, d g, a d,}
  h''4 e, g c, d g, a d,
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \time 2/2
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:"
  R1\sustainOn
  \bar ":|."
  \clef treble
  g'1~ g4 es g f
  \override Stem.stencil = ##f
  \tweak #'duration-log #0
  b,2
  \revert Stem.stencil
  \clef bass
  s4
  <<
    {
      s4 es1~ es
    }
    \\
    {
      <ces,, des>4~ <ces! des!>1~ <ces des>
    }
  >>
  es1~ es4 ces es des
  <<
    {
      s2.
      \stemDown
      <b''_~ es_~ f~ g~>4\ff q1
    }
    \\
    {
      ges,,1 <ces ces'>
    }
  >>
  \bar ".|:"
  R1
  \bar ":|."
  r2
  \clef treble
  r4. <d'' g h>8~ q2. <a cis e a>4~ q
  \clef bass
  <b, es g b>2.
  <<
    {
      s2
      \stemDown
      <des des'>
    }
    \\
    {
      <ces, ges' ces>1
    }
  >>
  ges''1
  \bar ".|:"
  s1
  \bar ":|."
  s2
  \once \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 4 {
    ces,,8[ ges' des'] es[ b' es]
  }
  f2
  <<
    {
      \stemDown
      g2
    }
    \\
    {
      \stemUp
      \tuplet 3/2 4 {
        \once\override Beam.positions = #'(.5 . 2)
        \once \hide NoteHead
        \once \override Stem.X-offset = #-.4
        f,,8[ ges, es']
        \stemDown
        b'[ es f]
      }
    }
  >>
  ces'1
  \bar ".|:"
  s1
  \bar ":|."
  <<
    {
      \stemDown
      g'2. fis4~ fis h,2.
    }
    \\
    {
      \acciaccatura {\stemUp d,,8} d1 r4
      \acciaccatura c8 c2.
    }
  >>
  \tuplet 3/2 {r2 d'' fis}
  <<
    {
      \stemDown
      e2. d4~ d g,2.~ g2 as~ as4 es2.
    }
    \\
    {
      \acciaccatura {\stemUp fis,,8} fis1 s4
      \acciaccatura a8 a2. es'1 s4
      \acciaccatura as,8 as2.
    }
  >>
  \xLV #15 <es ces''>1\laissezVibrer
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Staff = "LH" \links
  >>
}