\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
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

top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%%%%%%%%%%%%%%% RH %%%%%%%%%%%%%%%%%%%%%%%%%
rightPiano = \relative {
  \key d \minor
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \repeat volta 4 {
    <e' a d>4<g c>8 <f a>4. h4
  }
  \alternative {
    {
      <<
        {
          cis2.
          \stemDown
          <d a'>8 <h gis'>
        }
        \\
        {
          r8 <d, h'>4 a'8 gis e4.
        }
      >>
    }
    {
      <<
        {
          cis'2
        }
        \\
        {
          r8 <d, h'>4 <e a>8
        }
      >>
      \set Score.repeatCommands = #'((volta #f))
      \stemUp
      <gis cis>8 <h e> <e a>4
      \stemNeutral
    }
  }
  \bar "||"
  \break
  R1*7
  \bar ".|:"
  \mergeDifferentlyDottedOn
  \set Score.repeatCommands = #'((volta "1.-3."))
  <<
    {
      e16 g fis e g8. <g_~ a~>16
      \stemDown
      q2
      \stemNeutral
    }
    \\
    {
      g,8 a16 g g' h, c d~ d2
    }
    \\
    {
      \voiceTwo
      s2
      \once \override Rest.extra-offset = #'(.5 . 3)
      r4 \tuplet 3/2 {<e fis>8 d a}
    }
  >>
  \bar ":|."
  \time 3/4
  \set Score.repeatCommands = #'((volta #f))
  <<
    {
      e'16 g fis e g <fis g a>8 <e_~ g a~>16 q4
    }
    \\
    {
      g,8 a16 g g' e d c~ c4
    }
  >>
  \bar "||"
  \break
  \time 9/4
  \key a \major
  \acciaccatura {\slashI gis'16 g} <cis, fis>\noBeam
  <<
    {
      a8 h16~ h8[ e] <gis, cis> <e a>
    }
    \\
    {
      a16 e d a'4 gis
    }
  >>
  <g c>8 <fis h>
  <<
    {
      a4
    }
    \\
    {
      eis8[ fis]
    }
  >>
  <dis cis'>8 <e h'>
  <<
    {
      r8 <cisis' cis'!> s a
    }
    \\
    {
      <fis ais>4 <cis' a'>8\noBeam eis,16[ fis]
    }
  >>
  <dis cis'>8 <eis h'>
  \time 5/4
  <<
    {
      <cis ais'>8. <cis gis'~>16 gis'8 dis'16 cis~ cis8 ais
      <b, a'>4 d'
    }
    \\
    {
      s4 eis,8. fis16 d!4
      \once \override Rest.extra-offset = #'(1.5 . 4)
      r8 es e eis
    }
  >>
  \time 4/4
  <<
    {
      <fis cis'>16\noBeam a8 h16~ h8[ e] <gis, cis>[ <e a>]
    }
    \\
    {
      fis16 a e d a'4 gis
    }
  >>
  <gis cis>8 <fis h>
  \key d \minor
  %\bar ".|:"
  \repeat volta 3 {
    <<
      {
        s4
        <c' d>16 h g a~ a8. s16
        <c d>16 h g a~
      }
      \\
      {
        \stemUp
        <e a>8. <d g>16~
        \stemDown
        q8 e16 f e8. <d g>16~
        q8 e16 f
      }
    >>
  }
  \alternative {
    {
      <<
        {
          a8. s16
          <cis d>16 h g a~ a8. s16
          <cis d>16 h g a
        }
        \\
        {
          cis,8. <e gis>16~ q8 e16 fis
          cis8. <e gis>16~ q8 e16 fis
        }
      >>
    }
    {
      <<
        {
          s4
          <c' des>16 h! as f~ f8. s16
          <c' des>16 h! as f
        }
        \\
        {
          \stemUp
          <c as'>8. <es as>16~
          \stemDown
          q8 e16 es c8. <es as>16~
          q8 e16 es
        }
      >>
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%% LH %%%%%%%%%%%%%%%%%%%%%%%%%
leftPiano = \relative {
  \key d \minor
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \clef "bass"
  \repeat volta 4 {
    <<
      {
        s2 e'4 s
      }
      \\
      {
        d,8 a' h c e d a d,
      }
    >>
  }
  \alternative {
    {
      <<
        {
          s2. e8 cis'
        }
        \\
        {
          a, e' a <gis cis> h a e4
        }
      >>
    }
    {
      a,8 e' a <gis cis>
      \set Score.repeatCommands = #'((volta #f))
      \stemDown
      \top <h e> <e a> <gis cis>4 \bot
      \stemNeutral
    }
  }
  \bar "||"
  \break
  R1*7
  \bar ".|:"
  \set Score.repeatCommands = #'((volta "1.-3."))
  e,16 h' d8 <a e'>8. <h fis'>16~ q2
  \bar ":|."
  \time 3/4
  \set Score.repeatCommands = #'((volta #f))
  e,16 h' d8 <a e' a>16 <h fis' a>8 <a e' h'>16~ q4
  \bar "||"
  \break
  \time 9/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  <<
    {
      fis,4
      \once \override Flag.stencil = ##f
      gis8 s16 a4 s16 s4 fis' s
    }
    \\
    {
      fis,16 cis' a' \top d \bot gis,, e' cis' a, fis' h cis <a d>
      <h cis!> eis,8 fis16~ fis cis gis'! d' h a gis d
    }
  >>
  <<
    {
      dis4
    }
    \\
    {
      dis16 ais' his8
    }
    \\
    {
      s8 eis16 dis
    }
  >>
  <<
    {
      fis,4
    }
    \\
    {
      fis16 cis' gis' d
    }
  >>
  h16 a gis d
  <<
    {
      fis,4
      \once \override Flag.stencil = ##f
      gis8 s16 ais4 s16 g4 cis

    }
    \\
    {
      fis,16 cis' ais' \top cis \bot gis, cis cis' ais,
      eis' fis cis' \top h \bot g, d' a' fis cis gis' h cis
    }
  >>
  \time 4/4
  <<
    {
      fis,,4
      \once \override Flag.stencil = ##f
      gis8 s16 a4 d' s16
    }
    \\
    {
      fis,,16 cis' a' \top d \bot gis,, e' cis' a,
      fis' h cis <a d> h16 fis e h
    }
  >>
  \key d \minor
  %\bar ".|:"
  \repeat volta 3 {
    a16 e' h' a~ a g8 e16
    a,16 e' h' a~ a g8 a,16
  }
  \alternative {
    {
      <<
        {
          \repeat unfold 2 {s4 h'8 s}
        }
        \\
        {
          fis,16 cis' gis' <a h>~ a gis8 d16
          fis,16 cis' gis' <a h>~ a gis8 h,16
        }
      >>
    }
    {
      f16 c' g' <as b>~ q as8 c,16
      \set Score.repeatCommands = #'((volta #f))
      f,16 c' g' <as b>~ q as8 c,16
    }
  }
  %\bar ":|."
}