\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

soloVoiceOne = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \key f \major
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \time 5/4
  R4*10 %R4*5
  \time 4/4
  R1 r4 g' a2~ a4 b es,2~ es4 d2.~ d g4 d2. g4
  \time 7/8
  \tuplet 6/4 4 { b4 as8 des4 c8 } f4 r8
  \time 3/4
  r g, c2
  \time 4/4
  a b g a r4 f e2
  \cadenzaOn
  d1 s4
  s8. s1
  \cadenzaOff
  \bar "||"
  \time 4/4
  \revert TupletNumber.transparent
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note #"2" #1
      " = "
      \smaller \general-align #Y #DOWN \note #"8" #1
    }
  }
  r2 f'4.( es32 c des as b2~ b8) es~ es4 as,1~
  as4~ as8. b32( c f es des as'~ as[ ges as b] as4~
  as8~ \times 2/3 {as16) des,( es} as,2) es8 f
  g4~ g16\noBeam d'8. g a16~ a8 d,8~ d2. e16( d8.
  h32c a h g8~ g2) r4 r2 \times 2/3 {g'4( a d,}
  fis32 g e h d8~ d16) e8.~ e2~ e8 fis4-- fis8-- 8 g4-- g8(
  a1)~ a2 r R1 r4 
  \override Slur.positions = #'(1 . 1) 
  as2.-\shape #'((0.5 . -1.5) (0.5 . -1) (0.5 . -1) (-0.5 . -1.5))^~( 
  as!4. g8 \times 2/3 {d8 des fis~} fis4)~
  fis1~ \times 4/5 {fis16 f( a, as des~} des2.)~ des1~ des\fermata
  \bar "|."
}

soloVoiceTwo = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  \tempo "Медленно"
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  r2.-\markup {\dynamic pppp \italic {cresc. poco a} \dynamic ff}
  \bar ":|.|:" 
  \repeat unfold 3 {
    \repeat tremolo 6 {fes'16 es} 
    \bar ":|.|:"
  }
  \break
  d'2.->-\markup {\dynamic spppp \italic {cresc. poco a} \dynamic ff} 
  \bar ":|.|:" 
  \parenthesize d8\repeatTie d4-> d-> d8\laissezVibrer 
  \bar ":|.|:"
  R2._\markup {\italic {dim. a} \dynamic ppp}
  \bar ":|.|:"
  \repeat tremolo 6 {fes,16 es} \bar ":|."
}

soloVoiceThree = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  \tempo "Энергично"
  R2.*3 R2.\fermataMarkup \bar "||"
  \time 4/1
  \tempo "Умеренно"
  \repeat unfold 2 {r4 r8 f' b d c2 r8 f g2}
  \bar "|."
}