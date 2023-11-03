\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Ручей (Этюд)"
  meter = "Allegro"
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override SpacingSpanner.strict-grace-spacing = ##t
    \override StaffGrouper.staff-staff-spacing.basic-distance = #16
  }
}
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 12/16
  \override Staff.TimeSignature.stencil = ##f
  \override DynamicLineSpanner.staff-padding = #3
  c16\p( b) f'( es) es( d) b'( as) ges( f) b,( as)
  <g c>_\markup { \italic { cresc. poco } }(
  <f b>) <as f'>( <ges es'>) <ces es>( <b d>)
  <c b'>( <b as'>) <b ges'>( <as f'>) <f b>( <es as>)
  <f as>( <es g>) <g d'>( <as c>) <g es'>( <b f'>)
  <d b'>( <f es'> <as f'> <g g'> <as as'> <b b'>\f)
  <<
    {
      r16 <as d>( <g c>
      \stemDown
      <g b> <d g> <c es>)
      \stemUp
      r h8-> <es, f d'>16^\markup { \italic { arph } } c' <b, b'>
    }
    \\
    {
      <es f b d>4.\sp <e as c>4 <d f>8
    }
    \\
    {
      \stemDown
      s4. s8 c16_~ c8.
    }
  >>
  \time 7/4
  \clef bass
  r16 d,_\markup { \italic { diminuendo } } es as
  \clef treble
  \change Staff = "lower"
  \stemUp
  g d' es
  \change Staff = "upper"
  as
  \stemNeutral
  g b c f es f g b
  \ottava #1
  \set Staff.ottavation = #"8"
  a! c d g f a b es <g, a d>4
  \ottava #0
  \time 4/4
  r4\pp^\markup{\raise #2 {Lento}}
  <<
    {
      \stemDown
      h,\(
      %\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
      \once\override Score.GraceSpacing.spacing-increment = #1.2
      \grace
      {
        ais16^( fisis
        \once \override NoteHead.X-offset = #.3
        \once \override Stem.X-offset = #.3
        \once \override Accidental.X-offset = #.3
        gis
        \once \override NoteHead.X-offset = #-.2
        \once \override Stem.X-offset = #-.2
        \once \override Accidental.X-offset = #-.2
        e dis
        \once \override NoteHead.X-offset = #.3
        \once \override Stem.X-offset = #.3
        \once \override Accidental.X-offset = #.3
        cisis
        \once \override NoteHead.X-offset = #1
        \once \override Stem.X-offset = #1
        \once \override Accidental.extra-offset = #'(.2 . 0)
        cis)\)
      }
      \stemUp
      g4..( dis16 ais'1)
    }
    \\
    {
      s2. r4 cis,8 d cis[ d] cis[ d]
    }
  >>
  \time 3/4
  <his dis>8 r <c g'> r <d a'> r
  \time 4/4
  <<
    {
      h'4^\markup{\raise #2 {T-po 1}}( a)
    }
    \\
    {
      \override DynamicLineSpanner.staff-padding = #3
      g4~\mf g16 <d d'> <g g'> <b b'>
    }
  >>
  <h h'>4( <a c a'>)
  <<
    {
      gis'4( fis eis e)
    }
    \\
    {
      gis16_\markup { \italic { cresc } } a, h dis
      fis e, h' a'
      eis dis, ais' cis
      e\ff cis, gis' a
    }
  >>
  <<
    {
      \override DynamicLineSpanner.staff-padding = #3
      \stemDown
      c'2\spp^\markup{\raise #2 {Lento}}\(
      \once\override Score.GraceSpacing.spacing-increment = #1.1
      \grace {
        h16^(c
        \once \override NoteHead.X-offset = #.4
        \once \override Stem.X-offset = #.4
        \once \override Accidental.X-offset = #.4
        ais h
        \once \override NoteHead.X-offset = #.4
        \once \override Stem.X-offset = #.4
        \once \override Accidental.X-offset = #.4
        a g
        \once \override NoteHead.X-offset = #.3
        \once \override Stem.X-offset = #.3
        \once \override Accidental.X-offset = #.3
        fis
        \once \override NoteHead.X-offset = #.5
        \once \override Stem.X-offset = #.5
        \once \override Accidental.X-offset = #.5
        f d
        \once \override NoteHead.X-offset = #.3
        \once \override Stem.X-offset = #.3
        \once \override Accidental.X-offset = #.3
        es
        \once \override NoteHead.X-offset = #-.3
        \once \override Stem.X-offset = #-.3
        \once \override Accidental.X-offset = #-.3
        c
      }
      \stemNeutral
      h!4..) fis16 b1\)
    }
    \\
    {s1 s4 e,8 f e[ f] e[ f]}
  >>
  \time 3/4
  <e a> r <fis h> r <eis cis'> r
  \bar "||"
  \cadenzaOn
  \override Beam #'breakable = ##t
  d'16\mf ^\markup{\raise #2 {Moderato}}[
  g,_\markup {\italic legato} a fis  h e,] a[d, cis' fis, fis' a,]
  d16[ g, a    fis! h e,] a[    d,        cis'!    fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 a    cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 h    cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 a    cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 g,   cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 cis  cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,] a[    d,32 
  \tweak #'duration-log #1 fis, cis''!16 fis,! fis'! ais,]
  d16[ g, ais! fis! h e,] ais![ d,        cis'!    fis,! fis'! ais,!]
  d16[ g, ais! fis! h e,] a[    d,32 
  \tweak #'duration-log #1 a    cis'!16  fis,! fis'! a,]
  d16[ g, a    fis! h e,]
  a'[  d, g a, fis' h,] e_\markup {\italic {diminuendo}}
  [ g, d' h fis! b]
  a[ d, g a, fis'! h,!]
  \stemUp
  e[
  \change Staff = "lower"
  g,
  \change Staff = "upper"
  d'
  \change Staff = "lower"
  h fis! b] a[ d, g a, fis'! h,!] e[ g, d' h fis! b] <d, d,>1^\ppp \fermata \bar "|."
}

lower = \relative c {
  \clef treble
  \key c \major
  \time 12/16
  \override Staff.TimeSignature.stencil = ##f

  r8 r  c''16( b) des( c) b( as) ges( f)
  f( es) des( c) <ces ges'>( <b f'>)
  \clef bass
  <b f'>( <as es'>) <as des>(
  <g! c>) <es c'>( <d b'>)
  <<
    {
      s4. r16 es'8~ es 8.
      s8. es16 f d~ d4.
    }
    \\
    {
      \stemUp
      es,,16^( a! b
      \stemNeutral
      f' g) c^( b) as( g) f( es b)
      as16\( es'^( c') g8.\) f16( g8) \times 3/4{b16 as d, f,}
    }
  >>
  \time 7/4
  es,16 b' f' b
  \stemDown
  es, b' f' b
  \stemNeutral
  es, as g c
  \clef treble
  d g f b c f es a b d es g f4\break
  \time 4/4
  \clef bass
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  cis,,,8( <gis' dis'>
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/64)
  <cis e> <dis ais'>)
  \revert Score.SpacingSpanner.strict-note-spacing
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \unset Score.proportionalNotationDuration
  e,,( h' <fis' gis> c')
  <<
    {
      \stemDown
      cis8 d! ais2.
    }
    \\
    {s2 fis}
    \\
    {
      \stemNeutral
      s2. h,4
    }
  >>
  \unset Score.proportionalNotationDuration
  \time 3/4
  <ais fis' ais>8 r <as es' b'> r <fis h e> r\break
  f16_( c' e g c4) c,,16( e a e' a h c f)
  fis_( e dis h gis dis h e,
  \ottava #-1
  \set Staff.ottavation = #"8"
  cis h eis, cis a4)\break
  \ottava #0
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  ges'8(
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  <des'' as'>[
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/64)
  <ges es'> <des' ges>])
  \revert Score.SpacingSpanner.strict-note-spacing
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \unset Score.proportionalNotationDuration
  b,,( <des' a'>[ <f ges'> <des' f>])
  <<
    {
      \stemDown
      e8( f!) cis2.
    }
    \\
    {s2 b}
    \\
    {
      \stemNeutral
      s2. g4
    }
  >>
  %\unset Score.proportionalNotationDuration
  <fis d'>8 r <e g dis'> r ais r
  \break
  \cadenzaOn
  \override Beam #'breakable = ##t
  r2
  e'16[ h d g, a fis] h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis]\bar "" h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis] h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis]\bar "" h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis] h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis]\bar "" h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis] h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis]\bar "" h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis] h[ e, g d fis a,32] 
  \tweak #'duration-log #1 d,
  e''16[ h d g, a fis]\bar "" h[ e, g d fis a,]
  d,\breve*1/2->\bar""
  s1*2
}

\score {
  \new PianoStaff
  \with {
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}