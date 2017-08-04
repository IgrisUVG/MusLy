\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
voiceA = \relative {
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegretto"
  r8. e''16 cis'8 cis( s16*7 cis8) h a h16~
  h8.[ e,16]~ e4 cis'16 cis cis8.->
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  h-> a-> h-> s4 e,8.[ e8] e\noBeam cis' a4 a8 a h16~
  h a8.~ a4 s16*3
  \stemNeutral
  a,16 cis! f cis! r h cis! e f g a~
  \override Beam #'breakable = ##t
  a4~ a32
  \ottava #1
  \set Staff.ottavation = #"8"
  cis d e a cis d e fis a fis e d[ cis a f] d c
  \ottava #0
  gis f d[ cis!] r4 r16. e32 f! g
  a4~\startTrillSpan a32\stopTrillSpan
  ais h his cis d dis e eis fis g gis
  a[ ais gis g] fis eis e dis d cis c h
  ais a gis g fis eis e dis d cis c h
  a( fis e d cis e a cis
  \ottava #1
  \set Staff.ottavation = #"8"
  e a cis e a e cis a)
  fis([ a d fis a d)]\bar ""
  c([a f c] a'[ f c a] f'[ c
  \ottava #0
  a f] c'[ a f c)]
  h([ gis e
  \change Staff = LH
  h gis e)]
  \shape #'(
             ((0 . 0) (1 . 6) (0 . -16) (0 . 0))
             ((0 . 1) (0 . 0) (0 . 3) (0 . 0))
             ) Slur
  a,( cis! e a
  \change Staff = RH
  cis e a cis e, a cis e a, cis e a cis, e a cis
  e, a cis e a e cis a e' cis a e cis' a e cis
  a' e cis a e' cis a e cis' a e cis a' e
  \change Staff = LH
  cis a
  \change Staff = RH
  e' cis
  \change Staff = LH
  a e cis' a e cis)
  \change Staff = RH
  r8. cis'64_( e a cis e32 cis a e d8.)
  c64_( f a c f32 c a f e8_~ e16)\noBeam
  cis64_( e a cis e32 cis a e d8.)
  c64_( f a c f32 c a f e2.)
  \bar "||" \break
  \key a \minor
  \override TupletBracket #'bracket-visibility = ##f
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(2 2 2 2 2 2 2 2 2 2 2)
  s8 c64 es fis h c es fis h
  \change Staff = LH
  \times 2/3 {g,32 b des} e!64
  \change Staff = RH
  f as h c h as f
  \change Staff = LH
  \times 2/3 {e32 des b}\bar ""
  g64 b des e
  \change Staff = RH
  f fis g as a b h c cis d dis e
  f fis g gis a h as g
  <<
    {
      ges f e es d des c h
    }
    \\
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 16)
      \set beatStructure = #'(2 2 2 2 2 2 2 2 2 2 2)
      c,, f as h c f as h
    }
  >>
  \bar ""
  <<
    {
      \stemDown
      <a c es! gis>4\arpeggio
    }
    \\
    {
      \set stemLeftBeamCount = #4
      s64
      \ottava #1
      \set Staff.ottavation = #"8"
      a' b h c cis d es d cis c h b a as g
    }
  >>
  ges f e es
  \ottava #0
  d des c h
  \repeat unfold 4 {b64-> fis d cis-> d fis}
  \change Staff = LH
  \override Beam.positions = #'(8 . 6)
  \stemUp
  e des b g
  \change Staff = RH
  \stemDown
  c h as f!
  \change Staff = LH
  \stemUp
  e' des b g
  \change Staff = RH
  \stemDown
  c h as f
  \clef bass
  \bar ""
  s2 s4
  \clef treble
  \stemNeutral
  \revert Beam.positions
  \change Staff = LH
  ges,,,64 b des ges as b des ges
  \override Beam.positions = #'(8 . 10)
  as b
  \change Staff = RH
  des ges as b des ges
  \override Beam.positions = #'(-5 . -4)
  \ottava #1
  \set Staff.ottavation = #"8"
  b' as ges es
  \change Staff = LH
  \ottava #1
  \set Staff.ottavation = #"8"
  \stemUp
  ges, as b des
  \override Beam.positions = #'(-6 . -5)
  \change Staff = RH
  \stemDown
  ges es des b
  \change Staff = LH
  \stemUp
  des, es ges as
  \ottava #0
  \override Beam.positions = #'(-7 . -6)
  \change Staff = RH
  \stemDown
  des b as ges
  \ottava #0
  \change Staff = LH
  \stemUp
  as, b des es
  \override Beam.positions = #'(-6 . -5)
  \change Staff = RH
  \stemDown
  b' as ges es
  \change Staff = LH
  \stemUp
  ges, as b des
  \override Beam.positions = #'(-7 . -6)
  \change Staff = RH
  \stemDown
  ges es des b
  \change Staff = LH
  \stemUp
  des, es ges as
  \override Beam.positions = #'(-8 . -7)
  \change Staff = RH
  \stemDown
  des b as ges
  \change Staff = LH
  \stemUp
  as, b des es
  \revert Beam.positions
  %\override Beam.positions = #'(-6 . -5)
  \change Staff = RH
  b' as ges es
  \change Staff = LH
  ges, as b des
  %\override Beam.positions = #'(-7 . -6)
  \change Staff = RH
  ges es des b
  \change Staff = LH
  des, es ges as
  %\override Beam.positions = #'(-8 . -7)
  \change Staff = RH
  des b as ges
  \change Staff = LH
  as, b des es
  es, e f fis g gis a b h c cis d dis e f fis
  g gis a b
  \change Staff = RH
  h! c cis d
  \stemDown
  dis e f fis g gis a b h c cis d dis e f fis
  \override Beam.positions = #'(-6 . -5)
  g e des b
  \change Staff = LH
  \stemUp
  c, es fis a
  \revert Beam.positions
  \change Staff = RH
  des b g e
  \change Staff = LH
  fis, a c es
  \change Staff = RH
  g e des b
  \change Staff = LH
  c, es fis a
  \override Beam.positions = #'(-6 . -5)
  \change Staff = RH
  \clef bass
  \stemDown
  des b g e
  \change Staff = LH
  \stemUp
  fis, a c es
  \revert Beam.positions
  \change Staff = RH
  \stemNeutral
  fis f e es d des c h b a as g
  \times 4/5{fis64 f e es d}
  \set subdivideBeams = ##f
  s1
  \override Score.GraceSpacing.spacing-increment = #2.0
  \afterGrace s4.{
    g'16[ a b f' b, a g a b e b a g a b
    es b a g a b d b a g a b]
  }
  \bar "||"\break
  \clef treble
  \key a \major
  \set subdivideBeams = ##f
  \stemDown
  r8.\change Staff = LH
  <e e'>16-><e a cis e>-> q-> q4->
  \clef bass
  \change Staff = RH
  \stemUp
  <e a cis e>16-><e fis a e'>-><d fis a d>8.->
  \change Staff = LH
  \stemDown
  <d fis a d>4->~ q16
  \clef bass
  \change Staff = RH
  \stemUp
  <fis a d fis>8->
  <fis a cis fis>4.->
  \change Staff = LH
  \stemDown
  <gis gis'>32-><fis fis'>->
  <<
    {
      <
      \tweak #'duration-log #1 e
      \tweak #'duration-log #1 a
      \tweak #'duration-log #1 h
      \tweak #'duration-log #1 e>4_>
    }
    \\
    {
      s8
      \clef bass
      s8
    }
  >>
  s2 s8.
  \change Staff = RH

  r8.\change Staff = LH
  \stemDown
  <e e'>16-><e a cis e>-> q-> q4->
  \clef bass
  \change Staff = RH
  \stemUp
  <e a cis e>16-><a d fis a>-><fis a d fis>8.->
  \change Staff = LH
  \stemDown
  <e_~ fis_~ a~ d~ e~>4-> q16
  \clef bass
  \change Staff = RH
  \stemUp
  <d a' d>8->
  <cis e a cis>4._>
  \change Staff = LH
  <d a' d>32_><cis a' cis>_>
  <<
    {
      <h e a h>4_>
    }
    \\
    {
      s8
      \clef bass
      s8
    }
  >>
  \change Staff = RH
  \stemUp
  <h e gis h>2_> s8.
  s4 cis''16 a8. a16. a d8.[ cis!16] h4~ h16[ a8]
  <<
    {
      a2~ a8 cis 8.[ h8 a16]~ a4.
      \stemDown
      h4~ h16. a32~ a4~ a16 cis8 cis!16 h4 h16 cis16. d

    }
    \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"RH"
      fontSize = #-1
      \override StaffSymbol.staff-space = #(magstep -1)
      \override StaffSymbol.thickness = #(magstep -1)
      firstClef = ##f
    }
    {
      \key a \major

      \override Staff.Clef #'break-visibility = #begin-of-line-visible
      \override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
      \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation #'break-visibility = #all-invisible
      \override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible

      r4 r16
      \ottava #1
      \set Staff.ottavation = #"8"
      cis64( e a cis e32 cis a e d2)
      c64( f a c f32[ c a f] e8.)
      r4 r16 cis64( e a cis e32 cis a e d2)
      c64( f a c f32[ c a f] e8.)
      \ottava #0
    }
  >>
  e8.[ e16] e8.[ e8] e16[ e e] g g[ f] e4 e16[ cis!8]
  h8. h16 cis8. cis16 cis h8 a8. a16 a8. a16 h16. cis
  a4 r16
  \ottava #1
  \set Staff.ottavation = #"8"
  cis64( e a cis e32 cis a e d2)
  c64( f a c f32[ c a f] e8.)
  \ottava #0
  r4. cis,8( h4 c16 h4. h8 h16 h16. cis64 h a8) r16
  \ottava #1
  \set Staff.ottavation = #"8"
  cis'64( e a cis e32 cis a e d2)
  c64( f a c f32[ c a f] e8.)
  r4 r16 cis64( e a cis e1)
  \ottava #0
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Море )}}
}

