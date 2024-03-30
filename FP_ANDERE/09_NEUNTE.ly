\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "9" }
  %meter = "Lento grave"
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
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
pocoCr =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "p o c o   a   p o c o   c r e s c.")

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef bass
  \key f \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento grave"
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  r8 as4 as as as8~ as\noBeam
  \clef treble
  <des as'><f b>\noBeam<ges des'>4<g ces><as ces>8~
  q <b d><f des'>\noBeam<es ges>4<des ces'>8<d as'>4
  <es ges>8<g des'>4<ges d'>4.<as f'>4
  \repeat unfold 2 {<as, f'>2 q <es' g>1}
  <des as'>8<fes b>4<ges des'><g ces><as ces>8~
  q
  <<
    {
      des
    }
    \\
    {
      b16 g
    }
  >><f des'>8<es ges>4<des ces'><d as'>8~
  q <es ges>4<g des'><ges d'><as f'>8 R1
  r4 f8 c'
  <<
    {
      as'2
    }
    \\
    {
      f4. e8
    }
  >>
  <heses heses'>4 r es8 heses' <es ges>4
  <<
    {
      r4 <b des> as2
    }
    \\
    {
      b,8 f'4 c8 f4. e8
    }
  >>
  <es! es'!>2. r4
  \clef bass
  r r8
  \ottava #-1
  \set Staff.ottavation = #"8"
  es,,,,32 d es d~ \tweak #'duration-log #1 d4
  \ottava #0
  \clef treble
  \omit TupletBracket
  \times 8/13 {r32[ g'''( as a b h c des c h b a as)]}
  r2 b8( <e as>)->
  \clef bass
  r8
  \ottava #-1
  \set Staff.ottavation = #"8"
  es,,,,32 d es d~ \tweak #'duration-log #1 d4
  \ottava #0
  \clef treble
  r64[ ges'''( g as a b h c des c h b a as g ges)] r4
  \tuplet 3/2 4 {
    r8[ <ges b eses f>-^ q-^]
    q-^[ r q-^] q-^[ q-^ r] r[ q-^ q-^]
  }
  q16-^ r8.
  <a h eses as!>1-^
  \bar "|."
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key f \minor
  \time 4/4
  \ottava #-1
  \set Staff.ottavation = #"8"
  <f,, c' f>4<c' es><ces ges'><b g'>
  <heses des><as ges'><g ces><ges e'>
  <f c'! f>4<c' es><ces ges'><b g'>
  <heses des><as ges'><g ces><ges e'>
  \repeat unfold 2 {
    <f c' f>4<c' es><ces ges'><b g'>
    <heses des><as ges'><g ces><ges e'>
  }
  \repeat unfold 6 {
    <f c' f>4<c' es c'><ces ges' ces><b g' b>
    <heses des heses'><as ges' as><g ces g'><ges e' ges>
  }
  <f c' f>1-^
  \ottava #0
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\fontsize #-2 {&glqq;Когда жо будет дождь?&elqq;}}
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1*8\p s1*12\pocoCr s1\ff
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