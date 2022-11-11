\version "2.19.15"

\language "deutsch"

lhBr = \markup {
  \path #0.1 #'((moveto 0 0)(rlineto -1 0)(rlineto 0 -2.5))
}
rhBr = \markup {
  \path #0.1 #'((moveto 0 0)(rlineto 1 0)(rlineto 0 2.25))
}
rhMark = \markup {
  \override #'(font-encoding . latin1) \italic "RH"
}
lhMark = \markup {
  \override #'(font-encoding . latin1) \italic "LH"
}
fakeBassClef = {
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #2
  \set Staff.middleCPosition = #-6
}
fakeBassClefShift = {
  % Change default prefatory item order so that clef is printed after barline
  \override Score.BreakAlignment.break-align-orders =
  #(make-vector 3 '(span-bar
                    breathing-sign
                    staff-bar
                    clef
                    key
                    time-signature))
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #-10
  \set Staff.middleCPosition = #-8
}
%%%%%%%%%%% RH %%%%%%%%%%%%
viezehnteRH = \relative {
  \clef treble
  \time 4/4
  \key c \major
  \override Staff.TimeSignature #'stencil = ##f
  \partial 2 \tuplet 6/4 4 {
    c'''16 f, as, f' c' f, as, f' c' f, as, f'
  }
  \omit TupletNumber
  \repeat unfold 4 {
    \tuplet 6/4 4 {
      c'16 f, as, f' c' f, b, f' c' f, h, f' c' f, c f c' f, d! f c' f, e! f
    }
  }
  %\bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicVierzehn = {
  \override Hairpin.to-barline = ##f
  s1\pp
}
%%%%%%%%%%% LH %%%%%%%%%%%%
viezehnteLH = \relative {
  \clef bass
  \time 4/4
  \key c \major
  %\time 12/16
  %\override Fingering.staff-padding = #'()
  \override Staff.TimeSignature #'stencil = ##f
  \partial 2
  <<
    {
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 6/4 4 {r8 f'4~} f4
    }
    \\
    {
      des,,
    }
  >>
  \clef treble
  g''8 a! b c4 %g
  <<
    {
      es,4.
    }
    \\
    {
      s8 des4
    }
  >>
  \clef bass
  <<
    {
      \omit TupletNumber
      \tuplet 6/4 4 {
        s4 <gis h>8
      }
    }
    \\
    {
      \omit TupletNumber
      \omit TupletBracket
      \tuplet 6/4 4 {
        e8\rest e4
      }
    }
    \\
    {
      ges,,,
    }
  >>
  \clef treble
  r8 a'''[ b? cis] dis4
}