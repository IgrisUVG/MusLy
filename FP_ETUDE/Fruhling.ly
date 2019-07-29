\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Frühling"
  %meter = "Andante"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #30
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
    %\omit SpanBar
  }
  \context {
    \Staff
    %\omit BarLine
    \omit TimeSignature
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%% INCLUDE %%%%%%%%%


%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key gis \minor
  \time 2/4
  \override Staff.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark.extra-offset = #'(0 . 5)
  \mark "Andante"
  <<
    {
      s2 s8 cis'' h'[ dis, e cis]
      fis,16 gis ais dis
    }
    \\
    {
      \partial 4 <gis, h>8<fisis cis'><fis dis'><e cis'><fisis dis'><gis cis> ais4 gis
      fis!
    }
  >>
  fis'16 gis <dis h'> e' <dis fis>8<cis e>
  <<
    {
      fis8 e
    }
    \\
    {
      h4
    }
  >>
  <ais dis>16 gis <dis fis> ais
  <<
    {
      h4 b8 a b4 e8 d e4 fis gis ais gis8 fis gis4 fis8 e fis4 e8 ais dis,4 cis8 h
    }
    \\
    {
      gis16 fis e dis d e f g a g c d e a, b8 a ais
      gis!16 eis ais cis! h!8 cis dis! cis dis4 e8
      \override TupletBracket.bracket-visibility = ##f
      \tuplet 3/2 {dis16 gis, eis}
      cis'4 d8 cis16 a h8. gis16 ais8 gis fis16 ais gis fis
    }
  >>
  <e ais>4<dis h'>8<fisis cis'><fis dis'><e cis'>
  <<
    {
      s8 cis' h'[ dis, e cis]
    }
    \\
    {
      <fisis, dis'><gis cis> ais4 gis
    }
  >>
  fisis16 h dis e <fis! ais> h ais gis e dis h ais fisis8 gis
  <<
    {
      cis4
    }
    \\
    {
      h8 ais
    }
  >>
  gis32 dis! gis ais cis[ gis ais cis] gis' ais, cis gis' ais[ cis, gis' ais] cis gis ais cis
  gis'8\noBeam
  <<
    {
      h,,4~ h8 <fisis cis'>
    }
    \\
    {
      <e fisis>4 s
    }
  >>
  \key h \minor
  <fis d'>8<e cis'>
  <<
    {
      d'2 fis16 cis' h, a' e8 d r16 cis8. dis8 ais~ ais16 h fis' e dis8 b4.
    }
    \\
    {
      g8 fis ais a <g fis'>4 fis d16 g fis e fis4 g fis~ fis16 g a b
    }
  >>
  <d a'>16<es g><b' d><a es'>
  <<
    {
      f'8 es f es
    }
    \\
    {
      g,16 a b c b4
    }
  >>
  <a d>16 g <d f> a
  <<
    {
      b4( ais8) gis ais4 d8 cis <h d>4 d2
    }
    \\
    {
      g,16 f es d cis dis e fis gis fis h cis d gis, ais8
      \bot
      \stemUp
      f16
      \top
      \stemDown
      fis a g~ g8 fis ais a
    }
  >>
  <g fis'>16 h d e a g  d' h
  <<
    {
      s8
      \stemDown
      <a, cis~>
      \stemUp
      cis16 d a' g fis8 cis~ cis16 d a' g a8 g f <a, e'>
      \key gis \minor
      <h dis>8<fisis cis'>
    }
    \\
    {
      #(define afterGraceFraction (cons 1 2))
      <cis'' fis>4 h, a h8 cis d4 b16 g8 f16(
      \key gis \minor
      eis8) s
    }
  >>
  <<
    {
      s4 s8 cis' his'[ dis, eis cis] fisis,16 gis ais dis
    }
    \\
    {
      <fis, dis'>8<e cis'><fisis dis'><gis cis> ais4 gis fisis
    }
  >>
  fisis'16 gis <dis his'> eis'
  \key as \major
  <es g>8<des f>
  <<
    {
      g8 f
    }
    \\
    {
      c4
    }
  >>
  <b es>16 as <es g> b
  <<
    {
      c4 b8 as b4 es8 des es4 c8 g~ g16 as es' des c8 g~ g16 as es' des
    }
    \\
    {
      as16 g f es des es f g as g c des es as, b8 as g es4 f es f
    }
  >>
  <<
    {
      as4 b es f as b
    }
    \\
    {
      as,16 b g' es b des b' as es as des c f, as es' des as b g' es b des b' as
    }
  >>
  c4\fermata
  <<
    {
      as,,4~ as8[ <e b'>]
    }
    \\
    {
      e4 f8 s
    }
  >>
  <es c'>8<des b'>
  <<
    {
      s8 b' as'[ c, des b] c[ b c f,] b4 c8 f, b2~ b8 r
    }
    \\
    {
      <e, c'>8<f b> g4 f es des c des c2~ c8 r
    }
  >>
  r2
  \revert Staff.BarLine.stencil
  \revert Score.SpanBar.stencil
  \bar "|."
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key gis \minor
  \time 2/4
  \override Staff.BarLine.stencil = ##f
  %\set Staff.printKeyCancellation = ##f
  r4 r8 fisis
  <<
    {
      s8 dis' e fis \parenthesize gis4
    }
    \\
    {
      gis,8 dis' cis4 h8ais
    }
  >>
  gis dis ais\noBeam fisis' gis dis' ais' gis h16 ais e h ais gis dis h
  a8\noBeam e' f a g c f4 r8 dis! ais!4
  <<
    {
      h8 cis16 dis e8 gis
    }
    \\
    {
      h,4 ais
    }
  >>
  fis'8 ais, gis16 dis' gis ais h,4~ h16 gis dis8
  <<
    {
      e16 h' cis dis e dis cis8\once\showStaffSwitch
      \top
      \stemDown
      dis cis
      \stemNeutral
      \bot
    }
    \\
    {
      e,4 gis8 ais h16 ais gis dis
    }
  >>
  <<
    {
      gis,16 dis' eis ais gis fisis h ais gis cis h ais gis dis' cis h
      ais h ais e h ais gis e d gis ais dis! ais' h cis d eis8 e dis d
    }
    \\
    {
      s8 eis, e4 dis e8 fis gis4 dis s e8 dis gis4 fisis
    }
  >>
  cis'32 fisis, h dis eis[ h dis eis]
  \clef treble
  fisis dis eis fisis h[ eis, fisis h] dis fisis, h dis eis8\noBeam
  \clef bass
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      \override TupletBracket.direction = #DOWN
      \override TupletBracket.bracket-visibility = ##f
      \stemDown
      \tuplet 3/2 8 {dis,,16 ais' h cis eis fisis}\once\showStaffSwitch
      \top
      gis8
      \stemNeutral
      \bot
      s
    }
    \\
    {
      s4 d,\rest
    }
  >>
  \key h \minor
  r4 h16 fis' g h cis d eis e d8 e16 ais,
  cis h  g fis cis8  g' h,16 fis' cis' dis fis e cis g fis e cis' h!
  d8 cis b a d,\noBeam g16 d' a'8 g b16 a es b a g  d b gis8\noBeam dis' e gis fis h f'16 d ais fis
  h, fis' g h  cis d eis e d8 a'16 g h e, d a d, a' e' fis a g e h a g e' d a' d, e a b, a d a' e8 d
  \key gis \minor
  gis,,16 dis' eis ais gis h fisis8
  <<
    {
      s8 dis' eis fisis \parenthesize gis4 s
    }
    \\
    {
      gis,8 dis' cis4 his8[ ais gis dis]
    }
  >>
  ais fisis'
  \key as \major
  as es' b' as c16 b f c b as es c as8\noBeam es' f as g c f b, as,16 es' b' c es des b f
  <<
    {
      es4 f as
    }
    \\
    {
      es16 as b c f, b des es as, des f as
    }
  >>
  \clef treble
  <<
    {
      b,16 es as b es, as b c f, b des es as, des f as b, es as b
    }
    \\
    {
      b,,4 es f as b
    }
  >>
  c'4\fermata
  \clef bass
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 8 {c,,,16 fis g b es! des} c4. e,8
  <<
    {
      s8 c' des es \parenthesize f4
    }
    \\
    {
      f,8 c' b4 as8[ g]
    }
  >>
  \unset baseMoment
  \unset beatStructure
  \repeat unfold 6 {f16 g}
  \time 3/4
  \set Staff.pedalSustainStyle = #'mixed
  \once \override Staff.PianoPedalBracket.shorten-pair = #'(-0.5 . -5.5)
  f\sustainOn g f g f2~ f8 r r2\sustainOff
  \revert Staff.BarLine.stencil
  \bar "|."
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
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