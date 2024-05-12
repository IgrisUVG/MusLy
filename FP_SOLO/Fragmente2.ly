\version "2.19.15"

\language "deutsch"

\header {
  title = "Фрагменты 2"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)
\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 0
  %ragged-right = ##t
  %ragged-last = ##t
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
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                             further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                          further 2) 0)
         #})

%% Cautionary pedal mark after a line break:
cautionPed = \markup {
  \normal-text
  \with-dimensions #'(0 . 6) #'(0 . 1.8)
  \concat {
    "("
    \musicglyph #"pedal.Ped"
    \musicglyph #"pedal.."
    ")"
  }
}

ped = \markup {
  \concat {
    \musicglyph #"pedal.Ped"
    \musicglyph #"pedal.."
    \hspace #0.95
  }
}

%% Span:
sustainSpanOn =
#(define-event-function (parser location)()
   #{
     \tweak bound-details
     #`((left . ((Y . 0)
                 (padding . -1.7)
                 (attach-dir . ,LEFT)
                 (stencil-align-dir-y . -1)
                 (text . ,ped)))
        (left-broken . ((attach-dir . ,RIGHT)
                        (text . ,cautionPed)
                        (padding . 0)))
        (right . ((Y . 0)
                  (attach-dir . ,LEFT)
                  (text . ,(markup #:draw-line (cons 0 1)))))
        (right-broken . ((padding . -0.2)
                         (text . #f))))
     \tweak padding #1.2
     \tweak direction #-1
     \tweak style #'line
     \startTextSpan
   #})

sustainSpanOff = \stopTextSpan

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
  h''' d, g a,
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
  h' d, g a,
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
  \ottava #1
  \set Staff.ottavation = #"8"
  as[ es' f b]  
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
  b!16[ as!] s8
  as16[ es!] s8
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
  b!16[ as!] s8
  as16[ es!] s8
  es16[ d] s8
  d16[ c] s8
  c16[ b] s8
  \cadenzaOff
  \stemNeutral
  \top
  \bar "|"
  \time 4/4
  r1
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
  \override Beam.positions = #'(-1 . -1.5)
  \repeat tremolo 8 {b32\fermata g\fermata}
  \bar ""
  \break
  %\omit Score.BarLine
  %\omit Score.SpanBar
  %\time 6/8
  \repeat tremolo 12 {b32 g}
  \repeat tremolo 12 {h32 g}
  \once \override Beam.positions = #'(-1 . -2)
  \repeat tremolo 12 {h32 fis}
  \repeat tremolo 6 {d'32 g,}
  \bar ""
  \break
  \once \override Beam.positions = #'(0 . -2)
  \repeat tremolo 12 {es'32 g,}
  \repeat tremolo 6 {d'32 g,}
  \repeat tremolo 6 {d'32 as}
  \repeat tremolo 6 {c32 as}
  \repeat tremolo 12 {
    \once \override Dots.dot-count = #0
    c32\fermata
    \once \override Dots.dot-count = #0
    as\fermata
  }
  \bar ""
  \break
  \repeat tremolo 12 {c32 as}
  \repeat tremolo 6 {h32 gis}
  \repeat tremolo 12 {dis'32 gis,}
  \override Beam.positions = #'(0 . -1)
  \repeat tremolo 24 {e'32 gis,}
  \bar ""
  \break
  \repeat tremolo 16 {e'32 gis,} s4
  \revert Beam.positions
  \repeat tremolo 8 {
    <gis e'>32\fermata
    \bot
    \stemDown
    <ais! dis>\fermata
  }
  \top
  <e gis e'>1\fermata
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
      <ces,,~ des^~>4 <ces!~ des!^~>1 <ces des>
    }
  >>
  es1~ es4 ces es des
  <<
    {
      s2.
      \stemDown
      <b''_~ es_~ f~ g~>4 q1
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
  <<
    {
      es16\sustainOn b'! es! f
    }
    \\
    {
      es,4
    }
  >>
  es'16 b'! es! f
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
  s8 b16[ as!]
  s8 as16[ es]
  s8 es16[ d]
  s8 d16[ c]
  \bot
  s8 c16[ b]
  s8\sustainOff b16[ as]
  s8 as16[ es]
  s8 es16[ d]
  s8 d16[ c]
  s8 c16[ b!]
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
  %\clef bass
  \stemNeutral
  des,16( ces b as ces b as ges8-.)\noBeam
  %\clef treble
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
      es'4 d8 d4 cis8 cis4 h8 h4 a8 a[ g]
    }
    \\
    {
      f4.\sustainOn
      e\sustainOn
      d\sustainOn
      c\sustainOn
      b!4\sustainOn
    }
  >>
  \clef bass
  b,,8
  <<
    {
      es8[ <b' g'> <es b'>]
    }
    \\
    {
      <
      \tweak #'duration-log #1
      es,,
      \tweak #'duration-log #1
      es'
      >4.\sustainOn
    }
  >>
  \clef treble
  <g'' es'>8[ <b g'> <es b'>]
  \stemDown
  <f g b f'>[\sustainOn <es g b es> <d g b d>]
  \stemNeutral
  <<
    {
      <c es as c>4 s8
    }
    \\
    {
      c8[\sustainOn <as b es as> <es as c es>]
    }
  >>
  \clef bass
  <c es as c>8[ <as b es as> <es as c es>]
  \once \override Stem.stencil = ##f
  <
  \tweak #'duration-log #0
  as,
  \tweak #'duration-log #0
  as'
  >2.\fermata
  <<
    {
      f'8[ <c' as'> <e c'>]
    }
    \\
    {
      <
      \tweak #'duration-log #1
      f,,
      \tweak #'duration-log #1
      f'
      >4\sustainOn s8
    }
  >>
  \clef treble
  <as'' d>8[ <c as'> <g' c>]
  <<
    {
      eis'4 dis8 dis4 cis8
    }
    \\
    {
      \dotsUp
      <gis h>4.\sustainOn <fisis ais>\sustainOn
    }
  >>
  <<
    {
      cis'4 h8
    }
    \\
    {
      \dotsUp
      \once \override NoteColumn.force-hshift = #-.6
      gis4.
    }
    \\
    {
      \voiceTwo
      fis4\sustainOn e8
    }
  >>
  \clef bass
  <<
    {
      e,,8[ h' e h']
    }
    \\
    {
      e,,2
    }
  >>
  ais'8[ fis gis e']
  \clef treble
  dis[ h cis h']
  ais[ fis gis e']
  dis[ h cis h']
  ais[ fis] s2 s1\sustainOn
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##t
  \override DynamicTextSpanner.style = #'none
  s1\mp s1*2 s1-\markup {\italic{poco cres}} s1*4 s1\f
  \once \override DynamicText.extra-offset = #'(-2.5 . -12)
  s1*23\ff
  s1-\markup {\italic rit.}
  \cadenzaOn
  s1 s s s
  \cadenzaOff
  s s
  \time 5/4
  s2 s2.
  \cadenzaOn
  s2
  \once \override TextScript.extra-offset = #'(0 . 10)
  s1*7-\markup {\italic {ad lib}} s4
  \once \override TextScript.extra-offset = #'(0 . 10.5)
  s1*5-\markup {\italic {ad lib}}
  \once \override TextScript.extra-offset = #'(-1.5 . 3)
  s2-\markup {\italic{dimin}}
  \once \override TextScript.extra-offset = #'(-1 . 8)
  s4-\markup {\italic rit.}
  \time 4/4
  s1\pp
  \time 8/4
  s1*2
  s2\pp s2
  s1-\markup {\italic{poco cres}} s1. s2.
  \once \override TextScript.extra-offset = #'(5 . 0)
  s1.-\markup {\italic{dimin}}
  s4.\p s1.-\markup {\italic{dimin}} s1*3\ppp
  \once \override TextScript.extra-offset = #'(0 . 4)
  s2-\markup {\italic{dim}} s1
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
  %\midi {}
}