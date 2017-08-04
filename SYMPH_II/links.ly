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

links = \relative {
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \override Staff.TimeSignature #'stencil = ##f
  R1*228
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  R2.*16
  <<
    {
      des,16 b' f' b s2 a,,16 f' c' f s2
      b,,16 ges' des' ges s2 f,,16 a' f' c' s2
    }
    \\
    {
      des,,2. a b f
    }
  >>
  \clef treble
  <b''' g' d'>4\arpeggio s2 s2.*3 s4.
  \clef bass
  s4. s2.*2 s4 <b, c es fis>2->
  \clef treble
  <d d'>2.(~ q4 <a a'>2 <b b'>2.~ q4 <a d a'>2 <b c b'>2.)
  R2.*19
  \cadenzaOn
  r1 r4.
  \clef treble
  \ottava #1
  \set Staff.ottavation = #"8"
  his'''8[ cis fis, gis cis, dis a]~ a2.
  \ottava #0
  s
  %\clef bass
  \cadenzaOff
  \bar "."
  \time 4/4
  R1*11
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \tuplet 6/4 4 {
    s2. s4. s8. r8 h,16(
    \stemDown
    <fis cis'> d')
    \change Staff = RH
    h'(
    \change Staff = LH
    fis16
    \change Staff = RH
    d')
    \change Staff = LH
    h,(	<ges d'> es')
    \change Staff = RH
    h'(
    \change Staff = LH
    ges
    \change Staff = RH
    es')
    \change Staff = LH
    h,~( <e, h'> cis'!)
    \change Staff = RH
    a'(
    \change Staff = LH
    e
    \change Staff = RH
    cis'!)
    \change Staff = LH
    h,( <gis cis> dis')
    \change Staff = RH
    h'(
    \change Staff = LH
    gis
    \change Staff = RH
    dis')
    \change Staff = LH
    h,( <g! dis'> e')
    \change Staff = RH
    h'(
    \change Staff = LH
    g!
    \change Staff = RH
    e')
    \change Staff = LH
    h,( <fis d'> e')
    \change Staff = RH
    cis'(
    \change Staff = LH
    a
    \change Staff = RH
    e')
    \change Staff = LH
    h,( <e, cis'> d')
    \change Staff = RH
    a'(
    \change Staff = LH
    fis
    \change Staff = RH
    cis')
    \change Staff = LH
    a,(
    \once\override Beam.positions = #'(-6 . -3.5)
    <d, h'> cis')
    \change Staff = RH
    fis(
    \change Staff = LH
    e
    \change Staff = RH
    a) <d fis>
    \change Staff = LH
    \stemNeutral
    \clef bass
    es,,,,,4->\laissezVibrer
    \clef treble
    a'''16( h cis) e,( f! g) h,_( c!
    \stemDown
    d)
    \clef bass
    fis,( gis ais) d,( e
    \stemNeutral
    fis8) h16 d,,[ a' e']
  }
  <<
    {
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \times 4/6 {e,8 a16~} a8 <f,! f'!>2
    }
    \\
    {
      s8 \tuplet 6/4 4 {
        \override TupletNumber #'transparent = ##t
        \override TupletBracket #'bracket-visibility = ##f
        dis'8 cis16 s4. <f' g a>16 f' e^~ e8.
      }
    }
  >>
  <d,,,! d'!>4
  <<
    {
      \makeOctaves #1 {ges1_> d!_> h!_> a'!_> f_>}
    }
    \\
    {
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \stemUp
      \override Rest.extra-offset = #'(0 . 9)
      \tuplet 6/4 2 {
        \repeat unfold 4 {
          r8 as'[ es' as f des] b[ as es' as f des]
        }
        r8 as[ es' as f des] b[
        \clef treble
        as' es' as f des]
      }
    }
  >>
  \tuplet 6/4 2 {
    b[ as' es' as f des] b[
    \ottava #1
    \set Staff.ottavation = #"8"
    as' es' as f des]
  }
  \bar "||"
  \cadenzaOn
  <<
    {
      \change Staff = RH
      \stemDown
      des'32[ as
      \change Staff = LH
      \stemUp
      ges des]
    }
    \\
    {
      b8
    }
  >>
  \stemNeutral
  \change Staff = RH
  as'32[ ges\ottava #0
  \change Staff = LH
  des as]\ottava #0
  \change Staff = RH
  ges'[ des
  \change Staff = LH
  as ges]
  \change Staff = RH
  des'[ as
  \change Staff = LH
  ges des]
  \change Staff = RH
  as'[ ges
  \change Staff = LH
  des as]
  \change Staff = RH
  ges'[ des
  \change Staff = LH
  as ges]
  \change Staff = RH
  des'[ as
  \change Staff = LH
  ges des]
  \change Staff = RH
  as'[ ges
  \change Staff = LH
  des as]
  \once \override Staff.Clef.X-extent = #'(8 . -6)
  \clef bass
  \change Staff = RH
  ges'[ des
  \change Staff = LH
  as ges]
  \bar ""
  \change Staff = RH
  des'[ as
  \change Staff = LH
  ges des]
  <<
    {
      \once\override NoteColumn.force-hshift = #-1.3
      ges,1
    }
    \\
    {
      ges8 as des
      \clef treble
      ges as des es b
    }
  >>
  \bar ""
  \stemDown
  des es ges as ces b des f ges
  \bar ""
  as b c! cis d! e! h d e
  \bar ""
  d e s4. s4
  <es,,,,, es'>1~\fermata
  \cadenzaOff
  \bar "||"
  \time 4/2
  \override Staff.TimeSignature #'stencil = ##f
  \stemNeutral
  \repeat unfold 4 {
    <es es'>4. b''8 f' as g <es f> b'4 as8 b,4 <g' b>4.
  }
  \mergeDifferentlyHeadedOn
  <<
    {
      s2. <d fis>4
    }
    \\
    {
      \voiceOne
      s2 f,8 cis'_~ \stemDown cis4
    }
    \\
    {
      \voiceTwo
      \override Rest.extra-offset = #'(0 . 10)
      r2 f,
    }
    \\
    {
      \makeOctaves #-1 {h,!1}
    }
  >>
  \makeOctaves #-1 {es!1->}
  \bar "||"
  \time 4/4
  R1*6
  <es b'>4. es'8 f as g <es f>~ q4 as b,8 <g' b>4.
  <es, b'>4. es'8 f as g <es f>~ q4 b' c,8 <a'! c>4.
  <gis, gis'>4-.-> r2.
  R1*4 s1*2 r4 r16\fermata <h' ais'>8.
  \override TupletNumber #'transparent = ##f
  \override TupletBracket #'bracket-visibility = ##t
  \once\override TupletBracket.direction = #DOWN
  \times 2/3 {
    <a! dis e>4
    \clef bass
    <e, e'><dis dis'>
  }
  <cis gis' cis>2 r
}
