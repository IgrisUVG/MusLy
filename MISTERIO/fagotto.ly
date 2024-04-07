\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

fagottoMusic = \relative {
  \clef bass
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*30
  %f,4.( b8 f'4 as8 es f4 es8 b des2 ges as es as a!)
  r2 as8-. ges-. f-. es-. des-. c-. b-. as-. ges-. f-. es-. des-.
  c4.( f8 c'4 es8 b c4 b8 f as2) R1*2
  \repeat unfold 5 {c,4.( f8 c'4 es8 b c4 b8 f as2)} R1*42
  \key g \major
}

contraFagottoMusic = \relative {
  \clef "bass_8"
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*34
  f,,4.( b8 f'4 as8 es f4 es8 b des2) r
  \repeat unfold 5 {f,4.( b8 f'4 as8 es f4 es8 b des2)} r2 R1*41
  \key g \major
}