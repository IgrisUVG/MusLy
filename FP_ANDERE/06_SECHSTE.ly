\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "6" }
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
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

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key b \major
  \time 3/4
  \override TupletBracket #'bracket-visibility = ##f
  <<
    {
      f''2.~( f8 es4. d4 cis2) r4
      c!8( d4. f4 g2.~ g8 ges2) f8~(
      f2. g) f~( f4 e4. d8~ d d4 es!4. c2~ c8 d~ d2.)
      d4.( es4 fis8~ fis4 es!4. e8~ e r g4 ges f4. es!4 des8 d!)
    }
    \\
    {
      r8 <a b d>4.<g b d>4<g b c>4.<g as c>
      r8 <f as b>4.<f g b>4<es f as>4.<d g b>
      r8 <as' c es>4.<g des' f>4<f c' es>4.<f ces' d>4<g! b d>8~
      q4. <es f b c> r8 <a d es>4.<g c es>4 r8 <a c d>4.<a h d>4
      r8 <a c d>4.<g h c>4 r8 <f g b!>4. q4
      <es f g><es g as>4.<es f a>8<d f a>4<f g b>4.<f a b>8
      r8 <e fis a>4.<fis a b>4<e a h>4.<fis g h>
      r8 <e as b!>4.<g! b c>4 r8 <g a c>4.<ges a c>4 s8
    }
  >>
  b8([ c d \times 2/3 {es f fis]}
  <b, c g'>4)<as c ges'><g b f'>~ q4. <as d g>4<b c f b>8~ q
  <<
    {
      as'4 g4.
    }
    \\
    {
      <b, d es>4.<b d>4
    }
  >>
  <g b d g>4.<es' b' c es>4<d f as d>8~ q <d f g d'>4<c es g c><as c es as>8
  <g h es g>4.<h! d f b!>4<a! d es a!>8~ q <as c f as>2<b c es b'>8
  <f a! c f>4.<es a b es>4<d g b d>8~ q <b' c f b>2 r8 s2.
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key b \major
  \time 3/4
  \override TupletBracket #'bracket-visibility = ##f
  b,,8 g'''( f d f, b,
  c,) es''( b g es c
  d,) es''( d b as d,
  es,) c''( b g es b
  f) f''( es c as es
  f,) es''( d! as f b,
  es,) f''( es b g f
  f,) f''( c a es c
  d,) f''( c f, d a
  c,) g'''( c, a g e
  f,)[ es''!( b g \times 2/3 {d8 b es,~]}
  es) c''( as es b as
  g)[ b'( \times 2/3 {a!8 g f} d b]
  a)[ d'( \tuplet 3/2 4 {
    cis8 a es d a fis]
    d)[ d''( h
  } a fis d g,]
  \stemDown
  c,)[ des''( b g \times 2/3 {e8 c b]}
  a) es''( c a f c
  b)[ g''( f d \times 2/3 {c8 a f]}
  <es des'>4)<f a! es'><b, a' des>
  <<
    {
      s4 <es' g b><b d g>
      s <es g b><b es g>
      s <es g as><g, es' f>
      s <es' f as><as, es' g>
      s <d f as><g, d' es>
      s <es' as b><g, es' g>
      s <b d f><f c' d>
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      s \tuplet 3/2 4 {r8 <b c d g>4 r8 <d, g a b d>4}
      <f g a c>2.
    }
    \\
    {
      \override TupletBracket #'bracket-visibility = ##f
      es,8 g''( es d b es,
      c)[ g''( es c \times 2/3 {b g c,]}
      as) f''( es c g es
      f,) f''( es c as f
      g,) f''( d h g d
      as)
      \once\override Slur.positions = #'(1 . -2.5)
      g''( es c g es
      d) d'( b g f b,
      f)[ g''( \tuplet 3/2 4 {f b, a f d b]}
      b,2.)
    }
  >>
  \bar "|."
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}