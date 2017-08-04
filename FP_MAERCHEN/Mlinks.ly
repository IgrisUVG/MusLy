\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})

%%%%%%%%%%%%%%%%%%%%%% EINS %%%%%%%%%%%%%%%%%%%%%%
linksEins = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  <a, e'>8<b f'>
  <<
    {
      g'8 f4 g8 b4 c8 h!
    }
    \\
    {
      c,4 des8 e f ges g!4
    }
  >>
  <c, g'><des ges><d f><dis fis><e gis><f a>
  <e gis>16<es g><cis a'><dis h'>
  <c c'><es b'><d gis><des a'>
  <<
    {
      b'4 as2
    }
    \\
    {
      c,2 des4
    }
  >>
  \time 3/4
  <es g><e a><d h'>
  \time 4/4
  <e b'><fis h><g c>8<fis b><e g>8.<des as'>16
  <h a'!>8<b es>4<a f'>8<g des'><es c'><fes b>4
  <f c'><as des><f d'><a e'>
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  <<
    {
      \stemDown <b es~><c es>16<d f~>8. \stemUp f4 ges
      f es2 fes4 es8 e16 f g8. d16 e4 f8 e16 d
      c!4. b8 ces16 c des8~ des16 c b8~ b!4 cis b8 c16 es f8. as,16
      b8 c16 b~ b4 <f c'> h8. c16
      <es, des'>4<f c'~> c'8 b16 c <b des>8. <c es>16
      f8 ges16 as b8. g16 f8 e d es e! d16 cis d8 c d es c8. b16
    }
    \\
    {
      s2 c8 f, ges g16 a b8. as16 ges4 a8 b16 c des8. b16
      a4 h c!~ c16 h as g a2 ges4 f e8 fis16 gis a8. d,16 ges8 as4.
      f4 as8. g16 s4 e s2 g8. as16 s4 des e c g e g c, r
    }
  >>
  a'4 des8 c es4 d <f, c'>8<ges b>
  <<
    {
      c des es4 d <ges, es'> des' c8 h4 cis8 dis e~ e2 es4
    }
    \\
    {
      es,8. des16 c4 fes8 es s4 f!2 fis4~ fis gis8 ais4. b8 c!
    }
  >>
  <d f><cis g'><e gis><cis a'>
  <<
    {
      b'4
    }
    \\
    {
      c,8 des
    }
  >>
  <es as>4<c as'>
  <<
    {
      a'8 b g8. f16 e4 fis8 gis4. a8 fis f as
    }
    \\
    {
      es4 d c8 d cis4 d e8 d4 es8
    }
  >>
  <c es>8.<ges d'>16<as c>4
  <<
    {
      f'8 e g f
    }
    \\
    {
      a,8 h4 b8
    }
  >>
  <ces ges'><des as'><c g'>4<b es><as des>
  <<
    {
      c16 des8 es16
    }
    \\
    {
      ges,8 f16 es
    }
  >>
  <des as'>8<c g'>~ q2
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{(Вечерняя)}}
  %\stopStaff
  %s-\markup { (Вечерняя) }
}
%%%%%%%%%%%%%%%%%%%%%% ZWEI %%%%%%%%%%%%%%%%%%%%%%
linksZwei = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \time 3/4
  \key f \minor
  \set Timing.beamExceptions = #'()
  <g, eses'>4 <ges des'><f c'>\fermata
  \bar "||"
  e4 des
  <<
    {
      f'16 e es des c es8. f4 g8 as
    }
    \\
    {
      as,16 c b8 as16 b c8 d4 des
    }
  >>
  <es b'>16<c as'><des ges><b f'>
  <<
    {
      es4. des8 c2. b4 c16 des es f es4~ es8 <b g'>
    }
    \\
    {
      heses16 as8. as8 b c2. b4 c16 b as4.~
      \stemUp
      \once \omit Flag
      as8 s
      \stemNeutral
    }
  >>
  <c f>16<b g'><as es'>8 r4
  \bar "||"
  \break
  \makeOctaves #-1 {
    r2 a4 as8 f e d c h~ h4. b8 des fes
    ases4 ges8 r fes ases b des4 ces r8
    r b ces g a d,~ d4 r2
    r16 c'[ r des] es16. f32 ges16 b, c4
    r16 e8 f16 g!16. as32 b16 d, es4
    r16 f es4
  }
  <<
    {
      s8 c16 es b c
    }
    \\
    {
      \stemUp <f,~ des'>8 \stemDown f16 g8 as16
    }
  >>
  g32 d'' h d g, d' h d fis, d' h d fis, d' h d f, d' a d f, d' a d
  e, d' a d e, d' a d d,4 c32 g' e g c, g' e g
  h, g' e g h, g' e g b, g' e g b, g' e g a, g' d g a, g' d g
  g,4 d32 f' c f d, f' c f
  <<
    {
      <c, b'~>4 b' c8 des
    }
    \\
    {
      s4 des,2
    }
  >>
  r4 b'4
  <<
    {
      c16 d e g, as4 b c b16 c es, f as b c es, f4 ges16 as b des,
    }
    \\
    {
      a'8. g16 f4 es des16 es f as, b4 c b ces16 b8 des16
    }
  >>
  <es c'><f d'><g e'><b, g'><c a'> s8. s4
  <f c'>16 s8. s2 s8 r
  <<
    {
      f'8 <des f>4<c e>8
    }
    \\
    {
      b8 g~ g8. b16
    }
  >>
  <f c' f>2 r4
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{(Дурацкая)}}
  %\stopStaff
  %s-\markup { (Дурацкая) }
}
%%%%%%%%%%%%%%%%%%%%%% DREI %%%%%%%%%%%%%%%%%%%%%%
ersteVoice = \relative {
  h'8 g16( a h8-.) g-. a16( d c h <a c><g h><f a><e g>
  a8) fis16( g a8) fis4 e8 d r4. d8 h16 c d g h d~
  d8 c a4( h2) r4 d8 h16( c d8) h16 a~ a gis8 g16
  a h c h a g f e d4 fis8 g f16 es
  \clef bass
  d4. c16 b as4 g8~ g f es c16 d es d c4 b8
  c h!4 a16 h a4 h cis8 h e16 dis8 cis16 g'!4 a16 g fis e
  r h'4 a h8. gis16 fis eis e
  fis8. g16 a8. es16 h'!8. g16 gis8 cis,
  d h16( cis d8-.) h-. cis4. h8~
  h e h' gis16_( ais h8) gis_. ais fis16( gis
  ais8) gis g4~ g8. fis16 fis4
  g <a h>~ q8. <gis cis>16 h8 gis16( a
  h8) gis-. a\noBeam g16[ f e d]~ d[ c h a]~ a8[~
  a16 <fis h>]~ q4. cis'4 <dis h'><e a>8 gis4~ gis2
}
zweiteVoice = \relative {
  s4 fis'8 d16( e fis4) c d4. a8 c16 h8 a16
  g8 fis4. g4~ g16 c e a f4. e8~ e2
  g fis8 d16( e fis8-.) d-.
  e\noBeam a16 g f e d c h8 a4 h8 b
  \clef bass
  as4 b,8 g' f4 as,8
  b4 c8 b a g4. f4 g fis e d8. fis16 gis8 a4. h8 cis
  d8. cis16 d8. h16 d8. a16 dis d cis8
  h8. b16 a8. c16 f,8. e'16 e,4~ e4. fis8[ dis16( cis] fis8[) dis] e~
  e gis <cis, gis' dis'>4~ q8. <eis ais his>16<gis his dis>4~
  q8. <h dis fis>16 e!2 cis4 d e2 cis4~ cis d8 c4 f, d8[~
  d16 cis]~ cis4. gis'4 cis h8\noBeam <d f>16<cis fis>8.~ q2
}
linksDrei = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \time 5/4
  \key d \major
  \partial 1
  fis8( gis a4 cis h8 a gis4 fis eis)\fermata r2
  \clef treble
  r1 d'4~( d8 fis e2. es8 d~ d2)\fermata
  \clef bass
  cis8 h a4 h8 d, a' g fis2\fermata
  \bar "!"
  r4
  <<
    {
      <e gis><dis gis> e fis fis fis
      f! e f8 <c e><b es>4<c es> e! es
    }
    \\
    {
      h h r8 <a cis> r h cis4 d8 a
      g4 a cis8 g4 f8 g4 g2
    }
  >>
  <<
    {
      cis4 <d f> d
    }
    \\
    {
      s4 h <a c>
    }
    \\
    {
      \voiceTwo
      f2 s4
    }
  >>
  <<
    {
      e' cis d fis fis e cis d h h a a r <h d><cis e>~ q2 r2.
    }
    \\
    {
      g4 a2 h4 d h gis a8 fis fis4 g8 e
      e4 fis8 d e2~ e8 a~ a2 r2.
    }
  >>
  \bar "||"
  \clef treble
  \key g \major
  r4
  <<
    {
      \ersteVoice
    }
    \\
    {
      \zweiteVoice
    }
  >>
  r8
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{(Старая)}}
  %\stopStaff
  %s-\markup { (Старая) }
}
%%%%%%%%%%%%%%%%%%%%%% VIER %%%%%%%%%%%%%%%%%%%%%%
bommm = \relative {
  \repeat unfold 7 {<fis, cis'>1} \repeat unfold 5 {<fis, cis'>}
}
linksVier = {
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
  \relative {
    \clef bass
    \override Staff.TimeSignature.stencil = ##f
    \time 5/4
    \key d \major
    es4 des c a4. d4 cis h a gis8 cis4 dis2 e4. a,2
    h4. cis4 dis eis8 cis4. h a8 gis4 g fis4. e8~ e2
    \repeat tremolo 3 {a,32 a'}
    %1
    <fis cis'>16->~-\markup {\bold 1} q2.~ q8.
    %2
    q16->~-\markup {\bold 2} q4~ q2~ q8.
    %3
    q16->~-\markup {\bold 3} q2~ q4~ q8.
    %4
    q16->~-\markup {\bold 4} q2.~ q8.
    %5
    q16->~-\markup {\bold 5} q2.~ q8.
    %6
    q16->~-\markup {\bold 6} q2.~ q8.
    %7
    q16->~-\markup {\bold 7} q4~ q2~ q8.
    %8
    \ottava #-1
    \set Staff.ottavation = #"8"
    <fis, cis'>16->~ q2~ q4~ q8.
    %9
    q16->~-\markup {\bold 9} q2.~ q8.
    %10
    q16->~-\markup {\bold 10} q2.~ q8.
    %11
    q16->~-\markup {\bold 11} q2.~ q8.
    %12
    q16->~-\markup {\bold 12} q4~ q2. q2\fermata
    \bar "|."
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.direction = #DOWN
    \override Score.RehearsalMark.extra-offset = #'(0 . -1)
    \mark \markup {\small{(Новогодняя)}}
    %\stopStaff
    %s-\markup { (Новогодняя) }
  }
}