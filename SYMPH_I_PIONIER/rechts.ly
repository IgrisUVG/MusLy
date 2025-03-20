\version "2.19.15"

\language "deutsch"

#(define (octave-up m t)
   (let* ((octave (1- t))
          (new-note (ly:music-deep-copy m))
          (new-pitch (ly:make-pitch
                      octave
                      (ly:pitch-notename (ly:music-property m 'pitch))
                      (ly:pitch-alteration (ly:music-property m 'pitch)))))
     (set! (ly:music-property new-note 'pitch) new-pitch)
     new-note))

#(define (octavize-chord elements t)
   (cond ((null? elements) elements)
     ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
      (cons (car elements)
        (cons (octave-up (car elements) t)
          (octavize-chord (cdr elements) t))))
     (else (cons (car elements) (octavize-chord (cdr elements ) t)))))

#(define (octavize music t)
   (if (eq? (ly:music-property music 'name) 'EventChord)
       (ly:music-set-property! music 'elements (octavize-chord
                                                (ly:music-property music 'elements) t)))
   music)

makeOctaves = #(define-music-function (parser location arg mus) (integer? ly:music?)
                 (music-map (lambda (x) (octavize x arg)) (event-chord-wrap! mus)))

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
  r8 <b es g>16 \bot <c,, c'>~ q2. \top R1*3
  \stemNeutral
  \clef treble
  r2 c'''32 es g b c des f des c b g es c8~ c4 r2. R1
  \makeOctaves #1 {
    des'4. ces8 b as g4~ g4. b8 es4. ces8 as' g fes4
  }
  \set subdivideBeams = ##f
  des'16 ces b8 es,16 fes ces8 r4 des16 as b ges fes4 r
  r <as c es as>2.
  \bar "|."
}

rechtsDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \break
  \cadenzaOn
  \omit TupletBracket
  \bot \tuplet 5/4 {b32[( cis e g b]} \top \tuplet 5/4 {cis[ e g b cis])}
  \bot cis,,[( e g b] \top \tuplet 5/4 {cis[ e g b cis])}
  \bot e,,[( g b \top cis] e[ g b cis])
  \bot \tuplet 3/2 {g,[( b cis]} \top e[ g b cis])
  \bot \tuplet 3/2 {b,[( cis e]}
  \bar ""
  \top \tuplet 3/2 {g[ b cis])}
  \bot \tuplet 3/2 {cis,[( e g]} \top b[ cis])
  \bar ""
  \bot e,[( g] \top b[ cis]) \bot g[( b] \top cis[ e])
  \bot b[( cis] \top e[ g]) \bot cis,[( e] \top g[ b])
  b[( g e cis] g'[ e cis b])
  \bot cis[( e] \top g[ b]) \bot cis,[( e] \top g[ b])
  b[( g e cis] g'[ e cis b])
  \cadenzaOff
}

rechtsVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 4 {\repeat tremolo 6 {\bot b16 \top des}}
  %\repeat unfold 24 {\bot b16 \top des}
  \repeat unfold 2 {\repeat tremolo 6 {\bot c16 \top e}}
  %\repeat unfold 12 {\bot c16 \top e}
  \repeat unfold 2 {\repeat tremolo 6 {\bot h16 \top d}}
  %\repeat unfold 12 {\bot h16 \top d}
  \repeat unfold 2 {\repeat tremolo 6 {\bot as16 \top c}}
  %\repeat unfold 12 {\bot as16 \top c}
  \repeat tremolo 6 {\bot as16 \top ces}
  %\repeat unfold 6 {\bot as16 \top ces}
  \repeat tremolo 6 {\bot g16 \top b}
  %\repeat unfold 6 {\bot g16 \top b}
  \repeat unfold 2 {\repeat tremolo 6 {\bot f16 \top as}}
  %\repeat unfold 12 {\bot f16 \top as}
  R2.*4
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  \ottava #1
  \set Staff.ottavation = #"8"
  es'''16( b' a b g b) e,( f g as) es[( d] des! c b as) es'( d
  g f) as( g f es)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  es( des c b)
  \ottava #0
  b( as g f) es( d c b as g) g[( f e d]) d[( c h a])
  \bot \stemUp g^( c,) \stemNeutral
  \top s2. s4
  des'16 d e f g as b ces des d e f g as
  \ottava #1
  \set Staff.ottavation = #"8"
  b ces des d e f g as b ces des d e f g4
  \ottava #0
  \clef bass
  \repeat unfold 6 {g,,,,16 a h a}
}