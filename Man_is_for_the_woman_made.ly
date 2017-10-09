\version "2.18.0"

\language "deutsch"

\header {
  title = "Man is for the woman made"
  meter = "Allegro vivo"
  composer = "Henry Purcell"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
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
	<<
		\new Voice = "mel" \relative c'' {
			\clef treble
			\time 2/2
			c2 e d2. e4 f8( e) d( c) d( c) h( a) g2. g'8 f\noBeam
			e( f) g4 g,8( a) h4 c2.
			\bar "||"
		}
		\new Lyrics \lyricsto mel {
				Man, man, man is for __ the __ wo -- man made,
				And the wo -- man made for man;
				As the spur is for the jade,
				As the scab -- bard for the blade,
				As for dig -- ging is the spade,
				As for liq -- uor is the can,
				So man, man, man is for the wo -- man made,
				And the wo -- man made for man.
				%%%%%%%%%%%%%%%%%%%%%
				As the scep -- ter to be sway'd,
				As for night's the ser -- e -- nade,
				As for pud -- ding is the pan,
				And to cool us is the fan,
				So man, man, man is for the wo -- man made,
				And the wo -- man made for man.
				%%%%%%%%%%%%%%%%%%%%%
				Be she wid -- ow, wife or maid,
				Be she wan -- ton, be she stayed,
				Be she well or ill ar -- ray'd,
				Who -- re, bawd or har -- ri -- dan,
				Yet man, man, man is for the wo -- man made,
				And the wo -- man made for man.
			}
    \new Staff \relative c' {
    	\clef bass
			\time 2/2
			c2 c, g'2. g4 d2. d4 e8 d c h c h a g c4 e f g c,1
    }
  >>
}