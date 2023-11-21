\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rechtsFour = \relative {
  \clef treble
  \key c \major
  \time 12/16
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \set Staff.beatStructure = #'( 4)
  \override Staff.TimeSignature.stencil = ##f
  \override DynamicLineSpanner.staff-padding = #3
  <<
    {
      s2. s r4 <a' a'>
      \once \override NoteColumn.force-hshift = #-1.3
      <e e'><c c'><a a'>
      \once \override NoteColumn.force-hshift = #-1.3
      <g g'><d' d'>2 s4 s2.
      <fis fis'>4<gis gis'>
      \once \override NoteColumn.force-hshift = #-1
      <e' e'><cis cis'>2.~ q2 cis'4 <dis, dis'><eis eis'> cis'
      <his, his'>2 cis'4<dis, dis'><eis eis'><fis fis'>
      <gis gis'>2. s2 s8.
      \autoBeamOff
      \stemDown
      \crossStaff {\small f,!16~}
      \autoBeamOn
      \stemUp
      \tiny
      f4
    }
    \\
    {
      \small
      \stemUp
      r8 e'16 d~ d4 e16 d8.
      r8 e16 d~ d4  e16 d8.
      \stemDown
      r8
      e16 d^~ d4
      \once \override NoteColumn.force-hshift = #-0.1
      e16 d8.
      r8
      e16 d^~ d4
      \once \override NoteColumn.force-hshift = #-0.1
      e16 d8.
      r8
      e16 d^~ d4
      %\once \override NoteColumn.force-hshift = #1
      e16 d8.
      r8 e16 d!^~ d4 e16 d8.
      r8 e16 d!^~ d4 e16 d8.
      r8 d16 cis~ cis4 d16 cis8.
      r8 d16 cis~ cis4 d16 cis8.
      r8 dis16 cis~ cis4 dis16 cis8.
      r8 dis16 cis^~ cis4 dis16 cis8.
      r8 dis16 cis~ cis4 dis16 cis8.
      r8 cis16 his^~ his4 \stemUp cis16 his8.
      r8 cis16 his~ his4 cis16 his8.
      \autoBeamOff
      \stemDown
      \crossStaff {f16 s8.}
      \autoBeamOn
    }
  >>
  \stemUp
  a4 e c a g d'2. R2. fis4 gis e' cis2.^~ cis!2 cis4 dis eis cis
  his2 cis4 dis eis fis gis2.
  \small
  \repeat unfold 2 {fis4 s d16 cis8.}
  <<
    {
      \small
      fis,4 \change Staff = "LH" f,! \change Staff = "RH" b''
      s2.*2 a4\rest \normalsize d' a f d c g'2. a,4\rest des'4. as8
    }
    \\
    {
      \small
      s4 b,,16 des s8 s8
      \autoBeamOff
      \stemDown
      \crossStaff {g,!16}
      \autoBeamOn
      s16
      \stemUp
      \repeat unfold 2 {s8 a'16 g~ g4 a16 g8.}
      \stemDown
      \repeat unfold 3 {s8 a16 g~ g4 a16 g8.}
      s8 a16 ges~ ges4 a16 ges8.
    }
  >>
  \cadenzaOn
  <<
    {
      \ottava #1
      \set Staff.ottavation = #"8"
      \small
      s4 d'16[(
      es]) \repeat unfold 4 {s d[( es])} s d\laissezVibrer
    }
    \\
    {
      a!16[ c h' as d,]
      a!16[-\markup {
        \with-dimensions #'(0 . 0) #'(1.5 . 0)
        \box
        \with-dimensions #'(-1.5 . 45) #'(0 . 14)
        %\pad-to-box #'(25 . 10) #'(25 . 10)
        {\italic "ripetere con smorzamento"}
        %\null
      }
      c h' as! d,]
      a!16[ c h' as! d,]
      a!16[ c h' as! d,]
    }
  >>
  \cadenzaOff
  \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
linksFour = \relative {
  \clef bass
  \key c \major
  \time 12/16
  \set Timing.beatStructure = #'(2 4 3 3)
  \override Staff.TimeSignature.stencil = ##f
  <<
    {
      \repeat unfold 2 {
        \small
        \stemDown
        \change Staff = "RH" f'16[ e] f
        \change Staff = "LH" f,, b c' f, b
        \change Staff = "RH"
        c' \change Staff = "LH" b,, f' d'
      }
      \repeat unfold 3 {
        \small
        \stemDown
        f16[ e] f f,, b c' f, b
        \change Staff = "RH"
        \once \override NoteColumn.force-hshift = #0.1
        c' \change Staff = "LH" b,, f' d'
      }
      \stemDown
      \change Staff = "RH" e16[ dis]
      \once \showStaffSwitch
      \change Staff = "LH" e gis,, e' c' gis e'
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      c' \change Staff = "LH" h,,! gis' d'!
      e16[ dis] e gis,, e' c' gis e'
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      c' \change Staff = "LH" h,, gis' d'!
      e16[ dis] e e,, a h' e, a
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      h' \change Staff = "LH" a,, e' cis'
      e16[ dis] e e,, a h' e, a
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      h' \change Staff = "LH" a,, e' cis'
      eis16[ disis] eis eis,, cis' a' eis cis'
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      a' \change Staff = "LH" a,, eis' h'
      eis16[ disis] eis eis,, cis' a' eis cis'
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      a' \change Staff = "LH" a,, eis' h'
      eis16[ disis] eis eis,, cis' a' eis cis'
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      a' \change Staff = "LH" a,, eis' h'
      dis16[ cisis] dis gis,, dis' ais' gis dis'
      \change Staff = "RH"
      %\once \override NoteColumn.force-hshift = #0.1
      ais' \change Staff = "LH" dis,, his' eis
      \change Staff = "RH" dis16[ cisis] dis
      \change Staff = "LH" gis,, dis' ais' gis dis'
      \change Staff = "RH"
      %\once \override NoteColumn.force-hshift = #0.1
      ais' \change Staff = "LH" dis,, his'
      \once \tiny \parenthesize eis
      \set Timing.beatStructure = #'(4 2 3 3)
      \repeat unfold 3 {
        d,! a'! b
        \change Staff = "RH" c!
        \change Staff = "LH"\stemUp f,, d'
        \stemDown b f' c' b
        \change Staff = "RH" <f' e'><c' d>
        \change Staff = "LH"
      }
      e,, gis b
      \change Staff = "RH" c
      \change Staff = "LH"
      \stemUp gis, e'
      \stemDown c gis' d' c
      \change Staff = "RH" <gis' e'><h! d>
      \change Staff = "LH" e,, gis b
      \change Staff = "RH" c
      \change Staff = "LH"
      \stemUp gis, e'
      \stemDown c gis' d' c
      \change Staff = "RH" gis' <h! d>
      \change Staff = "LH" e,, a h!
      \change Staff = "RH" e
      \change Staff = "LH" \stemUp e,, cis'
      \stemDown a e' h' a
      \change Staff = "RH" <e' d'><h' cis>
      \change Staff = "LH" e,, a h
      \change Staff = "RH" e
      \change Staff = "LH"
      \stemUp e,, cis'
      \stemDown a e' h' a
      \change Staff = "RH" <e' d'><h' cis>
      \change Staff = "LH" eis,, a h
      \change Staff = "RH" eis
      \change Staff = "LH"
      \stemUp eis,, cis'
      \stemDown a eis' h' a
      \change Staff = "RH" <eis' dis'><h' cis>
      \change Staff = "LH" eis,, a h!
      \change Staff = "RH" eis
      \change Staff = "LH"
      \stemUp eis,, cis'
      \stemDown a eis' h' a
      \change Staff = "RH" <eis' dis'><h' cis>
      \change Staff = "LH" eis,, a h
      \change Staff = "RH" eis
      \change Staff = "LH"
      \stemUp eis,, cis'
      \stemDown a eis' h' a
      \change Staff = "RH" <eis' dis'><h' cis>
      \change Staff = "LH" fis, cis'
      \change Staff = "RH" d e
      \change Staff = "LH"
      \stemUp a,, fis'
      \stemDown d[ a' e']
      \change Staff = "RH" d a' e'
      \change Staff = "LH"
      \set Timing.beatStructure = #'(2 4 3 3)
      \repeat unfold 2 {
        \change Staff = "RH" <f,! fis'>16[ e] f
        \change Staff = "LH" f,, b h'! f b
        \change Staff = "RH" h'!
        \change Staff = "LH" h,, fis' e'
      }
      \set Timing.beatStructure = #'(4 4 4)
      \change Staff = "LH" e,, g'
      \change Staff = "RH" c e
      \change Staff = "LH" f, g,
      \change Staff = "RH" b' a' b'[
      \change Staff = "LH" cis,,, gis'
      \change Staff = "RH" <dis'e>]
      \set Timing.beatStructure = #'(2 4 3 3)
      \repeat unfold 2 {
        \small
        \stemDown
        \change Staff = "RH" b'16[ a] b \change Staff = "LH" b,, es
        \change Staff = "RH" f'
        \change Staff = "LH" b,
        \change Staff = "RH" es f'
        \change Staff = "LH" es,, b'
        \change Staff = "RH" g'
      }
      \repeat unfold 3 {
        \change Staff = "RH" b16[ a]
        \once \override NoteColumn.force-hshift = #0.2
        b \change Staff = "LH" b,, es
        \change Staff = "RH" f'
        \change Staff = "LH" b,
        \change Staff = "RH" es
        \once \override NoteColumn.force-hshift = #0.2
        f'
        \change Staff = "LH" es,, b'
        \change Staff = "RH" g'
      }
      \change Staff = "RH" b16[ a]
      \once \override NoteColumn.force-hshift = #0.2
      b \change Staff = "LH" h,,! es
      \change Staff = "RH" f'
      \change Staff = "LH" h,! es
      \change Staff = "RH"
      \once \override NoteColumn.force-hshift = #0.2
      f'
      \change Staff = "LH" d,, b'
      \change Staff = "RH" e!
    }
    \\
    {
      \small
      b,,2. s b s s b s s a s s s s gis
      \repeat unfold 5 {s8. b16~ b2}
      \repeat unfold 5 {s8. a16~ a2} s8. d16~ d2
      b2. b \stemUp e2 s4 \stemDown
      es,2. s es s s <e! e'!> f'1 s4
    }
  >>
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%