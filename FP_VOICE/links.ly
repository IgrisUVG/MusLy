\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "myNoteHeads.ly"

top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

linksOne = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \key f \major
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \time 5/4
  \times 4/5 {f,16 c' g' a b} a4
  <<
    {
      s4. d8[ cis] s8
    }
    \\
    {
      c,16 g' b dis,^( e) b' d a, cis' e, g a
    }
    \\
    {
      \voiceOne
      s4 s8. a,4 s16
    }
  >>
  d16 a' b d a e' f a \tuplet 3/2 4 {f8 g, b! as c, g}
  <<
    {
      c,16 c' e g
      \override TupletNumber.transparent = ##t
      \tuplet 3/2 4{
        r8[ c,, f]
        \stemDown
        c' g' f as h c
      }
      f4
    }
    \\
    {
      c,,4 f,1
    }
  >>
  <<
    {
      r2. des'''4~ des c b!2~ b c cis1 f!2 e
    }
    \\
    {
      f,1 g a2. b4 h1 c!
    }
  >>
  \stemDown
  \tuplet 6/4 4 {as,16[ es' as c \top d es] b'[ c g as es \bot as,]}
  \times 4/7 {des,[ as' b es \top f as des] \bot}
  <ges,,, des' b'>8\arpeggio
  <c b'>8 r
  \stemUp
  \times 2/3 {r8[ fis g]} s4
  \stemNeutral
  s
  <<
    {
      c4 a g f1
    }
    \\
    {
      \override TupletNumber.transparent = ##t
      \tuplet 3/2 4 {c'8 e g a, d f g, d' e}
      \times 2/3 {f, c' e} s4 \times 2/3 {h8 c f} s4
    }
  >>
  \time 4/4
  \tuplet 3/2 4 {
    g,8 b c \top
    \once\override Beam.positions = #'(-5 . -5.7)
    d \bot b f c g' d'
  } s4
  \cadenzaOn
  <<
    {
      f,,1
    }
    \\
    {
      \override Rest.extra-offset = #'(0 . 5.5)
      r16 c'[ g' f] e[ f b as]
      \clef treble
      c[ f as d] <f, as c>2
    }
  >>
  \teeny
  r16 r8 c''16[ b as g f es des c b as g f es des c b]
  \cadenzaOff
  \bar "||"
  \clef bass
  \time 4/4
  \normalsize
  as1~ as4~ as16 es( des as f'2)~ f~
  \tuplet 5/4 4 {
    f16
    \once\override Slur.positions = #'(1 . 1)
    es( f des es c des as des as'
  }
  ges1)~ ges4.
  \revert TupletNumber.transparent
  \tuplet 3/2 8 {des,16 as' des es c f} g!8~ g!4~ g1~
  g4~ g16 fis,( d' a' h2)~ h4 d16( g,8. a2~
  a8.) g32( fis d2.)~ d2 a4. g8~ g2 h c g'4.
  <<
    {
      c8 \times 2/3 {h8 b a~} a2. ces1
    }
    \\
    {
      a8(~ a f~ f2.)~ f1
    }
  >>
  \clef treble
  r4. gis'8~_( gis16 dis \top d'! \bot g,~ g4)
  \times 2/3 {h,8( fis' f~} f2)
  \clef bass
  r8 <a, e' gis>(<as es' g><g d' fis><ges des' f>2) r8
  <<
    {
      \voiceTwo
      \stemUp
      e,,!8~ e1
    }
    \\
    {
      \voiceOne
      s8 s2 \clef treble <fis''' g as!>4 q
    }
  >>
  q2 q
  \clef bass
  \accidentalStyle default
  \myBigNoteHeads
  \override Script.Y-offset = #-1
  \xLV #3 e,,,1\laissezVibrer-\fermata
  \normalNoteHeads
  \bar "|."
}

linksTwo = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  \repeat unfold 6 {
    <<
      {
        gis8 a ais h ais a
      }
      \\
      {
        d,2.
      }
    >>
  }
  <<
    {
      gis8 a ais h ais a
    }
    \\
    {
      s8 f4-> f-> \once \omit Flag f8->
    }
    \\
    {
      \voiceTwo
      d2.
    }
  >>
  <<
    {
      gis8 a ais h ais a
    }
    \\
    {
      d,2.
    }
  >>
}

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})

linksThree = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \time 3/4
  \makeOctaves #-1 {
    r8 as,4.-^~ as4 b8-> a-> f-> as-> e-> g->
    r8 a!4.~ a4~ a2.\fermata
  }
  \bar "||"
  \repeat unfold 2 {
    <as a'!>4
    <<
      {
        <es' d'>2 s4
      }
      \\
      {
        \stemUp
        r8 e,,! b' as'( <g c des>4)
      }
    >>
    <as! a'!>4 <es'! d'!>2.
  }
  \bar "|."
}