\version "2.19.15"

\language "deutsch"

top = \change Staff = "RH"
bot = \change Staff = "LH"

rechts = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  R1*12
  \time 3/4
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  R2. c''4.( b8 as g f2~ f8 as des4. b8) g'( f es4. d)
  g16( f \tuplet 3/2 {es16 f g} b4. as8) es'4~ es8. as,16-. g4( f es2)
  b4.( as8 g f es2~ es8 g c4 b8) g'16( f es4~ es4. des8 c4
  b2~ b8 des~ des4. ges,8 as4 ges b8. g16 f4~ f)
  %  костыли группировки
  <<
    {
      \stemDown
      f'4.( es8
      \stemUp
      d c b2~ b8 des g4. es8 c' b des[ c])
    }
    \\
    {
      s2
      g,4->( as8) f4->( b8~ b) as->( f'[) des]->( c des)
      es4 f
    }
  >>
  r4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  \ottava #1
  \set Staff.ottavation = #"8"
  es''32( c as es
  \ottava #0
  c as es c
  \stemUp
  as es
  \bot
  c as <c, es as>4.~ q2)
  \top
  r4 R2.*2
  \time 4/4
  <<
    {
      r16 c'''64[(
      \bot \clef treble as
      \top b \bot g] \top as \bot f \top g \bot des \top f \bot b, \top des \bot as
      \top b[ \bot g \top as \bot f \top g \bot des \top f \bot \clef bass b,] \top des \bot as
      \top \clef bass b \bot g \top as \bot f \top g \bot des
      \top f32 \bot b, \top des16. \bot as as,4)
    }
    \\
    {
      \bot
      \stemUp
      as'2. s4
    }
  >>
  r8 <b es g>16 \bot <c,, c'>~ q2.
}


rechtsVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}