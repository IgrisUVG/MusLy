\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsFier = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \partial 16
  c''16
  <<
    {
      \stemDown
      d c f a,~
      \stemNeutral
      a b8.~ b16 as f g e g <b, d> <a f'~>
      f'4~ f16<f b!>8.
    }
    \\
    {
      s2 d8[ c] <b c>  f a16 b h c~ c h!8.
    }
    \\
    {
      \voiceOne
      \hideNotes
      s2. s8. a16_~ a4 s4
      \unHideNotes
    }
  >>
  <b! d g>2
  \time 3/4
  r16. f''32\noBeam d16.c32 a16. f32~
  f8\noBeam a16.[ as32]~
  \omit TupletNumber
  \omit TupletBracket
  \times 2/3 {
    as16 f d!
  }
  \time 4/4
  <<
    {
      f2. r4
    }
    \\
    {
      <a, c>4~ q16<b des><h d><c es>~ q4 r
    }
  >>
  <<
    {
      r16 es f es
      \times 2/3 {ges8 f es}
      \times 2/3 {ges!8 fes eses}
      \times 2/3 {fis8 e d!}
      \repeat unfold 2 {\times 2/3 {h'4 a g}}
    }
    \\
    {
      s16<as, c>8. des4 <g,! ces><a c>
      <cis g'>2\arpeggio<d f>
    }
  >>
  <<
    {
      <c_~ e~>4 q16<cis eis><d fis><es_~ g~> q8 as-> ges[ f]
    }
    \\
    {
      s2 s8 es4 d8
    }
  >>
  <c f>2. r8. <a' c>16
  <b d><g c><a f'><fis a> f b <d, g> d
  <b f'><c as'><c f><b g!><b e><as d g><b d><a f'>~
  q <b fis'><h g'><c gis'>
  <<
    {
      s2 s8. d'16
    }
    \\
    {
      \voiceOne
      <cis, a'>2.
    }
    \\
    {
      \voiceTwo
      r8 h~ h2
    }
  >>
  <<
    {
      c'16 a g f d f as b c f,8 g16~ g4 f
    }
    \\
    {
      f8 c b4 c~ c8 h16 b a4
    }
  >>
  r16 <f' b!>8.<es a>8 c' es c
  <<
    {
      h g fis e d!4 f2
    }
    \\
    {
      fis4 c1
    }
  >>
  <<
    {
      es8 d e16 d f8~ f16 e as <c, g'>~ q8 <d a'>16<f b>
    }
    \\
    {
      b,4. r8 d16 c b8~ b4
    }
  >>
  <c f a>2\arpeggio<c e f a>\arpeggio<c es ges h>2.\arpeggio
  c'16[ d]
  %\override TupletNumber #'transparent = ##f
  %\override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {f16 es d}
  c4 f,16 f' d c b4 d16 c as f
  e4 b16 des es e d4 d16 e g a
  b4 d16 c as f e4 b16 des es e
  d!4 d16 c' a g fis4 fis16 fis' es\fermata c
  \bar "||"
  <<
    {
      \stemDown
      d c f a,~
      \stemNeutral
      a b8.~ b16 as f g e g <b, d> <a f'~>
      f'4~ f16<f b!>8.
    }
    \\
    {
      s2 d8[ c] <b c>  f a16 b h c~ c h!8.
    }
    \\
    {
      \voiceOne
      \hideNotes
      s2. s8. a16_~ a4 s4
      \unHideNotes
    }
  >>
  <b! d g>2
  \time 3/4
  r16. f''32\noBeam d16.c32 a16. f32~
  f8\noBeam a16.[ as32]~
  %\override TupletNumber #'transparent = ##t
  %\override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {
    as16 f d!
  }
  \time 4/4
  <<
    {
      f2. r4
    }
    \\
    {
      <a, c>4~ q16<b des><h d><c es>~ q4 r
    }
  >>
  <<
    {
      r16 es f es
      \times 2/3 {ges8 f es}
      \times 2/3 {ges!8 fes eses}
      \times 2/3 {fis8 e d!}
      \repeat unfold 2 {\times 2/3 {h'4 a g}}
    }
    \\
    {
      s16<as, c>8. des4 <g,! ces><a c>
      <cis g'>2\arpeggio<d f>
    }
  >>
  <<
    {
      <c_~ e~>4 q16<cis eis><d fis><es_~ g~> q8 as-> ges[ <d f>]
    }
    \\
    {
      s2 s8 es4 s8
    }
  >>
  <c f>1
  \bar "|."
  %\override Score.RehearsalMark.self-alignment-X = #RIGHT
  %\override Score.RehearsalMark.direction = #DOWN
  %\mark \markup {\small{(TEXT)}}
}

%%%%%%%%%%% LH %%%%%%%%%%%%
linksFier = \relative {
  \clef bass
  \key f \major
  \time 4/4
  \partial 16
  r16
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      s4 s16 b8 g16 s4 g8 d16 c~ c cis d es es d8.
    }
    \\
    {
      <f c'>8.<c_~ a'~ h^~>16 q16 <d b'>8.
      <b f'><c e>16~ q8 f,~
      f4 fis16 g8.
    }
  >>
  <c, g' c>2
  \stemUp
  f8[
  \stemNeutral
  <a' es'>]<b d><a es'><b d>\noBeam
  \omit TupletNumber
  \omit TupletBracket
  \times 2/3 {
    <f c'>16<f as h d><f b des>
  }
  <<
    {
      s2 r8 as r4
    }
    \\
    {
      <f, f'>2. r4
    }
  >>
  <es ges'>4<des' as'><des f><a! d>
  <a e'>2\arpeggio <g d' h'>\arpeggio
  <c g' h>4~ q8. <b' des>16~ q8 <a! c!>4 <b, f' a>8
  <f c' a'>2. \clef treble r8. <es'' ges>16
  <d f><des fes><c f><h d> \clef bass <b d><a des><as ces><g b>
  <f as><es ges><d a'><cis e>
  <<
    {
      <c g'><h f'><d f><c f>~
      q <cis fis><d g><dis gis> a' g8.~ g2
    }
    \\
    {
      s8 f,~ f g16 gis <a e'>2.
    }
  >>
  \time 5/4
  <<
    {
      s2 a'4 s2
    }
    \\
    {
      \voiceOne
      c,16 d g f d b'8 as16
      \once \override NoteColumn.force-hshift = #.3
      f es d b~ b8 d c4
    }
    \\
    {
      \voiceTwo
      f,8 a as16 g8. as g16~ g8 f a4
    }
  >>
  \time 4/4
  <g d' h'><fis c' a'>2<e! d' g>4<dis a' fis'>
  <<
    {
      \voiceTwo
      s4 \change Staff = RH f'!2 \change Staff = LH
    }
    \\
    {
      \voiceOne
      <g, e'>4 a2
    }
    \\
    {
      \voiceTwo
      c,2 f!4
    }
  >>
  <<
    {
      <f' as>4. as8 r8. g16~ g8 f
    }
    \\
    {
      b,4 c16 d es f b g f e~ e c b <g d'>
    }
  >>
  <<
    {
      \autoBeamOff
      \crossStaff {a'2}
      \autoBeamOn
    }
    \\
    {
      <f, c' f>2\arpeggio
    }
  >>
  <g d' b'>\arpeggio <f d' b'!>2.\arpeggio r4
  f16 c' a'\change Staff = RH es'\change Staff = LH s4
  f,,16 d' b'\change Staff = RH  f'\change Staff = LH s4
  c,,16 b' e\change Staff = RH g\change Staff = LH s4
  g,16 f' b\change Staff = RH c\change Staff = LH s4
  f,,16 d' b'\change Staff = RH f'\change Staff = LH s4
  c,,16 b' e\change Staff = RH g\change Staff = LH s4
  fis,16 c' d a' s4 fis,16 es' a c s4
  <<
    {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      s4 s16 b8 g16 s4 g8 d16 c~ c cis d es es d8.
    }
    \\
    {
      <f c'>8.<c_~ a'~ h^~>16 q16 <d b'>8.
      <b f'><c e>16~ q8 f,~
      f4 fis16 g8.
    }
  >>
  <c, g' c>2
  \stemUp
  f8[
  \stemNeutral
  <a' es'>]<b d><a es'><b d>\noBeam
  %\override TupletNumber #'transparent = ##t
  %\override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {
    <f c'>16<f as h d><f b des>
  }
  <<
    {
      s2 r8 as r4
    }
    \\
    {
      <f, f'>2. r4
    }
  >>
  <es ges'>4<des' as'><des f><a! d>
  <a e'>2\arpeggio <g d' h'>\arpeggio
  <c g' h>4~ q8. <b' des>16~ q8 <a! c!>4 <b, f' a>8
  <f c' a'>1
}