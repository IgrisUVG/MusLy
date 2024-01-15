\version "2.19.15"

\language "deutsch"


drum = \drummode {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \partial 4
  r16
  \acciaccatura sn8 sn8.
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