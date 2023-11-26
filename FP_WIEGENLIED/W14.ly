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
  %\key c \major
  \override Staff.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  \override Staff.TimeSignature.stencil = ##f
    \repeat unfold 5 {c'''16 f, as, f'}
    c' f, b, f' c' f, h, f' c' f, c f c' f, d! f c' f, e! f
  }
  %\bar "|."
  
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicVierzehn = {
  \override Hairpin.to-barline = ##f
  \override Staff.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  s1\pp
}
%%%%%%%%%%% LH %%%%%%%%%%%%
viezehnteLH = \relative {
  \clef treble
  \time 4/4
  %\key c \major
  %\time 12/16
  %\override Fingering.staff-padding = #'()
  \override Staff.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  \override Staff.TimeSignature.stencil = ##f
  r4 f'2. s8 g! a! b c4 g es des
}

viezehnteBass = \relative {
  \clef bass
  \time 4/4
  \override Staff.BarLine.stencil = ##f
  \override Score.SpanBar.stencil = ##f
  \override Staff.TimeSignature.stencil = ##f
  \ottava #-1
  \set Staff.ottavation = #"8"
  des,,1 ges,
}