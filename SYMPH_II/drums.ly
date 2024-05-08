\version "2.19.15"
%\version "2.18.2"

\language "deutsch"

\include "changePitch.ly"

ritm = {c4 c8. c16}
ritmWithRest = {c4 c8. c16 c4 c4}
extendLV =
#(define-music-function (parser location further) (number?)
   #{
     \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
     \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
     \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
   #})

slash =
#(define-music-function (parser location ang stem-fraction protrusion)
   (number? number? number?)
   (remove-grace-property 'Voice 'Stem 'direction) ; necessary?
   #{
     \once \override Stem #'stencil =
     #(lambda (grob)
        (let* ((X-parent (ly:grob-parent grob X))
               (is-rest? (ly:grob? (ly:grob-object X-parent 'rest))))
          (if is-rest?
              empty-stencil
              (let* ((ang (degrees->radians ang))
                     ; We need the beam and its slope so that slash will
                     ; extend uniformly past the stem and the beam
                     (beam (ly:grob-object grob 'beam))
                     (beam-X-pos (ly:grob-property beam 'X-positions))
                     (beam-Y-pos (ly:grob-property beam 'positions))
                     (beam-slope (/ (- (cdr beam-Y-pos) (car beam-Y-pos))
                                   (- (cdr beam-X-pos) (car beam-X-pos))))
                     (beam-angle (atan beam-slope))
                     (stem-Y-ext (ly:grob-extent grob grob Y))
                     ; Stem.length is expressed in half staff-spaces
                     (stem-length (/ (ly:grob-property grob 'length) 2.0))
                     (dir (ly:grob-property grob 'direction))
                     ; if stem points up. car represents segment of stem
                     ; closest to notehead; if down, cdr does
                     (stem-ref (if (= dir 1) (car stem-Y-ext) (cdr stem-Y-ext)))
                     (stem-segment (* stem-length stem-fraction))
                     ; Where does slash cross the stem?
                     (slash-stem-Y (+ stem-ref (* dir stem-segment)))
                     ; These are values for the portion of the slash that
                     ; intersects the beamed group.
                     (dx (/ (- stem-length stem-segment)
                           (- (tan ang) (* dir beam-slope))))
                     (dy (* (tan ang) dx))
                     ; Now, we add in the wings
                     (protrusion-dx (* (cos ang) protrusion))
                     (protrusion-dy (* (sin ang) protrusion))
                     (x1 (- protrusion-dx))
                     (y1 (- slash-stem-Y (* dir protrusion-dy)))
                     (x2 (+ dx protrusion-dx))
                     (y2 (+ slash-stem-Y
                           (* dir (+ dy protrusion-dy))))
                     (th (ly:staff-symbol-line-thickness grob))
                     (stil (ly:stem::print grob)))

                (ly:stencil-add
                 stil
                 (make-line-stencil th x1 y1 x2 y2))))))
   #})

slashI = {
  \slash 50 0.6 1.0
}

slashII = {
  \slash 45 0.5 0.8
}

drumMusic = \drummode {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  %\clef percussion
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature.stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  R1*126 bd4-> r2. R1*4 bd4-> r2. R1*2 r2 cymc R1
  r2 bd-> r bd2:32_( cymc1)-> r2. bd4-> R1
  <bd cymc>4 r16 cb8.^\markup {\italic triangolo}
  r8 cb cb4 r16 cb8. r8 cb cb4 r16 cb8 cb16
  <<
    {
      cb2:32
    }
    \\
    {
      hhho2-\markup {\italic tam-tam}
    }
  >>
  r8 cb cb4 r16 cb8. r8 cb cb4 r16 cb8 cb16
  <<
    {
      cb2:32
    }
    \\
    {
      hhho2
    }
  >>
  tomfh4 tomml <bd cymc>4 r2. R1*2 r2 cymc R1
  r2. cymc4-> bd-> r2. R1*2 cymc4  r16 cb8.
  r8 cb cb4 r16 cb8. r8 cb cb4 r16 cb8 cb16
  <<
    {
      cb2:32
    }
    \\
    {
      hhho2
    }
  >>
  r8 cb cb4 r16 cb8. r8 cb cb4 r16 cb8 cb16
  <<
    {
      cb2:32
    }
    \\
    {
      hhho2
    }
  >>
  \times 2/3 {bd4 bd bd}
  <<
    {
      cymc4 r8 cymr r cymr r cymr
      r cymr r cymr r cymr r cymr
    }
    \\
    {
      \once\override Rest.extra-offset = #'(0 . 2.7)
      r16 cb8. bd4 bd bd bd bd bd bd
    }
  >>
  <<
    {
      cymc2 s s1*7
    }
    \\
    {
      \voiceOne
      \stemDown
      hhho1:32~ hhho1:32~ hhho1:32~ hhho1:32~
      hhho1:32~ hhho1:32~ hhho1:32~ hhho1:32
    }
    \\
    {
      \voiceTwo
      s1*5 \repeat unfold 12 {bd4}
    }
  >>
  <bd cymc>4 r2. R1*3 r2. cymc4 R1*3 r4 bd2.:32 R1*3
  r2 r8
  <<
    {
      cymc cymc cymc cymc4
    }
    \\
    {
      bd8 bd bd bd4
    }
  >>
  r2.
  \changePitch {\ritmWithRest}{
    bd bd bd bd r
    bd bd bd bd cymc bd bd bd bd cymc
    bd bd bd bd cymc bd bd bd bd cymc
  }
  R1*2 <bd cymc>4 hhho r2 R1*2
  <<
    {
      \repeat unfold 2 {s1 r2 cymc->}
    }
    \\
    {
      \voiceOne
      \repeat unfold 16 {bd8[ bd]}
    }
  >>
  hhho1->
  \repeat unfold 6 {
    <<
      {
        cymc2
      }
      \\
      {
        bd
      }
    >>
    r4 bd8. bd16
  }
  <<
    {
      cymc2
    }
    \\
    {
      bd
    }
  >>
  r r2. <bd cymc>4 hhho1 R1*2 cymc2\fermata s \bar "||"
  R1*5 cymc2 r R1*5
  \bar "||"
  R1*5 <bd cymc>4-> r <bd cymc>4-> r
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  <bd hhho cymc>2.-> cymc R2.*43
  \extendLV #6
  \override LaissezVibrerTie.direction = 1
  cymc2.\laissezVibrer R2.*4
  <<
    {
      cymc2.-> cymc->
    }
    \\
    {
      bd2.:32~ bd2.:32
    }
  >>
  \cadenzaOn
  hhho1-> s2 s2. s2. s2.
  \cadenzaOff
  \bar "."
  \time 4/4
  R1 r2 \times 2/3 {bd8 bd bd} bd4 hhho1 R1*5
  r4 <bd cymc>-> r2 R1 cymc1
  R1*11
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
  R1*10 <bd cymc>4-. r2.
  R1*7 r2 <bd cymc>4 r \repeat unfold 3 {q r q r q q q r}
  R1*2 r2. r16 cymr r8 r2 r8. cymr16 r4
  <<
    {
      \override Rest.extra-offset = #'(0 . -5.5)
      bd4 r bd r bd bd bd
    }
    \\
    {
      \extendLV #3
      \override LaissezVibrerTie.direction = 1
      cymc1^>\laissezVibrer
    }
  >>
  \extendLV #3
  \override LaissezVibrerTie.direction = 1
  cymc4->\laissezVibrer
  sn16.-- sn32-^ r8 r2 bd8-- r
  r2. r8 \acciaccatura {\slashI sn32 sn sn sn} sn16-^ r
  r bd r8 r8. \acciaccatura {\slashI sn32 sn sn sn} sn16-^
  r8 cymr16-. r r4 r16 cymr16-. r8 r2. R1 sn1:32~ sn1:32
  r4 sn16-. r8. r16 sn-. r8 r sn16-. r
  \times 2/3 {sn16-.[ r sn16-. r sn16-. r]} r2.
  sn16-. r8. \times 2/3 {r8[ sn16-. r sn-. r]} sn16-. r8. r4
  r8 sn16-. r sn-.[ r sn-.] r8 sn16-. r4.
  sn16-. r8. r4 sn16[ r sn16] r sn16[ r sn16] r
  sn16 r8. r2.
  \bar "|."
}
