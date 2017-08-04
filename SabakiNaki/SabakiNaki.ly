\version "2.18.0"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #14
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #23
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  %indent = #0
}

\book {

  \header {
    title = "СабакиНаки"
    subtitle = "Tenor Sax"
    meter = ""
    composer = ""
    tagline = ##f
  }

  \score {
    \new StaffGroup \relative fis' {
      \new Staff
      \clef treble
      \key fis \minor
      \override Score.MetronomeMark.padding = #5
      \tempo 4= 160
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      <fis fis'>1~( <fis fis'> <a a'>8 <fis fis'>) r4 r2 \bar ":|.|:"
      r4 fis fis r fis r8 e( fis4) r \bar ":|."
      h r8 a( h4) r a r8 fis( a4) r \bar ".|:"
      fis e fis4. e8 fis4 \acciaccatura fis8 e4 fis r\bar ":|.|:"
      \stemUp
      h a h4. a8 h4 \acciaccatura h8 a4 h r <cis, cis'>1 <d d'> \break
      \stemNeutral
      <<
        { R1*12 }
        \new Staff{
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key e \minor
          \clef bass
          \once \omit Staff.TimeSignature
          \repeat percent 4 {e,,4 g fis f}
          \repeat percent 2 {a c h b}
          \repeat percent 2 {e,4 g fis f}
          h h h h h h h h
          c c c c h a g fis \bar ":|."\break
        }
      >>
      R1 r2 r8 a''->~( a4 fis) r4 r2 R1 \bar ":|." h c
      \bar "||" \pageBreak
    }
    \header {
      piece = "Настроечная"
      breakbefore = ##t
    }
  }

  \score {
    \relative e' {
      \clef treble
      \key e \major
      \override Score.MetronomeMark.padding = #3
      \tempo Swing 4= 105
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*4
      e8. e16 gis8. gis16 g8. g16 fis8. fis16\bar ".|:"
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      e4   r8. e16( d8. h16) \times 2/3 {r8[ h( d]}
      e4)  r8. e16( d8. h16) \times 2/3 {r8[ h( d]}
      a'4) r8. a16( g8. e16) \times 2/3 {r8[ e( g]}
      a4)  r4  a8. gis16( g8.) fis16(
      e4)  r8. e16( d8. h16) \times 2/3 {r8[ h( d]}
      e4)  r8. e16( d8. h16) \times 2/3 {r8[ h( d]}
      a'8.) a16 gis8. gis16 g8. g16 \times 2/3 { fis8( g fis)}
      \bar ":|." \pageBreak
    }
    \header {
      piece = "Зелёнай плюс"
      %breakbefore = ##t
    }
  }

  \score {
    \relative fis' {
      \clef treble
      \key fis \minor
      \override Score.MetronomeMark.padding = #3
      \tempo 4= 170
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      \repeat percent 3 {fis8[ fis r h] his[( cis) r a]} r fis4-> gis-> a-> ais,8(
      \repeat percent 4 {h8[) h r e] eis[( fis) r d]}
      \repeat percent 4 {fis8[ fis r h] his[( cis) r a]}
      cis,8[ cis r fis] fisis[( gis) r eis]
      h8[ h r e] eis[( fis) r d]
      fis8[ fis r h] his[( cis) r a]
      r8 cis-> r cis->~ cis2
      \tempo \markup \normal-text {\box 1}
      R1*12 cis,4 r2 cis8( c h4) r r2 R1
      r8 cis' cis cis cis( h) a gis
      \break
      \tempo \markup {\normal-text {\box 2 Solo \box 3 Guitar solo}}
      \bar ".|:"
      fis4 cis fis cis8 e( fis4) cis fis cis8 e(
      fis4) cis fis cis8 e( fis4) cis fis8( e) d cis
      h4 fis' h, fis'8 ais,( h4) fis' h, fis'8 ais,(
      h4) fis' h, fis'8 ais,( h4) fis' h,8( cis) d e
      fis4 cis fis cis8 e( fis4) cis fis cis8 e(
      fis4) cis fis cis8 e( fis4) cis fis8( e) d his(
      cis4) gis' cis, gis'8 ais,( h4) fis' h,8( cis) d e
      fis4 cis fis cis fis8\noBeam cis' cis cis cis( h) a gis
      \bar ":|."
      fis4 r8 fis4 r8 fis4~ fis1
      \bar "|." \pageBreak
    }
    \header {
      piece = "Луби меню"
      %breakbefore = ##t
    }
  }

  \score {
    \relative h' {
      \clef treble
      \key fis \major
      \override Score.MetronomeMark.padding = #3
      \tempo 4= 180
      \time 4/4
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      \partial 4. r4.
      r8 fis'4.-> fis8-. r4.
      r8 ais4.-> ais8-. r4.
      cis8-> r4. r2 R1 \bar "||"
      \repeat percent 2 { h,8 h fis fis dis dis fis fis}
      \repeat percent 2 { cis' cis ais ais fis fis ais ais}
      cis cis eis eis cis cis gis gis
      h h dis dis h h fis fis ais r4. r2
      r8 <h h'>( <his his'> <cis cis'>) r2
      \bar ":|." \pageBreak
    }
    \header {
      piece = "Пианый пшек"
      %breakbefore = ##t
    }
  }

  \score {
    \relative h {
      \clef treble
      \key h \major
      \once \override Score.MetronomeMark.padding = #5
      \tempo 4= 140
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \override MultiMeasureRest.expand-limit = #2
      \compressFullBarRests
      R1*3 r2 r4 r8 ais(
      h4) r r2 r2 r4 r8 ais(
      h4) r r2 r2 r4 r8 e(
      fis4) r2 r8 dis( e4) r2 r8 e(
      fis4) r2 r8 dis( e4) r r2
      r2 r8 fis16( e dis8) cis
      h4 r r4. ais8( h4) r r2\break \mark \default
      \repeat volta 6 {
        r2 r8 ais( h4) R1 r2 r8 ais( h4) R1
        r2 r8 e( fis4) r2 r8 dis( e4) r2 r8 e(
        fis4) r2 r8 dis( e4)
      }
      \alternative{
        {
          r2 r8 fis16( e dis8) cis
          h4 r r4. ais8( h4) r r2\break
        }
        {R1 }
      }
      %\override Score.MetronomeMark.padding = #3
      \tempo \markup { \normal-text Solo }
      r8 h''4 gis8 fis4 gis h gis8 dis'~ dis2
      r8 h4 gis8 fis4 gis h gis8 fis~ fis2
      r8 ais4 cis8 ais4 fis e8 gis4 h8~ h2
      ais4. h8 cis dis4 e8~ e1
      \repeat percent 3 {e,8 e dis dis d d cis cis}
      h4 r8 h~ h2
      \bar "|." \pageBreak
    }
    \header {
      piece = "Какыть"
      %breakbefore = ##t
    }
  }

  \score {
    \relative c' {
      \clef treble
      \key fis \minor
      \once \override Score.MetronomeMark.padding = #5
      \tempo 4= 180
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*4
      \bar "|." \pageBreak
    }
    \header {
      piece = "г. Москва"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords          
          h1*4 e d h
        }
      }
      \new Staff{
        \relative h' {
          \clef treble
          \key h \minor
          \once \override Score.MetronomeMark.padding = #5
          \tempo 4= 110
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \override MultiMeasureRest.expand-limit = #3
          \compressFullBarRests
          R1*16
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Усральская"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*8
          h1*4 e fis1*7 h1
        }
      }
      \new Staff{
        \relative h' {
          \clef treble
          \key h \major
          \tempo 4 = 190
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \compressFullBarRests
          R1*8
          \repeat volta 2 {
            \repeat percent 4 {h,4 r8 \grace cisis8( dis4.) fis4}
            \repeat percent 4 {e4 r8 \grace fisis8( gis4.) h4}
            \repeat percent 4 {fis4 r8 \grace gisis8( ais4.) cis4}
            fis,4 r8 \grace gisis8( ais4.) cis4 e4 r8 \grace gisis,8( ais4.) cis4
            fis,4 e dis cis h4 r8 \grace cisis8( dis4.) fis4
          }
          \alternative{
            {h,4 r8 \grace cisis8( dis4.) fis4}
            {h,4 r2 \large ais'4(}
          }
          \tempo \markup { \normal-text Solo }
          h) h h ais h h r ais h h h cis( dis2) r4 dis( e) e e dis e e r dis(
          e) e e
          <<
            {
              \tiny
              s2
              \once \override PhrasingSlur #'positions = #'(5.7 . 4.7)
              cis'4\( c h \hideNotes ais\)
            }
            \\
            {\large fis4^( gis2) r4 h^( ais)}
          >>
          r r8 ais ais gis ais ais r2 h4(
          ais) r r8 ais ais gis ais4 r2 h4 cis h ais gis gis( g fis) dis(
          e) r r8 dis( d cis h4) r2.
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Подлецкая"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          \partial 8 s8
          d1 a g f2 g a1*2 d1 c2 d
          d1 c2 d1. a1 g f2 g a1*2 d1
        }
      }
      \new Staff{
        \relative d' {
          \clef treble
          \key d \major
          \tempo 4 = 100
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \partial 8 cis8(\bar ".|:"
          d4-.) r2 r8 d( |e4-.) r8 d( cis4) cis16( d) e-. fis-.|
          g4-. r2 r8 g( |f4-.) r8 f( g4-.) r8 f( |
          e4-.) r2 r8 d( |cis4-.) r2 a'16( g) fis-. e-. \bar "||"
          d4-. r2 r8 d( |c4-.) r8 c( d4-.) a'16( g) fis-. e-. \bar ":|."\break
          \tempo \markup { \normal-text Solo }
          \large
          r8 fis'4( d8) e( fis4.) |
          g4( e8) fis~ fis2 | r8 fis4( d8) e( fis) a4-> |
          h8 cis4.
          \hideNotes
          \grace {g8\glissando }
          \unHideNotes
          e'8 cis h( a) |r8 h4( g8) a( h4.) |c4( a8) h~ h2 |
          r8 cis!4( a8 h)
          e-> cis( h) |a4 g fis e d1
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Похмело"
      %breakbefore = ##t
    }
  }

  \score {
    \relative fis'' {
      \clef treble
      \key h \major
      \override Score.MetronomeMark.padding = #5
      \tempo 4 = 160
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \override MultiMeasureRest.expand-limit = #2
      \compressFullBarRests
      R1*3
      r2 r4 r8 ais,,8( h4) r4 r2
      r2 r4 r8 ais8( h4) r4 r2
      r2 r4 r8 cis8( d4) r4 r2
      r2 r4 r8 e8( fis4) r4 r2
      r4. fis16 fis fis8 e dis cis\bar ".|:"
      h4^\markup {\italic {K = 1, 2, 3}} r4 r2 r2 r4 r8 ais8( h4) r4 r2
      r2 r4 r8 cis8( d4) r4 r2
      r2 r4 r8 e8( fis4) r4 r2
      r4. fis16 fis fis8 e dis cis\bar ":|."\break
      \override Score.MetronomeMark.padding = #2
      \tempo \markup { \normal-text Guitar }
      h4 r4 r2
      \tempo \markup { \normal-text Drums }
      R1
      \tempo \markup { \normal-text Bass }
      R1
      \tempo \markup { \normal-text Laught }
      r2 r4
      \tiny
      fis''\bar ".|:"\break
      \times 2/3 {fis4 gis fis} \times 2/3 {h4 gis fis}
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {dis4 h2} r4 fis'
      \times 2/3 {fis4 gis fis} \times 2/3 {h4 gis fis}
      dis2. dis4(
      \times 2/3 {d4) d d} \times 2/3 {d4 e d} fis4 d r gis
      \times 2/3 {fis4 fis fis} \times 2/3 {cis'4 cis cis}
      fis,2 r4 fis\bar ":|."\break
      \override Score.MetronomeMark.padding = #3
      \tempo \markup { \normal-text Solo }
      \large
      h2. a8 gis fis h,~ h2.
      h'2. a8 gis fis1
      d2. e8 d fis d~ d2.
      ais'2. cis8 ais fis1
      h4 h h a8 gis fis h,~ h2.
      h'4 h h a8 gis fis1
      \times 2/3 {d4 d d} \times 2/3 {d4 e d} fis8 d~ d2.
      \times 2/3 {fis4 fis fis} \times 2/3 {cis'4 cis cis} fis,1
      \bar "|." \pageBreak
    }
    \header {
      piece = "Коммуналко"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          R2*40 |d2 h:m7 e:m7 a:7 d e:m7 a1:7
          a:7 e2:m7 d a1:7 e2:m7 d a1:7 d
        }
      }
      \new Staff{
        \relative d'' {
          \clef treble
          \key d \major
          \override Score.MetronomeMark.padding = #5
          \tempo 4 = 70
          \time 2/4
          \override Staff.TimeSignature #'stencil = ##f
          d4~ \times 2/3 {d8 e fis} |d4~ \times 2/3 {d8 e fis} |
          a16 fis h4 a8 d4 r8 h16 a fis e a8~ \times 2/3 {a8 e d} |
          \times 2/3 {h8 a h~} h8 a32( h cis d |
          \times 2/3 {e8) fis e} \times 2/3 {a8 fis a} |
          \override TupletBracket #'bracket-visibility = #'if-no-beam
          e4 \times 2/3 {d4 cis8} |d4 \times 2/3 {e16( fis g} a8) |
          h4~ \times 2/3 {h8 d e} |e8 d4 fis8~ |
          \times 2/3 {fis8 d4} \times 2/3 {a8 fis4} |
          \times 2/3 {r8[ e d]} \times 2/3 {h a4~} |a4. g8 |
          fis4. g8 |e4. r8 \bar "||"
          \override MultiMeasureRest.expand-limit = #3
          \compressFullBarRests
          R2*16 |R2*7 |r8. ais,16( h8[) r16 cis](
          \repeat volta 2 {
            d8) r r8. ais16( |h8) r r8. dis16( |e8) r r8. d!16( |
            cis8) r16 ais16( h8[) r16 cis]( |
            d8) r r8. dis16( |e8) r r8. d!16( |
          }
          \alternative {
            {cis8) r r8. gis'16( |a8) r16 ais,16( h8[) r16 cis](\break}
            {cis8) r r4 |r4 r8. dis16(}
          }
          e8) r r8. e16( |d8) r r8. d16( |cis8) r r4 |
          r4 r8. dis16( e8) r r8. e16( |d8) r r8. d16( |
          cis8) r r8. gis'16( \times 2/3{a4) h cis} | d2
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Дамочка"
      %breakbefore = ##t
    }
  }

  \score {
    \relative a' {
      \clef treble
      \key a \major
      \override Score.MetronomeMark.padding = #5
      \tempo 4 = 160
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*4
      cis4 a a g8 a~ |a e'->~ e2. |
      c!4 a a g8 a | R1 |
      cis4 a a g8 a~ |a e'->~ e2. |
      c!4 a a g8 a | R1 |
      h4 g g f8 g~ |g d'->~ d2. |
      h4 g g f8 g | R1 |
      cis4 a a g8 a~ |a e'->~ e2. |
      c!4 a a g8 a | R1 |
      e'4 g g e8 g~ |g a->~ a2. |
      c4 g g8 e4 c8->~ |c1 |
      h4-- h-- a-- a-- |gis-- gis-- fis-- fis-- |
      e-. r8 d->~( d2~ |d8 e d e d16 e32 fis g gis a h cis d e fis g gis a h
      cis4) a a g8 a~ a g->~ g2.~ |g4 fis e8 c4 a8 \bar "||"r4. g8~ g2

      \bar "|." \pageBreak
    }
    \header {
      piece = "G"
      %breakbefore = ##t
    }
  }

  \score {
    \relative fis'' {
      \clef treble
      \key fis \major
      \override Score.MetronomeMark.padding = #5
      \tempo 4 = 160
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1 r2 r4 r8 e,( fis4) r2 r8 e( fis4) r2 r8 ais,(
      h4) r2 r8 e( fis4) r2 r8 his,(
      cis4) r2 cis8( c h4) r2 r8 e(
      fis4) r4 r2 r4 cis'2 cis16( h) ais-. gis-.\bar "||"
      \override Score.MetronomeMark.padding = #3
      \tempo \markup { \normal-text Solo }
      r8 fis' fis8. e16 fis2 r8 fis fis8. e16 fis8 cis'~ cis4
      r8 h h[ a] h[ cis] cis[ h] ais! fis~ fis2.
      r8 cis' cis[ h] cis[ gis] cis[( c] h4) r
      \cadenzaOn
      a8[( h] dis[ cis h a] gis[ cis, dis fis] gis[ a h]
      \cadenzaOff
      \bar "|"
      dis1)
      \bar "|." \pageBreak
    }
    \header {
      piece = "Весна"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*4
          fis1*4 h1*2 fis d1 h fis1*4
          fis1*4 h1*2 fis d1 h fis1*3
          %fis1
          fis1*4 h1*2 fis d1 h fis1*2
          fis1*4 h1*2 fis d1 h fis1*2
          fis1*4 h1*2 fis d1 h fis1*2
        }
      }
      \new Staff{
        \relative fis' {
          \clef treble
          \set Staff.printKeyCancellation = ##f
          \key fis \minor
          \once \override Score.MetronomeMark.padding = #5
          \tempo 4= 170
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \override MultiMeasureRest.expand-limit = #2
          \compressFullBarRests
          %\clef "treble"
          <<
            { s1 s \cueClefUnset s }
            \new CueVoice {
              \cueClef "bass" %\stemDown
              fis,,8^"Bass" fis' e8. h16( c e) a,8 fis4
              fis8 fis' e8. h16( c e) a,8 fis4\break
              fis'8^"Guitar" fis' e8. h16( c e) a,8 fis4
            }
          >>
          fis'8 fis' e8. h16( c e) a,8 fis4
          \bar "||"\break
          \override Score.MetronomeMark.padding = #3
          \tempo \markup \normal-text {\box 1}
          R1 fis8 fis' e8. h16( c e) a,8 fis4
          R1 fis8 fis' e8. h16( c e) a,8 fis4
          R1 h,8 h' a8. e16( f a) d,8 h4
          R1 fis'8 fis' e8. h16( c e) a,8 fis4
          R1*2
          fis8 fis' e8. h16( c e) a,8 fis4 R1 \bar "||"
          R1*2\break
          \tempo \markup \normal-text {\box 2}
          R1*12
          R1\bar "||"
          \tempo \markup \normal-text {Guitar solo}
          R1*12\bar "||"
          \tempo \markup \normal-text {\box 3}
          R1*12\bar "||"
          \tempo \markup \normal-text {Sax solo}
          R1*12
          \bar "||"\break
          \tempo \markup \normal-text {Fine}
          <<
            { s1 \cueClefUnset s }
            \new CueVoice {
              \cueClef "bass" %\stemDown
              fis,,8^"Bass" fis' e8. h16( c e) a,8 fis4
              fis'8^"Guitar" fis' e8. h16( c e) a,8 fis4
            }
          >>
          \break
          fis'8 fis' e8. h16( c e) a,8 fis4
          r4 fis2-> r4
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Настя"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*16
          h1*2 e a d %1
          h e a d %2
          h e cis fis %3
          h e a d %Solo
          h e cis fis %Solo
          h e a d2 cis c h %4
          s1*2 %Pause
          h e a d %1
          h e cis fis %Solo
          h e a d %Solo
          h e cis fis %Solo
          h
        }
      }
      \new Staff{
        \relative h {
          \clef treble
          \key h \major
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \compressFullBarRests
          R1*15 r2 r4 r8 ais(\mark \markup {\box A}
          h)  r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d   r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box A}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d   r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box B}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e dis d
          cis r r4 r2 r r8 cis dis e
          fis r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box A}
          \tempo \markup { \normal-text {Guitar solo} }
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d   r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box B}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e dis d
          cis r r4 r2 r r8 cis dis e
          fis r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box A}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d2 cis c h R1*2 \break\mark \markup {\box A}
          h8  r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d   r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box B}
          \tempo \markup { \normal-text Solo }
          h   r r4 r2 r r8 \teeny h cis dis
          e   r r4 r2 r r8 e dis d
          cis r r4 r2 r r8 cis dis e
          fis r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box A}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e fis gis
          a   r r4 r2 r r8 g fis e
          d   r r4 r2 r r8 \acciaccatura fis8 e8 dis cis\break\mark \markup {\box B}
          h   r r4 r2 r r8 h cis dis
          e   r r4 r2 r r8 e dis d
          cis r r4 r2 r r8 cis dis e
          fis r r4 r2 r r8 \acciaccatura fis8 e8 dis cis
          h   r r4 r2
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = " vДоля"
      %breakbefore = ##t
    }
  }

  \score {
    \relative c' {
      \clef treble
      \key g \major
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*80

      c\break d\break e\break f\break g\break a\break h\break

      \bar ":|." \pageBreak
    }
    \header {
      piece = "Пиво флюс"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*9
          h1*4 e1*2 h1*2 cis1 d
          h1*6
          h1*4 e1*2 h1*2 cis1 d
          h1*2
          s1*4
          h1*4 e1*2 h1*2 cis1 d h1*2
          h1*4 e1*2 h1*2 cis1 d h1*2
          h1*4 e1*2 h1*2 cis1 d h1*2
        }
      }
      \new Staff{
        \relative h' {
          \clef treble
          \key h \minor
          \once \override Score.MetronomeMark.padding = #5
          \tempo 4= 170
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \compressFullBarRests
          r2 r8 h4. h1->~ h2 r8 dis4. dis1->~ dis2 r8 fis4. fis1->~ fis2 r8 a4. a1->~ a
          \bar "||"\mark \markup {\box 1}
          R1*9 r2 r4 r8 ais,,( h4) r2 r8 ais( h4) r2 r8 ais(
          h4) r2 r8 ais( h4) r2 r8 ais( h4) r2 r8 ais( h4) r2 r8 ais(
          \bar "||"\mark \markup {\box 2}
          h4) r4 r2 r2 r8 ais( h4) R1 r2 r8 ais( h4)
          R1 r2 r8 d( e4) R1 r2 r8 ais,( h4)
          cis1( d4) r2 d8( cis h4) r4 r2 R1
          fis'4 g gis a ais h c cis d dis e eis fis2. r8 ais,,( \bar "||"
          \override Score.MetronomeMark.padding = #3
          \tempo \markup { \normal-text {Guitar solo} }
          h4) r4 r2 r2 r8 ais( h4) R1 r2 r8 ais( h4)
          R1 r2 r8 d( e4) R1 r2 r8 ais,( h4)
          cis1( d4) r2 d8( cis h4) r4 r2 R1 \bar ".|:"\break
          \mark \markup {\box 3,4}
          R1 r2 r8 ais( h4) R1 r2 r8 ais( h4)
          R1 r2 r8 d( e4) R1 r2 r8 ais,( h4)
          cis1( d4) r2 d8( cis h4) r4 r2 R1 \bar ":|."
          \override Score.MetronomeMark.padding = #3
          \tempo \markup { \normal-text {Sax solo} }
          \expandFullBarRests
          R1*10
          h'4-> d-> fis,-> a-> h8-> h-> h4-> r2
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Рыббко"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*4
          e1*2 h e h
          s1*4 h1*4
          e1*2 h e fis
        }
      }
      \new Staff{
        \relative e' {
          \clef treble
          \key e \minor
          \once \override Score.MetronomeMark.padding = #5
          \tempo 4= 170
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          %\compressFullBarRests
          \override Stem.neutral-direction = #up
          e1 fis g a\bar ".|:"
          h4 r4 r2 R1
          r4 r8 a8( h4) fis r4 r8 a8( h4) fis
          R1*2
          r4 r8 a8( h4) fis r4 r8 a8( h4) fis
          e1 fis g a
          h4 r8 a8( h4) fis r4 r8 a8( h4) fis
          r4 r8 a8( h4) fis r4 r8 a8( h4) fis\bar "||"\break
          e4 d e8 d4( dis8 e4) d e8 d4( dis8)
          h'4 a h8 a4( ais8 h4) a h8 a4( ais8)
          e4 d e8 d4( dis8 e4) d e8 d4( dis8)
          fis4 e fis8 e4( eis8 fis4) e fis8 e4( eis8)
          \bar ":|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Огсана"
      %breakbefore = ##t
    }
  }

  \score {
    \relative a'' {
      \clef treble
      \set Staff.printKeyCancellation = ##f
      \key a \major
      \override Score.MetronomeMark.padding = #3
      \tempo "Lento"
      \time 2/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R2*16
      \tempo "Allegro" 4 = 170
      \repeat volta 2 {
        a,4 e a \afterGrace e a16( h4) \afterGrace e, gis16( a4) r
        a4 e a e cis'( c h) r a r8 a( g4) r8 g( fis4) r8 fis( f4) r8 f(
        e4) a e \afterGrace a ais16( h4) \afterGrace e, gis16(
      }
      \alternative {
        {a4) r}
        {a4) r8 cis}
      }
      \tempo \markup { \normal-text Solo }
      e8. e16( dis8) e fis8. e16( dis8) e d!8. his16( cis8) h a4 r8 e'
      a8. a16( gis8) a h8. e,16 gis8( a) fis8. cis16 fis8( f) e4 r8 e
      a4 e8( fis g4) r8 a fis4 d8( e f4) r8 a e s4. s2*3 \bar "||"
      \tempo \markup { \normal-text {Guitar solo} }
      R2*31\pageBreak
      \tempo \markup { \normal-text {Sax solo} }
      r4 cis'( \bar "||"
      \key d \major
      d8) cis c16 cis c h ais8 a gis a h ais a16 ais a gis g!8 fis f fis
      d e16 f fis a h a d8 d h16 a fis8 a a cis16 e cis8 a4~ a16 a h a
      d8 d d d d d h16 a r8 g g g g h16 d e d f d8.
      d,8 d16 fis~ fis8 a e fis16 g~ g a h a d8 d h16 a fis e d8 r r d'16 cis
      h8 a fis d e16 fis e d h8 a16 h d8 d d16 e fis d fis8 a r4
      d,8 fis16 a h a f fis d8 d16 f fis a h8 a a16 c cis e cis8
      a4~ a16 a h a
      d8 d d d d d h16 a r8 g g g g h16 d e d f d8.
      d,8 d16 fis~ fis8 a e fis16 g~ g a h a d8 d h16 a fis e d8 r r4
      \override Score.MetronomeMark.padding = #3
      \tempo \markup { \normal-text {Guitar solo} }
      \key a \major
      R2*16
      \bar "|." \pageBreak
    }
    \header {
      piece = "Каунтря"
      %breakbefore = ##t
    }
  }

  \score {
    \new StaffGroup
    <<
      \new ChordNames {
        \chordmode {
          \germanChords
          s1*4
          s1*4 \bar "||"\break
          h1 cis fis h h1 cis fis h e h e fis h1 cis fis h\bar ".|:"\break
          \mark \markup {\box "A, B"}
          h1 cis fis h h1 cis fis h e h e fis h1 cis fis h\bar ":|."
          s1*6\bar "||" \break
          \tempo \markup { \normal-text {Guitar solo} }
          h1 cis fis h h1 cis fis h e h e fis h1 cis fis h\bar "||"\break
          \mark \markup {\box C}
          h1 cis fis h h1 cis fis h e h e fis h1 cis fis h\bar "||"\break
          \tempo \markup { \normal-text {Solo} }
          h1 cis fis h h1 cis fis h e h e fis h1 cis fis h
        }
      }
      \new Staff{
        \relative h' {
          \clef treble
          \key h \major
          \once \override Score.MetronomeMark.padding = #5
          \tempo 4= 170
          \time 4/4
          \override Staff.TimeSignature #'stencil = ##f
          \compressFullBarRests
          d4 r cis2( d4) r cis2( d4) r cis2 h4 gis fis r
          R1*4
          h8 gis fis gis h gis fis gis cis ais gis ais cis ais gis ais
          fis gis a ais h cis d dis h gis fis gis r4 fis
          h8 gis fis gis h gis fis gis cis ais gis ais cis ais gis ais
          fis gis a ais h cis d dis h gis fis gis r4 fis'
          e8 cis h cis e cis h cis h gis fis gis h gis fis gis
          e' cis h cis e cis h cis fis, g gis a r4 fis'
          h,8 gis fis gis h gis fis gis cis ais gis ais cis ais gis ais
          fis gis a ais h cis d dis h gis fis gis r4 fis
          r4. ais,8( h4) r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. ais8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. dis8( e4)  r r4. ais,8( h4)   r r4. dis8( e4) r r4. eis8( fis4) r
          r4. ais,8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          R1*5 r2
          r4. ais8( h4) r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. ais8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. dis8( e4)  r r4. ais,8( h4)   r r4. dis8( e4) r r4. eis8( fis4) r
          r4. ais,8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r r2
          r4. ais8( h4) r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. ais8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. dis8( e4)  r r4. ais,8( h4)   r r4. dis8( e4) r r4. eis8( fis4) r
          r4. ais,8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. ais8( h4) r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          r4. ais8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          h''2.( gis4 fis1) h2.( his4 cis1)
          r4. ais,,8( h4)  r r4. his8( cis4) r r4. eis8( fis4) r r4. ais,8( h4) r
          d'4 r cis2( d4) r cis2( d4) r cis2 h4 gis fis r
          \bar "|." \pageBreak
        }
      }
    >>
    \header {
      piece = "Смэна"
      %breakbefore = ##t
    }
  }

  \score {
    \relative c' {
      \clef treble
      \key fis \major
      \once \override Score.MetronomeMark.padding = #5
      \tempo 4= 170
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*8
      \bar "|." \pageBreak
    }
    \header {
      piece = "НЗМ"
      %breakbefore = ##t
    }
  }

  \score {
    \relative c' {
      \clef treble
      \key g \major
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*80

      c\break d\break e\break f\break g\break a\break h\break

      \bar ":|." \pageBreak
    }
    \header {
      piece = "Садовое яйцо"
      %breakbefore = ##t
    }
  }

  \score {
    \relative c' {
      \clef treble
      \key g \major
      \time 4/4
      \tempo 4 = 140
      \override Staff.TimeSignature #'stencil = ##f
      %\compressFullBarRests
      R1*80

      c1 d e f g a h

      \bar ":|." \pageBreak
    }
    \header {
      piece = "Философовская"
      %breakbefore = ##t
    }
  }