voiceB = \relative {
  s2 e'16[ h' cis]~ cis c f a f s4.
  s cis16 a s16*3
  \stemUp
  c,16[( a']\hideNotes \stemDown h')\unHideNotes
  \stemUp
  c,[( f]\hideNotes \stemDown a)\unHideNotes
  \stemUp
  gis,[( e']\hideNotes \stemDown h')\unHideNotes
  \stemUp
  e,, h'~ h8.[ e16]\stemDown s8 cis16 h a r cis
  r f e cis! r g' f e cis! h a~ a2 cis16 a h\rest s2 s16*3
  \repeat unfold 15 {s8*11}
  \set subdivideBeams = ##f
  r8. e16[ e e e e] d[ d d] cis[ cis cis!
  cis cis cis cis! cis] h[ h h]
  a[ a a h] r4. e16[ f f f f f] r8. r8 gis16
  s8*11
}

rechtsDreiBis = {
  \clef treble
  \key a \major
  \time 11/8
  \set Staff.printKeyCancellation = ##f
  <<
    {
      \voiceA
    }
    \\
    {
      \voiceB
    }
  >>
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksDreiBis = \relative {
  \clef bass
  \key a \major
  \time 11/8
  \set Staff.printKeyCancellation = ##f
  %\override Slur.positions = #'(0 . 0)
  a,16_>([ a' e'
  %\clef treble
  a cis a
  %\clef bass
  e a,)]
  %\revert Slur.positions
  d,_>([ a' fis')]
  f,,_>([ f' c'
  %\clef treble
  f a f
  %\clef bass
  c f,)] e_>([ h' gis')]
  %\override Slur.positions = #'(0 . 0)
  a,,16_>([ a' e'
  %\clef treble
  a cis! a
  %\clef bass
  e a,)]
  %\revert Slur.positions
  d,_>([ a' fis')]
  f,,_>([ f' c'
  %\clef treble
  f a f
  %\clef bass
  c f,)] e_>([ h' gis')]
  a,,16_>([ a' e'
  %\clef treble
  a cis! a
  %\clef bass
  e a,)]
  %\revert Slur.positions
  d,_>([ a' fis')]
  f,,_>([ f' c'
  %\clef treble
  f a f
  %\clef bass
  c! f,)] e_>([ h' gis')]
  a,,16_>([ a' e'
  %\clef treble
  a cis! a
  %\clef bass
  e a,)]
  %\revert Slur.positions
  d,_>([ a' fis')]
  f,,_>([ f' c'
  %\clef treble
  f a f
  %\clef bass
  c! f,)] e_>([ h' gis'!)]
  %%%%%%%%%%%%%%%%%%
  \repeat unfold 2 {
    a,,32( cis e a
    \clef treble
    cis e a cis e cis a e
    \clef bass
    cis a e cis)
    \override Slur.positions = #'(1 . 1)
    d([ fis a d fis d)]\bar ""
    f,,([ a c f]
    \clef treble
    a[ c f a] c[ a f c]
    \clef bass
    a[ f c a)]
    e'([ gis h e gis e)]
  }
  a,, cis e a
  \change Staff = RH
  cis
  \change Staff = LH
  a e cis a16. h cis16~ cis16.[ d]\bar ""
  a'16[ cis,!8]~ cis16.[ a'8 g16 f32]
  \stemDown
  e16[ cis h]
  \stemNeutral
  s8*11 s8*4
  \repeat unfold 14 {a32 a'}
  \repeat unfold 14 {a,32 a'}
  \repeat tremolo 8 {a,32 a'}
  \key a \minor
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(2 2 2 2 2 2 2 2 2 2 2)
  c,,64 es fis h c es fis h s16 \clef treble s16 s8
  s8 s8 \clef bass s8
  c,,64 f as h c f as h
  s16 \clef treble s16
  <a' c es fis>4\arpeggio
  c'64 h as h as fis e cis
  r32.<e, f! as h c!>16.\arpeggio q\arpeggio
  q32.\arpeggio q\arpeggio q\arpeggio
  s8 s16 s32 \clef bass s32
  \override Beam.positions = #'(10 . 7)
  \stemUp
  e64 des b g
  \change Staff = RH
  \stemDown
  c h! as f
  \change Staff = LH
  \stemUp
  e'64 des b g
  \change Staff = RH
  \stemDown
  c h as f
  \override Beam.positions = #'(8 . 5)
  \change Staff = LH
  \stemUp
  e64 des b g
  \change Staff = RH
  \stemDown
  c h! as f
  \change Staff = LH
  \stemUp
  e'64 des b g
  \change Staff = RH
  \stemDown
  c h as f
  \override Beam.positions = #'(7 . 8)
  \repeat tremolo 8 {
    \change Staff = LH
    \stemUp
    b64
    \change Staff = RH
    \stemDown
    des
  }
  \change Staff = LH
  s8*2 \clef treble s8 \bar ""
  s8*4 \bar ""
  s8 s16 \clef bass s16 s8*2
  s8*4 \clef treble \bar ""
  s8*2 s16 \clef bass s16 \bar ""
  s8*4
  \stemNeutral
  cis,1( s4.)
  \key a \major
  \set subdivideBeams = ##f
  %\small
  \tiny
  %\teeny
  a32 e' a cis <e a>
  \clef treble
  \change Staff = RH
  \set subdivideBeams = ##f
  \revert Beam.positions
  e' cis' <e a><a cis><a cis e><cis e a><cis e a cis>
  <a cis e a><e cis' e><a cis><cis, a'><a e'>[<e cis'> a e
  \change Staff = LH
  <cis, a'><a e'>]\bar ""\break
  <d, d'>[ fis a d] fis[ a
  \clef treble
  \change Staff = RH
  d <fis a>] d'[ <a fis'><d a'><fis a d>]
  <a d fis>[<fis a d><d a'><a d fis>]
  <fis d'>[<d a'><a fis'> d
  \change Staff = LH
  fis, a,]\break
  a,32 e' a cis <e a>
  \clef treble
  \change Staff = RH
  e' cis' <e a><a cis><a cis e><cis e a><cis e a cis>
  <a cis e a><e cis' e><a cis><cis, a'><a e'>[<e cis'> a e
  \change Staff = LH
  <cis, a'><a e'>]\bar ""\break
  e[ gis h e] gis[ h
  \change Staff = RH
  e <gis h>] e'[ <h gis'><e h'><gis h e>]
  <h e gis>[<gis h e><e h'><h e gis>]
  <gis e'>[<e h'><h gis'> e
  \change Staff = LH
  gis, h,]\break
  a,32 e' a cis <e a>
  \clef treble
  \change Staff = RH
  e' cis' <e a><a cis><a cis e><cis e a><cis e a cis>
  <a cis e a><e cis' e><a cis><cis, a'><a e'>[<e cis'> a e
  \change Staff = LH
  <cis, a'><a e'>]\bar ""\break
  <d, d'>[ fis a d] fis[ a
  \clef treble
  \change Staff = RH
  d <fis a>] d'[ <a fis'><d a'><fis a d>]
  <a d fis>[<fis a d><d a'><a d fis>]
  <fis d'>[<d a'><a fis'> d
  \change Staff = LH
  fis, a,]\break
  a,32 e' a cis <e a>
  \clef treble
  \change Staff = RH
  e' cis' <e a><a cis><a cis e><cis e a><cis e a cis>
  <a cis e a><e cis' e><a cis><cis, a'><a e'>[<e cis'> a e
  \change Staff = LH
  <cis, a'><a e'>]\bar ""\break
  e[ gis h e] gis[ h
  \change Staff = RH
  e <gis h>] e'[ <h gis'><e h'><gis h e>]
  <h e gis>[<gis h e><e h'><h e gis>]
  <gis e'>[<e h'><h gis'> e
  \change Staff = LH
  gis, h,]\break
  \normalsize
  \revert Slur.positions
  a16_>([ a' e'
  %\clef treble
  a cis a
  %\clef bass
  e a,)]
  %\revert Slur.positions
  d,_>([ a' fis')]
  f,,_>([ f' c'
  %\clef treble
  f a f
  %\clef bass
  c! f,)] e_>([ h' gis')]
  <<
    {
      \stemDown
      \repeat unfold 2 {
        a,,16_>([ a' e'
        %\clef treble
        a cis a
        %\clef bass
        e a,)]
        %\revert Slur.positions
        d,->([ a' fis')]
        f,,_>([ f' c'
        %\clef treble
        f a f
        %\clef bass
        c! f,)] e->([ h' gis')]
      }\repeat unfold 2 {
        a,,16_>([ a' e'
        %\clef treble
        a cis a
        %\clef bass
        e a,)]
        %\revert Slur.positions
        d,_>([ a' fis')]
        f,,_>([ f' c'
        %\clef treble
        f a f
        %\clef bass
        c! f,)] e_>([ h' gis')]
      }
      \repeat unfold 3 {
        a,,16_>([ a' e'
        %\clef treble
        a cis a
        %\clef bass
        e a,)]
        %\revert Slur.positions
        d,->([ a' fis')]
        f,,_>([ f' c'
        %\clef treble
        f a f
        %\clef bass
        c! f,)] e->([ h' gis')]
      }
    }
    \\
    {
      \repeat unfold 2 {
        s2 r16
        \override Flag.style = #'no-flag
        \set Staff.ottavation = #"8"
        \once \override Staff.OttavaBracket.direction = #DOWN
        \set Voice.middleCPosition = #(+ 6 7)
        \tweak #'duration-log #1 d,,,16
        \unset Staff.ottavation
        \unset Voice.middleCPosition
        s16
        s2 r16
        \override Flag.style = #'no-flag
        \set Staff.ottavation = #"8"
        \once \override Staff.OttavaBracket.direction = #DOWN
        \set Voice.middleCPosition = #(+ 6 7)
        \tweak #'duration-log #1 e16
        \unset Staff.ottavation
        \unset Voice.middleCPosition
        s16
      }
      \repeat unfold 2 {s8*11}
      \repeat unfold 3 {
        s2 r16
        \override Flag.style = #'no-flag
        \set Staff.ottavation = #"8"
        \once \override Staff.OttavaBracket.direction = #DOWN
        \set Voice.middleCPosition = #(+ 6 7)
        \tweak #'duration-log #1 d16
        \unset Staff.ottavation
        \unset Voice.middleCPosition
        s16
        s2 r16
        \override Flag.style = #'no-flag
        \set Staff.ottavation = #"8"
        \once \override Staff.OttavaBracket.direction = #DOWN
        \set Voice.middleCPosition = #(+ 6 7)
        \tweak #'duration-log #1 e16
        \unset Staff.ottavation
        \unset Voice.middleCPosition
        s16
      }
    }
  >>
  <<
    {
      s4. e'''1
    }
    \\
    {
      a,,16_>^([ a' e'
      %\clef treble
      a cis a
      %\clef bass
      e a,^~)] a4.^~ a2
    }
  >>
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicDreiBis = {
  \override Hairpin.to-barline = ##f
  s8*11\p s s s2 s8. s16\cresc s8\! s2 s8*10\f s8\>
  s8*11\pp s8*3\< s8*8\mf s2\< s8 s16\! s8 s16\> s2
  s s8*7\p s4 s16\cresc s\! s8*8 s8*11\fff
  s8*7 s32\dim s32\! s8. s4\p s8*8\sf s16 s32\dim s32\! s4
  s8*9\sf s32\dim s\! s8. s8*11\p
  s8*11\mf s s s s\p
}