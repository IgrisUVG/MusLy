\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "noteHeads.ly"
\include "myNoteHeads.ly"

top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

rechtsOne = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \key f \major
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \time 5/4
  r4 \times 4/5 {c'16 f a b g}
  <<
    {
      \mergeDifferentlyHeadedOn
      c4( d e f2)
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \tuplet 5/4 4 {
        c16 a g d c d' a b f e e' cis b g e
        f' cis d a e f a d e g
      }
    }
  >>
  \tuplet 5/4 4 {
    as e f h, c as fis g e c d e g a b
  }
  \time 4/4
  a \repeat unfold 8 {h c g' f} c des g f cis d g
  <<
    {
      \repeat unfold 4 {f e f g} \repeat unfold 2 {fis e fis g}
      fis \repeat unfold 4 {cis d fis e} c! d f! e
      \repeat unfold 2 {c d f e} c d f
    }
    \\
    {
      f4 b,~ b2. d4 gis,2 g~ g1
    }
    \\
    {
      \voiceTwo
      s2 s1*2 s4 as2.
    }
  >>
  \time 7/8
  \stemUp
  c4
  \stemNeutral
  \set PianoStaff.connectArpeggios = ##t
  s2 <es, as c es>8\arpeggio
  \time 3/4
  <f as c g'> r s4
  \stemDown
  c16 f e b'
  \stemNeutral
  \time 4/4
  <<
    {
      c4
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \times 2/3 {c8 g f}
    }
  >>
  r4 <d' g c><c f a>
  \break
  r
  <<
    {
      b4
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \times 2/3 {b8 g d}
    }
  >>
  r4
  <<
    {
      g4 a2
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \tuplet 3/2 4 {g8 d a a' f e}
    }
  >>
  r4
  <<
    {
      <f b>
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \times 2/3 {f8 e c}
    }
  >>
  \break
  \cadenzaOn
  r4 h16[ c d f] g[ as d as'] <g d' f>2
  \stemDown
  \ottava #1
  \set Staff.ottavation = #"8"
  \teeny
  as'16 c[ b \times 8/9 {
    as g f es des
    \ottava #0
    c b as g
  } \times 8/9 {f es des c b as g f es]}
  \cadenzaOff
  \stemNeutral
  \bar "||"
  \time 4/4
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  <<
    {
      \repeat unfold 20 {<f ges>4} \repeat unfold 12 {<h c>4}
      <a d e>1~ q q <f_~ g_~ c~><f_~ g_~ c~><f g c!>
    }
    \\
    {
      \repeat unfold 2 {<des~ es~ as^~>1 q} q <d g a>~ q q
      \repeat unfold 12 {<fis g>4} \repeat unfold 12 {<a b>4}
    }
  >>
  <<
    {
      s2 s8 d~ d4~ d8 e~ e2.
    }
    \\
    {
      \repeat unfold 6 {<a, b ces>4}
      <a b ces>
      <<
        {
          \voiceThree
          \once \override NoteHead #'X-offset = #2.2
          \once \override Stem #'rotation = #'(-35 0 0)
          \once \override Stem #'extra-offset = #'(0 . -3.7)
          \once \override Stem #'length = #8
          \hide Flag
          %\once \override Flag.stencil = ##f
          \once \override Accidental #'extra-offset = #'(3.7 . 0)
          c!4\noBeam
        }
        \\
        {
          %\once\override Beam.positions = #'(-3 . -3)
          \once \override Stem #'extra-offset = #'(0 . .4)
          \once \override Stem #'length = #9
          \override Accidental #'extra-offset = #'(1.3 . 0)
          \displaceHeads #'(-1 .1 -.9)
          <a! b ces>4
        }
      >>
    }
  >>
  \repeat unfold 8 {
    <<
      {
        \voiceThree
        \once \override NoteHead #'X-offset = #2.2
        \once \override Stem #'rotation = #'(-35 0 0)
        \once \override Stem #'extra-offset = #'(0 . -3.7)
        \once \override Stem #'length = #8
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental #'extra-offset = #'(3.7 . 0)
        c!4\noBeam
      }
      \\
      {
        %\once\override Beam.positions = #'(-3 . -3)
        \once \override Stem #'extra-offset = #'(0 . .4)
        \once \override Stem #'length = #9
        \override Accidental #'extra-offset = #'(1.3 . 0)
        \displaceHeads #'(-1 .1 -.9)
        <a! b ces>4
      }
    >>
  }
  \repeat unfold 2 {
    <<
      {
        \voiceThree
        \once \override NoteHead #'X-offset = #2.2
        \once \override Stem #'rotation = #'(-35 0 0)
        \once \override Stem #'extra-offset = #'(0 . -3.7)
        \once \override Stem #'length = #8
        \hide Flag
        %\once \override Flag.stencil = ##f
        \once \override Accidental #'extra-offset = #'(3.7 . 0)
        c!2\noBeam
      }
      \\
      {
        %\once\override Beam.positions = #'(-3 . -3)
        \once \override Stem #'extra-offset = #'(0 . .4)
        \once \override Stem #'length = #9
        \override Accidental #'extra-offset = #'(1.3 . 0)
        \displaceHeads #'(-1 .1 -.9)
        <a! b ces>2
      }
    >>
  }
  \clef bass
  \accidentalStyle default
  \myBigFillNoteHeads
  \override Script.font-size = #3
  \override Script.Y-offset = #-1
  \xLV #3 e,,,1\laissezVibrer\fermata
  \normalNoteHeads
  \bar "|."
}

rechtsTwo = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  \repeat unfold 2 {
    <es' g!>8<d gis><des a'!><c ais'><des a'><d gis> \bar ":|.|:"
  }
  \break
  <es g! d'>8<d! gis des'><des a'! c><c ais' h><des a' c><d gis des'!>
  \bar ":|.|:"
  <<
    {
      <es g! d'>8<d! gis des'><des a'! c><c ais' h><des a' c><d gis des'!>
    }
    \\
    {
      \override NoteColumn.force-hshift = #1.6
      s8 f4->
      \once\override NoteColumn.force-hshift = #1.3
      f->
      \once \omit Flag f8->
    }
  >>
  \bar ":|.|:"
  \break
  <es g!>8<d gis><des a'!><c ais'><des a'><d gis> \bar ":|.|:"
  <es g! d'>8<d! gis des'><des a'! c><c ais' h><des a' c><d gis des'!>
  \bar ":|.|:"
  <<
    {
      <es g! d'>8<d! gis des'><des a'! c><c ais' h><des a' c><d gis des'!>
    }
    \\
    {
      \override NoteColumn.force-hshift = #1.6
      s8 f4->
      \once\override NoteColumn.force-hshift = #1.3
      f->
      \once \omit Flag f8->
    }
  >>
  \bar ":|.|:"
  <es g! d'>8<d! gis des'><des a'! c><c ais' h><des a' c><d gis des'!>
  \bar ":|."
}

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

rechtsThree = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  r8\sff \makeOctaves #1 {
    g'8-> ges-> d-> f4->~ f2 r4 r8 gis-> g-> es-> ges4->~ ges2.\fermata
  }
  \bar "||"
  \time 4/1
  \repeat unfold 2 {
    <f ges'!>8<ges! d'>
    <<
      {
        <f b>2 s4
      }
      \\
      {
        r4 r8 g,!( fis!4)
      }
    >>
    <f' ges'!>8<ges d'><f b>2.
  }
  \bar "|."
}