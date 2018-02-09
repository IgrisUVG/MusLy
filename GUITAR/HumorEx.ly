\version "2.19.15"

\language "deutsch"

\relative {
  \clef "treble_8"
  \key e \major
  %\bar ".|:"
  \time 3/8
  \override Score.RehearsalMark.extra-offset = #'(0 . .5)
  \mark \markup {\fontsize #-2 {Largo}}
  <<
    {
      %s4. s s 
      s8. g'
    }
    \\
    {
      \voiceOne
      %b4.( a g 
      \stemDown
      e4.%)
    }
    \\
    {
      \voiceOne
      %\repeat unfold 2 {
      %  \once\override Beam.positions = #'(2 . 4)
      %  e,,16 fis' g d' g, fis
      %}
      %\once\override Beam.positions = #'(1.5 . 4)
      %e, f' g dis'! g, f
      \once\override Beam.positions = #'(.35 . 1.6)
      e,,16 f' g \stemDown g' \stemUp g, f
    }
    \\
    {
      %e,8. cis' e, c' e, h' 
      e,8. b'
    }
  >>
  %\bar ":|."
}