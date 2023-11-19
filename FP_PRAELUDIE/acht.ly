\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsAcht = \relative e'' {
  \clef treble
  \key e \minor
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  %\override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \partial 4 h'4(
  \once \omit Staff.TimeSignature
  %\override Staff.TimeSignature.stencil = ##f
%%%%%%%%%%%%%%%%RTTT
  \time 3/4
  e4.->)
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      \omit TupletBracket
      \stemDown
      \tuplet 3/2 8 {d16( e d c-> d c} h32 a g fis
      \once \omit Staff.TimeSignature
      \time 4/4
      \stemUp
      f2->~ f8) \times 2/3 {ges16( f e)}
      \stemDown
      ges32->( f e d c h a g! fis!1)
    }
    \\
    {
      s4. r8. <f as>16 q4 r2 s1
    }
  >>
%%%%%%%%%%%%%%%%TTTR
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  <fis a d fis>4(<g c es g> <fis a d fis>8<a c f a>4 <as des f as>8)
  <fis! a d! fis!>4(<g c es g> <fis a d fis>8<a c f a>4 <as des f as>8)
  \repeat unfold 2 {<g b es g>8(<a c f a>4<as des f as>8)}
  <g h! d! g>\noBeam<g a cis g'>(<fis a d fis>->)<a h dis a'>(<gis h e gis>)
  <g a cis g'>(<fis a d fis>)<a h dis a'>(<gis h e gis>)<h cis eis h'>(
  <ais cis fis ais>)<des es g des'>(<c es as c!>)<es f a es'>(<d f b d>)<es f a es'>(
  <d f b d>)<des es g des'>(<c es as c>)<h cis eis h'>(<ais cis fis ais>)
  <a h dis a'>(<gis h e gis>)<g a cis g'>(<fis a d fis>-.) r <fis h d fis>-. r
  <h fis' h>4-. r
  \once \omit Staff.TimeSignature
  \time 3/4
  <e e'>4.-- \tuplet 3/2 8 {<d d'>16( <e e'> <d d'> <c c'>-> <d d'> <c c'>}
  <h h'>32 <a a'> <g g'> <fis fis'>
  \once \omit Staff.TimeSignature
  \time 4/4
  <f f'>2->~) <f f'>\fermata
  s4 \tuplet 3/2 8 {d16 g h, h' d g, g' h d, d' g h,}
  <h d h'>16(<a d a'>8<g d' g>16
  <g es' g>4)\tuplet 3/2 8 {es,16 g c, c' es g, g' c es, es' g c,}
  <c es c'>16(<b es b'>8<a es' a>16
  <g es' g>4)\tuplet 3/2 8 {es,16 g b, b' es g, g' b es, es' g b,}
  <b es b'>16(<as es' as>8<g es' g>16
  <g d' g>16<e! g e'!>8<d g d'>16\stemUp<h g' h>8) s\stemNeutral
  h'32 d g, a e g d e h d a h g a e g\stemUp d e h d\change Staff = LH a h g a fis4
  \change Staff = RH \stemNeutral
  fis'32 gis d' h fis' gis d' h fis gis d' h
  \ottava #1
  \set Staff.ottavation = #"8"
  fis' gis d' h
  \times 2/3{<e, a e'>8<d a' d><c e c'>}<h d h'>16<g d' g>8<e h' e>16
  \ottava #0
  \tuplet 3/2 4 {<e c' e>8<c g' c><a e' a><g d' g><e h' e><d h' d>}
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      \omit TupletBracket
      \tuplet 3/2 8 {h'16 g' d e g h,}
    }
    \\
    {
      g8\arpeggio s
    }
  >>
  \tuplet 3/2 8 {b16 g' d es g b, a g' d c g' a,-.}<a e'>8(<h d>)
  <<
    {
      h2~( h16 d e g h8 a~ a4 g e) <e, d' e>8_(<a d>)
      h2( d16 e g a c8 h~ h4. a8 g d4 a8)
    }
    \\
    {
      g8 e d16 e g a~ a8 h d4 c8 h a4 g s
      g8 e d16 e g a h8 d e4~ e8[ d] c[ h] a[ g] e[ d]
    }
  >>
  b'4 b2~
  \set subdivideBeams = ##f
  b16 c( d e fis4)
  \set subdivideBeams = ##t
  h( e4.) \tuplet 3/2 8 {d16( e d c d c} h32 a g fis f2.)
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(2 2 2)
  <<
    {
      \stemDown b4(\stemUp s a s g fis)
      h!4.~( \times 6/8 {h16 h, cis d e fis a g}
      \stemDown fis2 e4 d)
    }
    \\
    {
      s4 g8[ fis] a[ d,] as'[ g^~] g[ a,~] a4
      as4. a16\rest s16 s8 s1
    }
  >>
  fis'2~(fis4 d g cis,2.)
  b8[( d e fis g a] as[) g( d a) fis'( cis] as[) b( h cis d e]
  fis4) e8[( d dis e]) fis( d fis4)
  <<
    {
      \stemDown e8( g h4 a g\stemUp fis2.) g4( fis e d2) cis4(
      h! a g fis e d fis4.) a(
      \once \omit Staff.TimeSignature
      \time 9/4
      \stemDown
      h4 e4.)
    }
    \\
    {
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1 8)
      \set Timing.beatStructure = #'(2 2 2)
      s4 s2. <fis, a d>8 q q <fis b d> q q <g h! d><g h d> q q <fis a d> q
      <e g b> q q q <d fis a> q <d f a><e g><es g><d fis><fis des><c e>
      <h e><b d><a d><as c><g c><fis h> s4. s s4 s4.
    }
  >>
  \shape #'((0 . -4) (0 . 3) (0 . 0) (-0.5 . -14)) Slur
  \tuplet 3/2 8 {d''16[( e d] c[ d c} h32 a g fis]
  \tuplet 3/2 8 {<d f>16[ e d]\stemUp c[ d c}\change Staff = LH h32 a g fis!]
  \stemNeutral
  \tuplet 3/2 8 {<d f>16[ e d] c[ d c} h32 a g fis!] f2)\change Staff = RH
  \time 4/4
  <h' e a>8-. r4 q4.-- <d g c>8<cis fis h>~ q2 r
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Всё равно будет дождь )}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksAcht = \relative e {
  \clef bass
  \key e \minor
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  %\override TupletNumber #'transparent = ##t
  \omit TupletBracket
  \partial 4 h'4(
  %\override Staff.TimeSignature.stencil = ##f
  \once \omit Staff.TimeSignature
%%%%%%%%%%%%%%%%LTTT
  \time 3/4
  e4.->)
  <<
    {
      s4. r8. <as, c>16 <as ces>4 r2 s1
    }
    \\
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      \omit TupletBracket
      \stemDown
      \tuplet 3/2 8 {d16( e d c-> d c} h32 a g fis
      \once \omit Staff.TimeSignature
      \time 4/4
      f2->~ f8) \times 2/3 {ges16( f e)}
      ges32->([ f e d] \stemUp c[ h a g!] fis!1)
    }
  >>
