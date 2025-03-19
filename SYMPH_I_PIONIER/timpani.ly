\version "2.19.15"

\language "deutsch"

timpMusic = \relative {
  \key as \major
  \time 4/4
  \clef bass
  \compressFullBarRests
  as,8-. r r2. es'4:32 as,-. r f'8-. r
  b,16-.[ r as-.] r es'-.[ r b-.] r as-. r8. es'16-.[ r b-.] r
  b2:32 as16-. r8. r4 es'16-. r8. r4 as,2:32 as8 r r2 b16-. r8.
  f'1:32 es1:32 as,16-. r8. r2. r2 b16-. r8. r4 es2:32 as,8-. r4.
  as2:32 r
  \time 3/4
  R2.*19 r2 as4:32~ as2:32 r4 R2.*2
  \time 4/4
  es'8:32 r8 es8:32 r8 es4:32 as,16 r8. R1 r2 as8:32 b-. r4 R1*8
  r4. es8 as, r as r as r4. as2:32
}

timpMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \cadenzaOn
  b,1:32~ b1:32  s4. s16
  \cadenzaOff
}

timpMusicVier = \relative {
  \key as \major
  \time 3/4
  \clef bass
  \compressFullBarRests
  \repeat unfold 14 {b,4-.-> b-. b-.}
  \repeat unfold 2 {b2.~-"tremolo" b~ b~ b}
}