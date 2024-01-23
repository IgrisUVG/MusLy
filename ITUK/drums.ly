\version "2.19.15"

\language "deutsch"


drum = \drummode {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \partial 4
  r16
  \acciaccatura sn8 sn8.
  \repeat unfold 2 {
    bd4 r8 bd
    \acciaccatura {cymr16 cymr}
    \tuplet 3/2 {cymr4 tommh tomml}
    bd4
    <<
      {
        cyms4
      }
      \\
      {
        r16 bd8.
      }
    >>
    bd4
    <<
      {
        r8. hhho16 hh8 r cymc4
        \tuplet 3/2 {tommh4 tomml toml}
      }
      \\
      {
        sn4 bd r8. bd16~ bd4 s
      }
    >>
    bd4 sn16 bd8. bd4 \acciaccatura {cymr16 cymr} cymr4
  }
  <<
    {
      \repeat unfold 24 {cyms4}
      cyms2 cyms
    }
    \\
    {
      s1 \repeat unfold 5 {cymc4 s2.}
    }
    \\
    {
      \voiceFour
      bd4 r r16 bd8. sn4
      \repeat unfold 4 {bd r bd r8. bd16}
      \repeat unfold 4 {bd4 r}
    }
  >>
  bd4 r sn \acciaccatura {cymr16 cymr} \tuplet 3/2 {cymr8 bd4}
  bd4 r sn \acciaccatura {cymr16 cymr} cymr4
  bd4 r sn \acciaccatura {cymr16 cymr} \tuplet 3/2 {cymr8 bd4}
  \time 3/4
  bd4 r2
  \time 9/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \tag #'Partitur {\grace {s8}}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  r2 \tuplet 3/2 {tommh4 tomml \acciaccatura sn8 sn4}
}