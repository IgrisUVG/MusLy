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
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 14 {b,4-.-> b-. b-.}
  \repeat unfold 2 {b2.~-"tremolo" b~ b~ b}
  \repeat unfold 9 {f'4->-. f-. f-.} R2.*3
  r4. es4.:32~ es2.:32 R2.*4 es2.-> es-> f-> b,->
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  \repeat unfold 3 {r8 b-. b-. b-.-> r r}
  \repeat unfold 2 {r8 f'-. f->}
  \repeat unfold 2 {r8 es-. es-. es-.-> r r}
  r8 f-. f-. f-.-> f-. f-. b,2.:32 R2.*35
  f'4-> r f-> r b,-> r as-> r2 R2.*3
  \key a \major
  \time 2/4
  R2*26
  \key as \major
  R2*28 b2:32 R2*2 es2:32 R2 f2:32 f2:32->~ f2:32
  \repeat unfold 3 {f2:32->}
  \time 3/4
  R2.*11 f2.-> R2.*6 r4 f r 
  \repeat unfold 7 {f2.:32~} f2.:32
  \bar "|."
}