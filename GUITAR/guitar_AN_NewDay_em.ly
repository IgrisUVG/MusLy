\version "2.18.0"
\header{
  title = "New Day Em"
  composer = "AN"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\score {
  \new Staff \with {
    instrumentName = "Guit."
  }
  {
    \clef treble \key e \minor \time 2/4
    {
      <e g' b' cis'''>4 r8 <g' b' fis''>8->~ q <g'' e''>4-> \glissando b''8~
      b'' c'''16 b'' a'' g''fis'' e'' dis''8[ g' fis' d'!\5] \glissando
      e'8 g' <d'' fis''>-> q->~ q <cis'' g''>4. \glissando <fis'' b''\2>8 <fis'' a''>4 q8~ q2
      d'''16 c''' b'' a'' g'' fis'' e'' d''~ d''8 <f' b' e''>4.
      <e' c'' g''>8 <<{fis''4 e''8}\\{<e' c''>4.}>> \stemUp <dis' g''>8[ cis'' ais' <a' fis''>->~] q g''
      \stemNeutral <g' b' cis'''>4
      r4 e''8 g'' fis''[ c'' a'] <b dis''>~ q[ a' fis' g''] \bar ":|."
      e16 fis g a b cis' dis' e' fis' g' a' c'' b'8 d'' <gis'' c'''> <gis'' b''>4 g''8
      <c'' a''>8 e'' <<
        {<dis' c''>8 \glissando <e' cis''>~ q4}\\
        {
          \once \override NoteColumn #'force-hshift = #1.65
          \shiftOnn b'4~
          \once \override NoteColumn #'force-hshift = #1.65
          \shiftOnn b'4
        }
      >> r8
      <g' b' fis''>8~ q <g'' e''>4 \glissando b''8~
      b'' c'''16 b'' a'' g''fis'' e'' d'' c'' b' a' g' fis' e' d'\glissando
      <b g' d''>4 e''8 fis'' g'' <g' f'' b''>4.
      <c'' e'' a''>8 <c'' e'' g''>4 <a' c'' fis''>8~ q <a' dis'' g''>4 <a' dis'' fis''>8
      <g' cis'' e''>4 r
      \acciaccatura { <b b'>16\glissando }
      <c' c''>8 <b b'>4 <g g'>8 <<
        {<e e'> \noBeam \stemUp e'' fis''( e'')}\\
        {s4 <b fis' a' dis''>4}
      >>
      \arpeggioNormal
      <e b fis' b' cis'' g''>4\arpeggio r8 <a' dis'' g'' cis'''>8~ \bar "||"
      q4 g''
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      <<{b''4}\\{<dis' b''>8 <c'' fis''>}>> <d' aes' b' f''>8 <cis' g' bes' e''> <d' g''> a' d''( b')
      <<
        {e''4. g''8 a''4 s4 r8 <a' fis'>[ dis'] r r <b' c'' e''>8[ q q~] \stemDown q <g' c'' dis''>4.}\\
        {
          \once \override NoteColumn #'force-hshift = #1.3
          \shiftOnn <a d''>8([ a' c'')] r a''16 g'' fis'' e'' d'' c'' b' ais' b'4. g'8 fis'4 s s2
        }
      >>
      \stemNeutral
      <<
        {g''4 s s b''4 s2 e''4. g''8~ g''8 s s s \stemDown a'8 b''}\\
        {
          <e' g''>8[ g' <g' d''> q~] q4 <dis' b''>8 <c'' fis''> \stemUp <d'! g''>8[ d''( b') a']~
          \stemDown
          \once \override NoteColumn #'force-hshift = #1.3
          \shiftOnn <a a' d''>4 c'' <g' b'>8[ <c'' e'' a''><d'' fis'' b''><dis'' g'' c'''>]~ \stemUp q8 s
        }
      >>
      \stemNeutral <g' c'' e'' a''>4 <a' dis'' g''>8 <a' c'' fis''>4 g''8 fis''16 e'' dis'' c'' b' a' g' fis' e'2
      \bar "|."
    }
  }
}
