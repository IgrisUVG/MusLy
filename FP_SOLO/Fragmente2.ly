\version "2.19.15"

\language "deutsch"

\header {
  title = "Фрагменты 2"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #25
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                             further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                          further 2) 0)
         #})

circle =
\once \override NoteHead.stencil =
#(lambda (grob)
   (let* ((note (ly:note-head::print grob))
          (combo-stencil (ly:stencil-add
                          note
                          (circle-stencil note 0.1 0.5))))
     (ly:make-stencil (ly:stencil-expr combo-stencil)
       (ly:stencil-extent note X)
       (ly:stencil-extent note Y))))

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
  \grace {s8} h'' e, g c, d g, a d,
  \repeat unfold 7 {h'' e, g c, d g, a d,}
  h''4 e, g c, d g, a d,
  h'' d, g a,
  \bar ".|:"
  h'-\markup {\italic rit.} d, g a,
  \bar ":|."
  \cadenzaOn
  \xLV #5 h'1\laissezVibrer
  \xLV #5 d,\laissezVibrer
  \xLV #5 g\laissezVibrer
  \xLV #5 a,\laissezVibrer
  \ottava #0
  \cadenzaOff
  \omit Score.BarLine
  \omit Score.SpanBar
  s s
  \undo \omit Score.BarLine
  \undo \omit Score.SpanBar
  \bar ""
  \break
  \time 5/4
  <d,, f b c d>4 <c es as b c> <d f b c d>2.
  \cadenzaOn
  r16 b'[ es f]
  b,[ es f g]
  es[ f g b]
  f[ g b es]
  g,[ b es f]
  \bar ""
  \break
  b,[ es f g]
  \ottava #1
  \set Staff.ottavation = #"8"
  es[ f g b]
  f[ g b f']
  \stemUp
  es[ b] s8
  b16[ g] s8
  g16[ f] s8
  \ottava #0
  f16[ es] s8
  es16[ b] s8
  b16[ g] s8
  g16[ f] s8
  f16[ es] s8
  es16[ b] s8
  \bar ""
  \break
  b16[ g] s8
  g16[ f] s8
  f16[ es] s8
  \bot
  es16[ b] s8
  b16[ g] s8
  g16[ f] s8
  f16[ es] s8
  \cadenzaOff
  \bar "|" \noBreak
  \stemNeutral
  \top
  <d'' f b! c d>4 <c es! as! b c> <d g b d>2.
  \cadenzaOn
  c,16[ g' as c]
  as[ es' f b]
  c,16[ g' as c]
  as[ es' f \circle as]
  \ottava #1
  \set Staff.ottavation = #"8"
  c,16[ g' as c]
  \stemUp
  b[ as] s8
  as16[ es] s8
  es16[ d] s8
  \ottava #0
  d16[ c] s8
  c16[ b] s8
  \bar ""
  \break
  b16[ as] s8
  as16[ es] s8
  es16[ d] s8  
  d16[ c] s8
  c16[ b] s8  
  b16[ as] s8
  as16[ es] s8
  es16[ d] s8
  d16[ c] s8
  \bot
  c16[ b] s8
  \bar ""
  \break
  b16[ as] s8
  as16[ es] s8
  es16[ d] s8
  d16[ c] s8
  c16[ b] s8
  \cadenzaOff
  \stemNeutral
  \top
  \bar "|"
  \time 4/4
  r1\pp
  \omit Score.BarLine
  \omit Score.SpanBar
  \break
  \time 8/4
  ges'''16( f ges as b ges as b
  ces8-.)\noBeam b8.-- as16( b des
  es8-.)  
  \undo \omit Score.BarLine
  \undo \omit Score.SpanBar
  des4-- <as ces>8
  <ges b>8.-- <des as' des>16 <b ges'>8-.\noBeam
  \ottava #1
  \set Staff.ottavation = #"8"
  <as' des ges>-.
  \ottava #0
  \noBreak
  \cadenzaOn
  %\time 2/4
  \repeat tremolo 8 {b32\fermata\pp g\fermata}
  \bar ""
  \break
  %\omit Score.BarLine
  %\omit Score.SpanBar
  %\time 6/8
  \repeat tremolo 12 {b32 g}
  \repeat tremolo 12 {h32 g}
  \repeat tremolo 12 {h32 fis}
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
      \once \override Stem.length = #20
      g2
    }
    \\
    {
      \stemUp
      \tuplet 3/2 4 {
        \once\override Beam.positions = #'(.5 . 2)
        \once \hide NoteHead
        \once \override Stem.X-offset = #-.4
        f,,8[
        ges, es']
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
      \override Stem.length = #7
      g'2. fis4~ fis h,2.
    }
    \\
    {
      \acciaccatura {\stemUp d,,8} d1 r4
      \acciaccatura c8
      \once \override Stem.length = #7
      c2.
    }
  >>
  \override Stem.length = #7
  \once\override TupletBracket.positions  = #'(-3 . -1)
  \tuplet 3/2 {r2 d'' fis}
  <<
    {
      \stemDown
      \override Stem.length = #7
      e2. d4~ d g,2.~ g2 as~ as4 es2.
    }
    \\
    {
      \acciaccatura {\stemUp fis,,8} fis1 s4
      \acciaccatura a8
      \once \override Stem.length = #7
      a2. es'1 s4
      \acciaccatura as,8
      \once \override Stem.length = #7
      as2.
    }
  >>
  \xLV #20 <es ces''>1\laissezVibrer s s s
  \bar ".|:"
  s
  \bar ":|."
  \cadenzaOn
  s1 s s s
  \cadenzaOff
  \omit Score.BarLine
  s s
  \bar ""
  \break
  \time 5/4
  \mergeDifferentlyHeadedOn
  <<
    {
      es'16 b' es f
      \stemDown
      b, es f b
    }
    \\
    {
      <es,,, es'>2\sustainOn
    }
  >>
  es''16 f b es f, b es f
  \stemDown
  b, es \top f b \bot
  \cadenzaOn
  \clef treble
  <<
    {
      \once\override TupletBracket.positions  = #'(3 . 2.5)
      \tuplet 3/2 {
        \once \override NoteColumn.force-hshift = #1.3
        es,4 d c
      }
    }
    \\
    {
      \stemUp
      \xLV #3
      <
      g\laissezVibrer
      as\laissezVibrer
      b
      es
      g^\laissezVibrer
      >2
    }
  >>
  \stemNeutral
  \xLV #3 b2_\prallprall\laissezVibrer s4
  \bar ""
  \break
  s2.
  \clef bass
  s8
  \top
  \stemDown
  g'''16[ f]
  s8 f16[ es]
  s8 es16[ b]
  s8 b16[ g]
  s8 g16[ f]
  s8 f16[ es]
  s8 es16[ b]
  s8 b16[ g]
  s8 g16[ f]
  \bar ""
  \break
  s8 f16[ es]
  s8 es16[ b]
  \bot
  s8 b16[ g]
  s8\sustainOff g16[ f]
  s8 f16[ es]
  s8 es16[ b]
  s8 b16[ f]
  \cadenzaOff
  \bar "|" \noBreak
  \stemNeutral
  es16\sustainOn b'! es! f
  es16 b'! es! f
  <<
    {
      as,,16 es' f b
    }
    \\
    {
      <as,, as'>4\sustainOn
    }
  >>
  c'16 g' as c
  \stemDown
  as es' \top f b! \bot
  \stemNeutral
  \cadenzaOn
  \once\override TupletBracket.positions  = #'(-4.5 . -4)
  \tuplet 3/2 {es,,4 d c} \xLV #3 b2_\prallprall\laissezVibrer s4
  \top
  \stemDown
  s8 es'''16[ d]
  s8 d16[ c]
  s8 c16[ b]
  s8 b16[ as]
  s8 as16[ es]
  s8 es16[ d]
  s8 d16[ c]
  s8 c16[ b]
  s8 b16[ as]
  s8 as16[ es]
  s8 es16[ d]
  s8 d16[ c]
  \bot
  s8 c16[ b]
  s8\sustainOff b16[ as]
  s8 as16[ es]
  s8 es16[ d]
  s8 d16[ c]
  s8 c16[ b]
  s8 b16[ as]
  s8 as16[ es]
  \cadenzaOff
  \stemNeutral
  \bar "|"
  \time 4/4
  as,1\sustainOn\fermata
  \break
  \clef treble
  \time 8/4
  \revert Stem.length
  b'''16( as b ces des b ces des
  es8-.)\noBeam des8.-- f,16( ges b
  \stemUp
  ces8-.)\noBeam b8.--
  \clef bass
  \stemNeutral
  des,16( ces b as ces b as ges8-.)\noBeam
  \clef treble
  <ges' b ges'>-.
  \cadenzaOn
  r2\fermata\sustainOn
  \clef bass
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      es,,8[ <b' g'> <d b'>]
    }
    \\
    {
      <
      \tweak #'duration-log #1
      es,,
      \tweak #'duration-log #1
      es'
      >4.
    }
  >>
  <g'' es'>8[
  \clef treble
  <b as'> <g' b>]
  <<
    {
      es'4 d8 d4 cis8 cis4 h
    }
    \\
    {
      
    }
  >>
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Staff = "LH" \links
  >>
}