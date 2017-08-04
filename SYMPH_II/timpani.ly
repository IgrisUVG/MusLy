\version "2.19.15"
%\version "2.18.2"

\language "deutsch"

\include "changePitch.ly"

ritm = {c4 c8. c16}
ritmWithRest = {c4 c8. c16 c4 c4}

timpMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest.expand-limit = #2
  \clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \override TrillSpanner #'(bound-details right padding) = #1.5
  R1*124 r2 b,~\startTrillSpan b1 R1*2\stopTrillSpan
  r2 b~\startTrillSpan b1~ b d2->\stopTrillSpan r
  \changePitch {\ritm}{f f f f f f f f f}
  f2~\startTrillSpan f1
  \changePitch {\ritm}{c\stopTrillSpan c c c c c c c c}
  c2\startTrillSpan R1\stopTrillSpan
  \changePitch {\ritm}{f f f f f f f f f}
  f2~\startTrillSpan f1 f4\stopTrillSpan r2. R1*4
  \changePitch {\ritm}{e e e e e e e e e}
  e2\startTrillSpan f e
  cis1\startTrillSpan
  \changePitch {\ritm}{dis\stopTrillSpan dis dis dis dis dis dis dis dis}
  dis2\startTrillSpan
  \changePitch {\ritm}{f\stopTrillSpan f f f f f f f f}
  c2~\startTrillSpan c1 des4\stopTrillSpan r2. R1*6
  r2 f~\startTrillSpan f1~ f~ f~ f~ f~ f~ f f4->\stopTrillSpan r2.
  R1*3 r2 b,\startTrillSpan R1*2\stopTrillSpan
  es2\startTrillSpan r\stopTrillSpan R1*3
  \changePitch {\ritmWithRest}{b b b b r b b b b r es es es es r}
  R1*5
  \changePitch {\ritm}{es es es es es es f f f f f f}
  r8 es-> r2. R1 r2 f\startTrillSpan
  \changePitch {\ritm}{f\stopTrillSpan f f f f f f f f}
  f2\startTrillSpan
  \changePitch {\ritm}{b,\stopTrillSpan b b b b b b b b}
  b2\startTrillSpan R1\stopTrillSpan
  \repeat unfold 6 {r4 es8. es16 es4 r} des2-> r
  R1 f-> R1*2 b,1\startTrillSpan \fermata \bar "||"
  R1*11\stopTrillSpan
  \bar "||"
  R1*6
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  b2.~\startTrillSpan b R2.*13\stopTrillSpan
  r4 f'2\startTrillSpan b,4.\stopTrillSpan b8 b4 f'-> r2
  b,4. b8 b4 f'-> r2 R2.*7 r4 b, b b2.\startTrillSpan
  R2.*23\stopTrillSpan
  \cadenzaOn
  cis2.~\startTrillSpan cis~ cis~ cis~ cis~
  \cadenzaOff
  \bar "."
  \time 4/4
  cis1~ cis2 r2\stopTrillSpan R1*8 
  f1~\startTrillSpan f R1*10\stopTrillSpan
  \bar "||"
  \cadenzaOn
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1. r4.
  \cadenzaOff
  \bar "||"
  \time 4/2
  R1*10
  \bar "||"
  \time 4/4
  R1*7 r2 es-> R1 f1\startTrillSpan gis4-.\stopTrillSpan r2.
  R1*14
  b,4 b8. b16  b4 b8. b16 b8 r r2.
  f'4 f8. f16  f4 f8. f16
  es4.\startTrillSpan r8\stopTrillSpan r2 R1*6
  f1~\startTrillSpan f~ f~ f~ f~ f~ f~ f~ f
  \bar "|."
}
