\version "2.18.0"

\language "deutsch"

\header {
  title = "УШИ ВАН ГОГА"
  %instrument = "Guitar"
  tagline = \markup {\char ##x00A9 "Уши ван Гога"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #17
  %score-system-spacing #'basic-distance = #15
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
  indent = #0
  ragged-right = ##f
  ragged-last = ##f
}
%%%%%%%%%%%% Some macros %%%%%%%%%%%%%%%%%%%
sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}
crOn = \override NoteHead.style = #'cross
crOff = \revert NoteHead.style

\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords        
        e4*3:m fis:dim7 e4*3:m fis:dim7
        a4*3:m h:dim7 a4*3:m h:dim7
        a4*3:m e8*3:m d:m a4*3:m e8*3:m d:m
        a4*3:m e4*3:m c4*3: e4*3:m 
      }
    }
    \new Staff
    \relative e, {
      \clef "treble_8"
      \key e \minor
      \time 12/8
      %\override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      \repeat unfold 2 {
		  <e h' e g h e>8^\markup {
			  \fret-diagram #"6-o;5-2;4-2;3-o;2-o;1-o;"
		  }\noBeam
		  \sl
		  h'' h h h h
		  \nsl
		  <e,, fis' c'>^\markup {
			  \fret-diagram #"6-o;5-9;5-12;4-10;3-x;2-x;1-x;"
		  }\noBeam
		  \sl
		  h'' h
		  \nsl
		  <e,, a' \parenthesize c>
		  <e fis' c'>
		  \sl
		  h''\noBeam
		  \nsl
		  }
      \repeat unfold 2 {
      	<e,, a e' a c e>8^\markup {
      		\fret-diagram #"6-o;5-o;4-2;3-2;2-1;1-o;"
      	}\noBeam
		  \sl
		  h'' h h h h
		  \nsl
		  <e,, a h' f'>^\markup {
      		\fret-diagram #"6-o;5-o;4-9;4-12;3-10;2-x;1-x;"
      	}\noBeam
		  \sl
		  h'' h
		  \nsl
		  <e,, a d' \parenthesize f>
		  <e a h' f'>
		  \sl
		  h''\noBeam
		  \nsl
	  	}
      \break
      \bar "||"
      \repeat unfold 2 {
      	<e,, a e' a c e>8^\markup {
      		\fret-diagram #"6-o;5-o;4-2;3-2;2-1;1-o;"
      	}\noBeam
		  \sl
		  h'' h h h h
		  \nsl
		  <e,, a h' e g e>^\markup {
      		\fret-diagram #"6-o;5-o;4-9;3-9;2-8;1-o;"
      	}\noBeam
		  \sl
		  h'' h
		  \nsl
		  <e,, a a' d f e>^\markup {
      		\fret-diagram #"6-o;5-o;4-7;3-7;2-6;1-o;"
      	}\noBeam
		  \sl
		  h'' h
		  \nsl
      }
      %\bar "|."
    }
    %{
    \new Staff
    \relative e,, {
      \clef "bass_8"
      \key a \minor
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      
    }
    %}
  >>
  \header { piece = "\"Архитектура сознания\"" }
}