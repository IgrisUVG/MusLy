\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
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
extendLV =
#(define-music-function (parser location further) (number?)
   #{
     \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
     \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
     \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
   #})

rechts = \relative {
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \override Staff.TimeSignature #'stencil = ##f
  R1*228
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  R2.*16
  \hideNotes
  \shape #'((0 . -17) (1 . -4) (0 . 0) (0 . 0)) Slur
  a'''4(
  \unHideNotes
  <<
    {
      des,,, des'
    }
    \\
    {
      des,16 f b f' des f b f'
    }
  >>
  \shape #'((0 . -17) (1 . -4) (0 . 0) (0 . 0)) Slur
  a4)(
  <<
    {
      c,,, c'
    }
    \\
    {
      c,16 es a es' c es a es'
    }
  >>
  \shape #'((0 . -17) (1 . -4) (0 . 0) (0 . 0)) Slur
  ges4)(
  <<
    {
      des,, des'
    }
    \\
    {
      des,16 ges b ges' des ges b ges'
    }
  >>
  \shape #'((0 . -17) (1 . -4) (0 . 0) (0 . 0)) Slur
  a4)(
  <<
    {
      es,, es'
    }
    \\
    {
      es,16 a c a' es a c a'
    }
  >>
  b) g( a fis as f g e fis dis f d e cis es c d h des b c a h gis
  b g a fis as f g e fis dis f d e cis es c d h des b c a h gis
  b g a fis as f g e fis dis f d e cis es c d h des b
  \change Staff = LH
  c a h gis b g a fis as f g e fis dis f g)
  \stemDown
  \once\override Beam.positions = #'(-2.5 . -1.5)
  \extendLV #18.5
  \override LaissezVibrerTie.direction = -1
  b32(\laissezVibrer
  \extendLV #15.5
  c\laissezVibrer
  \extendLV #12.5
  es\laissezVibrer
  \extendLV #10.5
  \override LaissezVibrerTie.direction = 1
  fis\laissezVibrer
  \change Staff = RH
  \set tieWaitForNote = ##t
  b~ c~ es~ fis~ <b, c es fis b>2->)
  <e a e'>2.~( q4 <h e h'>2<c f c'>2.~ q4 <d g d'>2<c f c'>2.)
  R2.*19
  \cadenzaOn
  \stemNeutral
  r4.
  \ottava #1
  \set Staff.ottavation = #"8"
  eis'8[ fis a] cis,[ gis a fis] his,4
  \ottava #0
  r2.
  a''8[ fis cis a fis cis a] fis2\fermata s8
  \cadenzaOff
  \bar "."
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  R1*11
  \tuplet 6/4 4 {
    \repeat unfold 2 {
      \change Staff = LH
      g,16( es' h'
      \change Staff = RH
      g cis g')
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \change Staff = LH
      \stemUp
      fis,,( d' h'
      \change Staff = RH
      \stemDown
      fis d' fis)
      \stemNeutral
    }
    \autoBeamOff
    \crossStaff {
      s8. cis'16 s fis s8. d16 s ges s8. h,16 s e s8. cis16 s gis'
      s8. dis16 s g! s8. d16 s <fis a> s8. h,16 s <d fis> s8. g,16 s8
    }
    \autoBeamOn
    <a cis>16<d fis><f,! a><h d><d, e><fis a>
    <h, d><e g><as, b><cis e><e, fis><g h>
    <c,! e><fis a><b, c><des f><g,! a!><c e>
    \change Staff = LH
    fis,
    \change Staff = RH
    \stemUp
    <cis' e><d fis>
    \clef bass
    \stemNeutral
    a[ f! b]
  }
  <<
    {
      gis8 g
    }
    \\
    {
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \tuplet 3/2 8 {d16 e f g[ f g]}
    }
  >>
  \clef treble
  <<
    {
      \stemDown
      c!2.
    }
    \\
    {
      \stemUp
      \tuplet 6/4 4 {
        \once\override Rest.extra-offset = #'(0 . 8)
        r16 f g d' b c~ c8.
        \clef bass
        cis,,8 a32 f
      }
      \stemDown
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \once\override Rest.extra-offset = #'(0 . 6)
      r32 cis' fis gis his, a' fis g,
    }
  >>
  \times 4/6 {
    \repeat unfold 9 {r8 des'[ ges des' b ges]}
    \clef treble
    b[ des ges des' b ges] b[ des ges des' b ges] b[
    \ottava #1
    \set Staff.ottavation = #"8"
    des ges des' b ges]
  }
  \bar "||"
  \cadenzaOn
  \stemUp
  des'8 as ges! des as ges des as
  \bar ""
  \stemDown ges
  \clef bass
  \stemUp
  des
  \stemNeutral
  \change Staff = LH
  ges,,32[ as
  \change Staff = RH
  des ges]
  \change Staff = LH
  as,[ des
  \change Staff = RH
  ges as]
  \change Staff = LH
  des,[ ges
  \change Staff = RH
  as des]
  \change Staff = LH
  ges,[ as
  \change Staff = RH
  \clef treble
  des ges]
  \change Staff = LH
  as,[ des
  \change Staff = RH
  ges as]
  \change Staff = LH
  des,[ ges
  \change Staff = RH
  as des]
  \bar ""
  \change Staff = LH
  es,[ ges
  \change Staff = RH
  as es']
  \change Staff = LH
  b,[ ges'
  \change Staff = RH
  as b]
  \change Staff = LH
  des,[ ges
  \change Staff = RH
  as des]
  \change Staff = LH
  es,[ ges
  \change Staff = RH
  as es']
  \change Staff = LH
  ges,[ as
  \change Staff = RH
  des ges]
  \change Staff = LH
  as,[ des
  \change Staff = RH
  ges as]
  \change Staff = LH
  ces,[ des
  \change Staff = RH
  ges ces]
  \change Staff = LH
  b,[ des
  \change Staff = RH
  ges b]
  \change Staff = LH
  des,[ ges
  \change Staff = RH
  as des]
  \change Staff = LH
  \ottava #1
  \set Staff.ottavation = #"8"
  f,[ as
  \change Staff = RH
  \ottava #1
  \set Staff.ottavation = #"8"
  des f]
  \change Staff = LH
  ges,[ as
  \change Staff = RH
  des ges]
  \change Staff = LH
  as,[ des
  \change Staff = RH
  ges as]
  \change Staff = LH
  b,[ des
  \change Staff = RH
  ges b]
  \change Staff = LH
  c,![ des
  \change Staff = RH
  ges c!]
  \change Staff = LH
  cis,[ ges'
  \change Staff = RH
  as cis]
  \change Staff = LH
  d,![ f
  \change Staff = RH
  a d!]
  \change Staff = LH
  e,![ f
  \change Staff = RH
  a e']
  \change Staff = LH
  h,[ f'
  \change Staff = RH
  a h]
  \change Staff = LH
  d,[ f
  \change Staff = RH
  a d]
  \change Staff = LH
  e,[ f
  \change Staff = RH
  a e']
  \change Staff = LH
  d,[ f
  \change Staff = RH
  a d]
  \change Staff = LH
  e,[ f
  \change Staff = RH
  a e'] d[ a
  \ottava #0
  \change Staff = LH
  f e]
  \ottava #0
  \change Staff = RH
  d[ a
  \change Staff = LH
  f e]
  \change Staff = RH
  d[ a
  \change Staff = LH
  f e]
  \change Staff = RH
  \clef bass
  d[ a
  \change Staff = LH
  \clef bass
  f e]
  \change Staff = RH
  d[ a
  \change Staff = LH
  f e]
  \change Staff = RH
  s1
  \clef treble
  \cadenzaOff
  \bar "||"
  \break
  \time 4/2
  \override Staff.TimeSignature #'stencil = ##f
  r1 r2 r16-\markup {\italic legato} es'' g b es g b es
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      g8. f16 es8. d16 c8. b16
    }
    \\
    {
      g'16 es, b' f' es b, g' d' c g, f' b
    }
  >>
  g b, es, <es' f> b es, d' <c es> b b, es <b f'>
  g es' g b es g b es
  <<
    {
      g8. f16 es8. d16 c8. b16
    }
    \\
    {
      g'16 es, b' f' es b, g' d' c g, f' b
    }
  >>
  \stemDown
  g b, \repeat unfold 3 {es, <es' f> b es, <f' g> b,}
  \stemNeutral
  \repeat unfold 2{ es, as g c b g' es b' f b8.}
  f16 b ges es' b f'8.
  r8-\markup {\italic rit.}
  \makeOctaves #-1 {fis,,\noBeam d' g, cis2}
  \clef bass
  <b,, es ges>1->
  \bar "||"
  \time 4/4
  R1*6
  \clef treble
  <<
    {
      e'4.\rest g,8 b <es g>4 b8_~ b4 <b es>2.
      e4.\rest g,8 b <es g>4 b8_~ b4 <c f>2.
    }
    \\
    {
      <es' g b es>1\arpeggio <b' es g b>\arpeggio
      <es, g b es>\arpeggio s
    }
  >>
  <h, dis gis>4-.-> r2.
  R1*4
  \override TupletNumber #'transparent = ##f
  \tuplet 7/4 4 {
    \change Staff = LH
    \override Slur.eccentricity = #3.0
    dis,16( ais' dis gis
    \change Staff = RH
    ais dis gis ais gis dis ais
    \change Staff = LH
    gis dis ais)
    cis,( gis' cis fis
    \change Staff = RH
    gis cis fis gis fis cis gis
    \change Staff = LH
    fis cis gis)
    \revert Slur.eccentricity
    \shape #'((0 . 0) (-1.5 . 1.5) (-2 . -3) (0 . 0)) Slur
    h,( fis' h e
    \change Staff = RH
    fis h e
  }
  fis32 e h fis
  \change Staff = LH
  \clef treble
  e h e fis
  \times 8/9 {
    h
    \change Staff = RH
    e fis h e
    \change Staff = LH
    e,, fis h e
  }
  \change Staff = RH
  \times 8/11 {
    fis h e fis
    \change Staff = LH
    \stemUp
    h,, e fis h
    \change Staff = RH
    \ottava #1
    \set Staff.ottavation = #"8"
    \stemDown
    e fis h
  }
  \stemNeutral
  e4)
  \ottava #0
  r16\fermata
  <<
    {
      \shape #'((0 . 0) (1 . .5) (3 . .5) (4 . -3)) Slur
      ais,,16( h ais)
    }
    \\
    {
      dis,8.
    }
  >>
  \override TupletBracket #'bracket-visibility = ##t
  \times 2/3 {
    <cis gis'>4<h, cis dis fis><gis ais e>
  }
  <fis ais dis>2 r
}
