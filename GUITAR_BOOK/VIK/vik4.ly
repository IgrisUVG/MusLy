\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 20
  
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
  
  footnote-padding = 8
  footnote-footer-padding = 7
}

\header {
  title = "VIk"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout{
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define RH rightHandFinger)

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                             further 2) 0)
         #})

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
  #{
    %\override TextSpanner.style = #'solid
    \override TextSpanner.font-size = #-5
    \override TextSpanner.dash-fraction = #0.3
    \override TextSpanner.dash-period = #1.5
    \override TextSpanner.bound-details.right.arrow = ##t
    \override TextSpanner.arrow-width = #0.2
    \override TextSpanner.arrow-length = #0.7
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
  #})

%%%%%%%%%%%%%%% VAR 4 %%%%%%%%%%%%%%%%
\markup { 
  \null 
  \footnote 
  \null 
  \concat { 
    "*" \hspace #1.5
    \score {
      \relative {
      	\key d \major
      	\magnifyStaff #(magstep -2)
      	\override Staff.TimeSignature.stencil = ##f
      	\override TupletNumber.transparent = ##t
      	<<
      		{
      			\set subdivideBeams = ##t
      			\set baseMoment = #(ly:make-moment 1/8)
      			\set beatStructure = #'(2 2 2 2)
      			\override Fingering.staff-padding = #'()
          	\override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
            d32 a'''\RH #4 a\RH #3 a\RH #2 fis, a' a a s
      		}
      		\\
      		{
      			\shape #'((0 . 0) (1 . 0) (2 . 0) (3 . 0)) Slur
      			d,,,8([ \set stemRightBeamCount = #1 fis'16
      			\hideNotes \set stemLeftBeamCount = #1 g16)]
      		}
      	>>
      }
      \layout {
        indent = 0
      }
    }
  }
}
\score {
  <<
    \new Staff \relative {
      \key d \major
      \time 4/4
      \override Staff.TimeSignature.stencil = ##f
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \override Score.RehearsalMark.extra-offset = #'(4 . 1.5)
      \mark \markup{\fontsize #-2 {\bold {Var 4} \italic {a tempo}}}
      <<
        {
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(2 2 2 2)
          \override TupletNumber.stencil = ##f
          \tuplet 10/8 4 {
          	\override Fingering.staff-padding = #'()
          	\override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
          	\textSpannerUp
          	\stringNumberSpanner "2"
          	\once\override TextScript.font-size = 2
          	%\once\override TextScript.extra-offset = #'(0 . 0)
            d32^"*" a'''\RH #2 \startTextSpan a\RH #4 a\RH #3 a\RH #2 
            fis,\stopTextSpan a' a a a g, a' a a a a, a' a a a
            e, fis' fis fis 
            \override TextScript.font-size = -5
            \once\override TextScript.extra-offset = #'(0.7 . -6.3)
            fis-\markup {\circle\bold 6}
            \once\override TextScript.extra-offset = #'(-1.8 . -7.3)
            a,\harmonic-"VII" fis' fis fis fis
            g, fis' fis fis fis d, fis' fis fis fis
            \stringNumberSpanner "1"
            a,, e''\startTextSpan e e e e,\stopTextSpan e' e e e a, e' e e e d e e e e
            h e e e e cis e e e e g, h' h h h a,, h'' h h h
            d,,, a''' a a a fis, a' a a a g, a' a a a a, a' a a a
            e, fis' fis fis fis a,\harmonic fis' fis fis fis
            g, fis' fis fis fis d, fis' fis fis fis
            %\pageBreak
            a,, e'' e e e e, e' e e e a, e' e e e d e e e e
            h e e e e cis e e e e g, h' h h h a,, h'' h h h
            d,,, d'' d d d h, d' d d d fis, a' a a a g, a' a a a
            \override TextScript.font-size = -2
            g,,-"V" cis'' cis cis cis d,, cis'' cis cis cis
            a, cis' cis cis cis d, h' h h h
            a,,-"II" fis'' fis fis fis d, fis' fis fis fis
            a, fis' fis fis fis e a_4 a a a
            d, e e e e a, e' e e e e, e' e e e a,, e'' e e e
            d,, a'''_4 a a a a,, a'' a a a fis, d'_1 d d d g, d' d d d
            b, a'' a a a g, a' a a a d, e e e e e, e' e e e
            d,-"II" fis' fis fis fis e fis fis fis fis
            d fis fis fis fis a, fis' fis fis fis
            c, g'' g g g e, g' g g g g, g' g g g c, g' g g g
            \override Fingering.extra-offset = #'(-1.2 . 1.8)
            d a'_4 a a a g, h'_4 h h h fis, h' h h h e,, cis''_4 cis cis cis
          }
          \set stringNumberOrientations = #'(left)
          \revert TextScript.font-size
          d4_4-\markup{\italic rit.} d,\3
        }
        \\
        {
        	\override Fingering.staff-padding = #'()
        	\shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          d,,8( 
          \once\override StringNumber.extra-offset = #'(0.6 . -6.3)
          fis'\5 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g^0 
          \once\override StringNumber.extra-offset = #'(0.6 . -5.3)
          a\4) 
          \once\override StringNumber.extra-offset = #'(-0.6 . -4)
          \once\override Fingering.extra-offset = #'(0.2 . 3.2)
          \shape #'((0.3 . 0) (1 . -1) (-0.5 . -1) (-0.3 . 0)) Slur
          e-2\5( 
          a\harmonic
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g^0 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          d^0) a( e' a d)
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          h^0( 
          \once\override StringNumber.extra-offset = #'(0.6 . -4.3)
          cis\3 
          \once\override StringNumber.extra-offset = #'(0.6 . -5.7)
          g\4 a,)
          d,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
          d,( h' fis' g) 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g,^1( 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          d'^1 a' d) a,( d a' 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          \arpeggioBracket
          \once\override Arpeggio.positions = #'(1.5 . 2.5)
          \once\override Arpeggio.padding = 0.1
          e'^4)\arpeggio 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          d^4( a e a,)
          d,( a' 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          fis'^2 g) b,( g' d' e,) d( e' d a) c,( e g c)
          d 
          \once\override Fingering.extra-offset = #'(-0.2 . -0.3)
          g,^0
          \once\override StringNumber.extra-offset = #'(1.2 . -5.7)
          fis\4
          \once\override StringNumber.extra-offset = #'(1.2 . -6.3)
          e\5
          \once\override Fingering.extra-offset = #'(-1.3 . 1.5)
          d4-0 
          \set stringNumberOrientations = #'(left)
          <d, a' fis'\4>
        }
      >>
      \bar "||"
    }
    %{
    \new Staff = "ossia" \with {
      %\remove "Time_signature_engraver"
      %\hide Clef
      \magnifyStaff #(magstep -1)
      %\RemoveAllEmptyStaves
    }\relative {
      \key d \major
      \time 4/4
      \override Staff.TimeSignature.stencil = ##f
      <<
        {
          d32 a''' a a fis, a' a a g, a' a a a, a' a a
          e, fis' fis fis a,\harmonic fis' fis fis
          g, fis' fis fis d, fis' fis fis
          a,, e'' e e e, e' e e a, e' e e d e e e
          h e e e cis e e e g, h' h h a,, h'' h h
          d,,, a''' a a fis, a' a a g, a' a a a, a' a a
          e, fis' fis fis a,\harmonic fis' fis fis
          g, fis' fis fis d, fis' fis fis
          a,, e'' e e e, e' e e a, e' e e d e e e
          h e e e cis e e e g, h' h h a,, h'' h h
          d,,, d'' d d h, d' d d fis, a' a a g, a' a a
          g,, cis'' cis cis d,, cis'' cis cis
          a, cis' cis cis d, h' h h
          a,, fis'' fis fis d, fis' fis fis
          a, fis' fis fis e a a a
          d, e e e a, e' e e e, e' e e a,, e'' e e
          d,, a''' a a a,, a'' a a fis, d' d d g, d' d d
          b, a'' a a g, a' a a d, e e e e, e' e e
          d, fis' fis fis e fis fis fis
          d fis fis fis a, fis' fis fis
          c, g'' g g e, g' g g g, g' g g c, g' g g
          d a' a a g, h' h h fis, h' h h e,, cis'' cis cis
          d4 d,
        }
        \\
        {
          d,,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
          d,8( fis' g a) e( a\harmonic g d) a( e' a d) h( cis g a,)
          d,( h' fis' g) g,( d' a' d) a,( d a' e') d( a e a,)
          d,( a' fis' g) b,( g' d' e,) d( e' d a) c,( e g c)
          d g, fis e  d4 <d, a' fis'>
        }
      >>
    }
    %}
  >>
}