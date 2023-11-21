\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "3" }
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #30
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #30
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key b \major
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \set Staff.printKeyCancellation = ##f
  <<
    {
      a'4( b c es2 d4) <g,! ces>
    }
    \\
    {
      \omit TupletNumber
      \omit TupletBracket
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \times 2/3 {
        f16 cis d e h c f h, c g' d es b' e, f as d, es
        a! cis, d fis c des g a, b f' b, h c' c, cis b' cis, d
        des c des
      }
      es32 fes as ces
    }
  >>
  \once\override TrillSpanner.extra-offset = #'(0 . -3)
  d!4~\startTrillSpan (
  \times 8/12 {d32\stopTrillSpan cis d f gis a b c d es e f}
  \endSpanners
  fis2.)\startTrillSpan
  \break
  <<
    {
      es,4 f! g b2 a4 f2 r4
    }
    \\
    {
      \omit TupletNumber
      \omit TupletBracket
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \times 2/3 {
        c16 a b d! fis, g es' g, as c as a es' a,b e fis,! g
        f' h, c es gis, a d fis, g c a b cis d, es d' es, e
        d' e, f b cis, d h' dis, e c'! d, es d' e, f a fis g
      }
    }
  >>
  <b d g>2<es a c>4
  <<
    {
      b'2. d2 s4 s2.*5
    }
    \\
    {
      \override Beam.breakable = ##t
      <e, g>8.<d~ f^~>16 q8<b~ es^~> q16<a d>8.
      r16 b'^( g f es d c b
      \stemUp
      a g f es
      f[ a c] b[ d c] g'[ f es d c] a[
      b] e,[ f] h[ c g] b[ d, es] e[ f] c
      cis[ f, b] g[ b d es f] fis[ g] b[ a
      c h fis g] b[ f cis] d[ a' c f,] as[
      g e] h'[ a! f] g[ c gis b]
      \stemDown
      es[ a, cis])
    }
  >>
  \bar "||"
  d2 g4~ g2 gis4 a8 b a g e f ges f cis d a b h c es d a' g
  \break
  f2 fis4 g2 fis4 c'2. b~ b4 es, f
  \break
  fis2 g4 a2. b~ b b4 r2
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key b \major
  \time 3/4
  \set Staff.printKeyCancellation = ##f
  <<
    {
      b,4 as <d, d'>
    }
    \\
    {
      b'16 g' f d as g' es c d,<g'b><fis c'><d g>
    }
  >>
  <h es><b d><g c!><es b'>
  <<
    {
      f,4 b
    }
    \\
    {
      f16 g'' es a, b, <es' g a b><d g a b><fis g a b>
    }
  >>
  <ces, ges' es' ges>4
  \override Staff.Clef.space-alist.next-note = #'(extra-space . 0.1)
  \clef treble
  r16 <as''' ces><ges b><f a><e gis>4
  \clef bass
  \omit TupletNumber
  \omit TupletBracket
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \times 2/3 { d,,16 a' fis' }
  \clef treble
  \times 2/3 { b es a }
  <<
    {
      b8 ces d4
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      b32 fis eis fis ces' f, e f
      \times 8/9 {d'32 fes, es fes ges as b ces des}
    }
  >>
  \set subdivideBeams = ##f
  r8 \clef bass g,,! <f a><es b'><d c'>4~
  q16 <c b'><b a'><a f'>
  <<
    {
      <es es'>4 f b
    }
    \\
    {
      es,16 g' d b f g' es a, b g' f d
    }
  >>
  c16 b! g f e es d c b es f d' f a
  \clef treble
  b e f gis a d r f_( cis8 c16 b8 a16 g8 f16 d
  es g f es d c
  \clef bass
  \override Beam.breakable = ##t
  b g f es c b a[ c d es f g] f[ g b a es f
  g] ges[ f fes es b d] c[ f b, es e
  f] d[ es e f] es[ c] d[ des c b] es[
  a, b! c] g[ ges f e] es[ f g b d]
  es[ g f] es![ d c] b[ a g ges f es])
  d4 <b'' f'>2<b, f' d'>4 c' a <f, f'><es' a c>2
  <<
    {
      <b' d>4 b g!
    }
    \\
    {
      es2 s4
    }
  >>
  \revert Staff.Clef.space-alist.next-note
  fis4 f es d \clef treble <as'' b d>2
  <<
    {
      d4 des2 g ges4
    }
    \\
    {
      <g, b>2.<a es'>
    }
  >>
  <<
    {
      f'2.
    }
    \\
    {
      es4 d <as c>
    }
    \\
    {
      \voiceFour
      b2 s4
    }
  >>
  <<
    {
      es4 d des
    }
    \\
    {
      <g, b>2 s4
    }
  >>
  <<
    {
      <d c'>2.
    }
    \\
    {
      \once\override NoteColumn.force-hshift = #1.7
      b'4 a2
    }
  >>
  <<
    {
      r4 d b b des as
    }
    \\
    {
      <d, g>2.<des ges>2 s4
    }
  >>
  <<
    {
      g b c d
    }
    \\
    {
      f,2.~ f4
    }
    \\
    {
      \voiceTwo
      \stemDown
      \once\override NoteColumn.force-hshift = #.7
      d2 c4 b
    }
  >>
  r2
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