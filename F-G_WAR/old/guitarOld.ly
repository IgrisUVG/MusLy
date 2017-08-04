\version "2.18.0"

\language "deutsch"

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.style = #'solid
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

FO = #(define-music-function (parser location offsetX offsetY)(number? number?)
        #{
          \once \override Voice.Fingering #'extra-offset = #(cons offsetX offsetY)
        #})

guitarMusic = {
  \clef treble
  \key e \major
  \time 2/4
  %\override Staff.TimeSignature #'stencil = ##f
  \override Fingering #'staff-padding = #'()
  \repeat volta 2 {
    e8 r <gis' h' e''> r h r <fis' h' dis''> r
    dis' r <h' fis'' h''> r e' r <h' e'' gis''> r
    <gis h' e''> r <cis' e'' a''> <dis' h' fis''> <e' h' gis''> r <cis' gis' e''> r
  }
  \alternative {
    {<a cis'' e''> r <h fis' dis''> r <e' h' e''> r <a cis'' e''> r}
    {<a cis'' e''> r}
  }
  <h fis' dis''> r <cis' gis' cis''> r <h dis'' fis''>4
  <e' h' e''>8 r r <h e'' gis''> <a cis'' e''> r <h dis'' fis''>4
  <e' h' e''>8 r <cis' cis'' gis''> r <a cis'' e''> r <h dis'' fis''>4
  <e' h' e''>8 r <cis' cis'' gis''> r <a cis'' a''> r <h dis'' a''> r
  <cis' e'' gis''> r r4
  <<
    {
      \stringNumberSpanner "2"
      \textSpannerUp
      \once\override TextSpanner.extra-offset = #'(0 . -0.5)
      h'8\startTextSpan <gis e' h' e''>_- r s
      h''16_( a'') gis''\stopTextSpan
      \stringNumberSpanner "3"
      \once\override TextSpanner.extra-offset = #'(0.5 . 0)
      fis''\startTextSpan e''_( dis'') cis'' c''\stopTextSpan
    }
    \\
    {
      s4.					   <cis' a' e'' a''>8
      \override TextScript.extra-offset = #'(-0.5 . 6)
      h4-\markup{\teeny VII} \FO #'0.2 #'0.2 a-0
    }
  >>
  h'8 <gis e' h' e''>-- r <cis' a' e'' a''>
  <<
    {
      h''16_( a'') gis'' fis'' e''_( dis'') cis'' c''
    }
    \\
    {
      h4                      a
    }
  >>
  h'8 <cis' e''> r <h a' e'' a''>^\markup{\teeny V}
  r <h gis' e'' h''>^\markup{\teeny V}
  r <h fis' dis'' fis''>^\markup{\teeny II}
  <<
    {
      \FO #'1.2 #'-4.5 <gis e'-1 h' e''>8
    }
    \\
    {
      \FO #'-1.2 #'3.5 gis16[-4 a]
    }
  >>
  \FO #'0 #'-3.2 h16(-2 cis') dis' e' fis' gis' a' h' cis'' dis'' e''(\2 fis'') gis'' a''
  \repeat volta 2 {
    <e gis' h''>8 r <e' h' gis''> r <h dis'' fis''>4 r8 <fis' e'' cis'''>
    <dis' fis'' h''> r <h fis'' dis'''> r <e' h' gis''>4 r8 <h a' fis''>
    <gis h' e''> r <cis' e'' a''> <dis' h' fis''> <e' h' gis''> r <cis' gis' e''> r
  }
  \alternative{
    {<a cis'' e''> r <h fis' dis''> r <e' h' e''> r <a cis'' a''> r}
    {<a cis'' e''> r}
  }
  <h fis' dis''> r <cis' gis' cis''> r h''8.( a''16
  <e' h' gis''>8) r <gis e' h'> r <a cis'' e''> r
  <<
    {
      h''8.( a''16 \stemDown <e' h' gis''>8)
    }
    \\
    {
      <h fis' dis''>4 s8
    }
  >>
  r8 <gis cis'' e''> r <a cis'' fis''> r
  <<
    {
      h''8.( a''16 \stemDown <e' h' gis''>8)
    }
    \\
    {
      <h fis' dis''>4 s8
    }
  >>
  r8 <gis e' h'> r <a e' cis''> r <h fis' dis''> r
  <cis' gis' e''> r
  <<
    {
      \once\override Slur.positions = #'(0 . 1)
      h'8.( a'16 gis'8) s e' s fis' s
      \once\override Slur.positions = #'(0 . 1)
      \once \override NoteColumn.force-hshift = #.3
      \once\override Beam.positions = #'(3.5 . 3)
      h'8.( a'16 gis'8) s 
      \once \override NoteColumn.force-hshift = #.3
      h' s e' s
      \once\override Slur.positions = #'(0 . 1)
      \once \override NoteColumn.force-hshift = #.3
      \once\override Beam.positions = #'(3.5 . 3)
      h'8.( a'16 gis'8) s
    }
    \\
    {
      \voiceOne
      fis'''8 s h'' s a'' s gis''8.( fis''16)
      e''8 s h'' s a'' s gis''8.( fis''16)
      e''8 s
    }
    \\
    {
      \voiceTwo
      dis'8 r e r cis' r a r gis r a r dis' r cis' r h r e r
    }
  >>
}