%%%%%%%%%%%%%%%%TTTL
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \repeat unfold 2 {<a a'>4( <g g'><fis fis'><f f'>)}
  \repeat unfold 2 {<es es'>4->~ <es es'>16 <des des'><des des'>8->}
  <d! d'!>8 r4 <h h'>8( <e e'>) r4 <h h'>8(
  <e e'>) <cis cis'>( <fis fis'>) <es es'>( <as as'>) <f f'>( <b b'>) <a a'>(
  <b b'>) r <as as'> r <fis fis'> r <e e'> r
  <d d'>-. r <fis' h d>-. r <h dis>4-. r
  \once \omit Staff.TimeSignature
  \time 3/4
  <e, e'>4.-- \tuplet 3/2 8 {<d d'>16( <e e'> <d d'> <c c'>-> <d d'> <c c'>}
  <h h'>32 <a a'> <g g'> <fis fis'>
  \once \omit Staff.TimeSignature
  \time 4/4
  <f f'>2->~) <f f'>\fermata
  \tuplet 3/2 8 {g16 d' h g' h d,} s2
  \clef treble
  <g' h g'>16(<fis h fis'>8<e h' e>16)
  \clef bass
  \tuplet 3/2 8 {g,,16 es' c g' c es,} s2
  \clef treble
  <g' c g'>16(<f c' f>8<es c' es>16)
  \clef bass
  \tuplet 3/2 8 {g,,16 es' b g' b es,} s2
  \clef treble
  <g' b g'>16(<f b f'>8<es b' es>16)
  \clef bass
  g,,32 h! e! d g a d h
  \change Staff = RH e g h a d e a g\change Staff = LH s4
  h,,32 d a h g a e g \stemDown d e h d a h g a
  fis gis d' h  fis' gis d' h s2
  \clef treble
  \stemNeutral
  \times 2/3{<c' a' c>8<h e h'><a c a'>}<g h g'>16<e h'e>8<d g d'>16
  \tuplet 3/2 4 {<c g' c>8<a e' a><g e' g>\clef bass<e h' e><d h' d><h g' h>}
  <g d' h'>\arpeggio r r2.
  <d' e h'>8 g,4 <g' h d e>8 e,4. <h'' c e g>8~
  q a,( g4)<c, c'>8<h'' c e g> <g, d' h'>4
  <d' e h'>8 g,4 <g' h d e>8
  <<
    {
      r4. <h c e g>8~ \stemDown q[ <g h d e>]
    }
    \\
    {
      e,2 s4
    }
  >>
  <e' g h c>8[<d e g h>]<h d e g>[<g h d e>]<e g h c>[<d e g h>]
  <g d' b'>4 <fis' b d>2
  \clef treble
  \set subdivideBeams = ##f
  r16 c'( d e fis gis b c)
  \set subdivideBeams = ##t
  h4( e4.) \tuplet 3/2 8 {d16( e d c d c} h32 a g fis f2.)
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(3 3)
  <<
    {
      \voiceOne
      s2. s8 c' b s g fis s g f s4.
      s2.*5 s8 c' b s g fis s g f s4. s2.*3
    }
    \\
    {
      \voiceThree
      h8\rest <fis a b d>4 h8\rest <fis a d>4 h8\rest <d, g>4 h'8\rest <a, cis>4
      h'8\rest <as, h!>4 h'8\rest <a, cis d>4
      h'8\rest <d, fis h>4 h'8\rest <d, fis g>4h'8\rest <d, fis>4
      h'8\rest <e, fis cis'>4 h'8\rest <d, h'>4 h'8\rest <d, e g>4
      h'8\rest <d, fis>4 h'8\rest <c,! d f!>4
      h'8\rest <fis a b>4 h8\rest <fis a d>4 h8\rest <d, g>4 h'8\rest <a, cis>4
      h'8\rest <as, h!>4 h'8\rest <fis, a cis d>4
      h'8\rest <d, fis h>4 h'8\rest <d,! fis g>4h'8\rest <d, fis>4
      h'8\rest <e, fis cis'>4 h'8\rest <d, h'>4 h'8\rest <d, e g>4
      \clef bass
    }
    \\
    {
      \voiceTwo
      b4. a g fis f e g h a ais h b a fis
      b4. a g fis f e g h a ais h b
    }
  >>
  d,4. b' g h! e, a c h a g
  <<
    {
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1 8)
      \set Timing.beatStructure = #'(3 3)
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \times 6/8 {fis16 a h d e d h a}
      \times 3/4 {fis8 h\change Staff = RH \stemDown d fis}\change Staff = LH
      \once \omit Staff.TimeSignature
      \time 9/4
    }
    \\
    {
      fis,4. fis
    }
  >>
  s2.*3
  <e, e'>8-. r <e e'>4.-- <e e'>
  <<
    {
      h'8 r4. r4 d8 c
    }
    \\
    {
      e,4. e~ e4
    }
  >>
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicAcht = {
  \override Hairpin.to-barline = ##f

}