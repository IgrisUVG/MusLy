\version "2.18.0"

\language "deutsch"

\header {
  title = "SCHABLON"
  meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = ##f
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
  	\PianoStaff
  	\consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key es \minor
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  <des' ges b>8 <des f b><des es b'><b des b'>
  <<
    {
      <des es b'><des f b><es f b><f ges b><as b des><b ces es><des es ges> q
    }
    \\
    {
      s4
      \autoBeamOff
      \crossStaff
      {
        des,8 es ges as b ces
      }
      \autoBeamOn
    }
  >>
  \stemUp
  <es fes as>4 q\bar "||"
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key es \minor
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  <b, b'>8 q <as as'><ges ges'><as as'><b b'> 
  \once\override NoteColumn.force-hshift = #2
  des 
  
  es
  ges as b ces \change Staff = RH
  \stemDown <des des'>4<deses deses'>
  \change Staff = LH
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
  
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}