%%%%%%%%%%%%%%%%%%%%%%% ФОНАРЬ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new StaffGroup
    <<

      \new Staff \with {
        instrumentName = "Guitar"
      }
      \relative e'' {
        \key e \minor
        %\tempo 4 = 120
        \override TextScript #'staff-padding = #'11
        r4 <cis g' h e>^\markup \fret-diagram-terse #"x;x;11;12;12;12;"
        r <d f h f'>^\markup \fret-diagram-terse #"x;x;12;10;12;13;"
        r <d as' b f'>^\markup \fret-diagram-terse #"x;x;12;13;11;13;"
        r8 <cis g' a e'>4.^\markup \fret-diagram-terse #"x;x;11;12;10;12;"
        r4 <e a c fis>^\markup \fret-diagram-terse #"x;x;14;14;13;14;"
        r <e b' c g'>^\markup \fret-diagram-terse #"x;x;14;15;13;15;"
        r <es b' des g>^\markup \fret-diagram-terse #"x;x;13;15;14;15;"
        r8 <d  a' c fis>4.^\markup \fret-diagram-terse #"x;x;12;14;13;14;"
      }
      \new ChordNames {
        \chordmode {
          \germanChords
          e2:m6 g:7 b4.:7 a:7 s4
          a2:m6 c:7 es4.:7 d:7 s4
        }
      }
      \new Staff \with {
        instrumentName = "Bass"
      }
      \relative e,{
        \key e \minor
        \clef bass
        e4 r g r | b r8 a->~ a e( g4) \bar ":|.|:" \break
        a r c r | es r8 d->~ d a( c4) \bar ":|."
      }

    >>

    %\bar ":|." \pageBreak
  }
  \header {
    piece = "Фонар"
    %breakbefore = ##t
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}

