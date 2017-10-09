\version "2.18.0"

\language "deutsch"

\header {
  title = "Man is for the woman made"
  meter = "Allegro vivo"
  composer = "Henry Purcell"
  arranger = "Benjamin Britten"
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
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    \remove "Bar_number_engraver"
  }
}
\score {
  <<
    \new Voice = "mel" \relative c'' {
      \clef treble
      \time 2/2
      c2 e d2. e4 f8( e) d( c) d( c) h( a) g2. g'8 f
      e( f) g4 g,8( a) h4 c2.
      \bar "||"
      \repeat unfold 4 {
				g8 f
				e4 c' g e g2.
      } g4
      c2 e d2. e4 f8( e) d( c) d( c) h( a) g2. g'8 f
      e( f) g4 g,8( a) h4 c2.
      \bar "||"
      \repeat unfold 4 {
				g8 f
				e4 c' g e g2.
      } g4
      c2 e d2. e4 f8( e) d( c) d( c) h( a) g2. g'8 f
      e( f) g4 g,8( a) h4 c2.
      \bar "||"
      \repeat unfold 4 {
				g8 f
				e4 c' g e g2.
      } g4
      c2 e d2. e4 f8( e) d( c) d( c) h( a) g2. g'8 f
      e( f) g4 g,8( a) h4 c2~c8 r r4
      \bar "|."
    }
    \new Lyrics \lyricsto mel {
      Man, man, man is for the wo -- man made,
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

    \new PianoStaff <<
      \new Staff = "upper" \relative c' {
        \clef treble
        \time 2/2
        r4 <e g c>-- r <g c e>-- r <g h d>--<h d g>-- r
        r <d f a>--<a d f>--<f a d>--<g h>2.--<h d g>4-.
        r <g c e>-. r <g h d>-. r <e g c>-. c-.
        \bar "||"
        <e g>4 q2.--
        \repeat unfold 3{
        	q4-.
        	<<
        		{
        			g( h d h <e, g>2.)
        		}
        		\\
        		{
        			f f4 s2.
        		}
        	>>
        }
        <e g>4-.
        <<
        	{
        		g( h d f)
        	}
        	\\
        	{
        		f,2. <h d>4
        	}
        >>
        r <a c e>-- r <g c g'>-- r <h d g>-- r <d g h>--
        r <d f a>--<a d f>--<f a d>--<g h>2.--<h d g>4-.
        r <g c e>-. r <g h d>-. r <e g c>-. c-.
        \bar "||"
        <g' e'>-. q2.--
        \repeat unfold 3{
        	q4-.
        	<<
        		{
        			f'8( d h g f d h d <c e>2.)
        		}
        		\\
        		{
        			g'8 s4. s2 s2.
        		}
        	>>
        }
        <g e'>4-.
        <<
        	{
        		f'8( d h d f g h d)
        	}
        	\\
        	{
        		g,,8 s4. s4 d'
        	}
        >>
        r <e a c>-- r <c g' c>-- r <d g h>-- r <h d g>--
        r <a d f>--<d f a>--<f a d>--<e g h>2.--<c g' c>4-.
        r <g e' g>-. r <g d' f>-. r <g c e>-. c,-.
        <g c e>-. q2.-- <g' c e>4-.
        <<
        	{
        		\omit TupletNumber
        		\tuplet 3/2 4 {f'8( g a g[ f e] d c h a[ g f]} <c e g>2.)
        	}
        	\\
        	{
        		<g' d'>8 s4. s2 s2.
        	}
        >>
        <c e g>4-.
        <<
        	{
        		\omit TupletNumber
        		\tuplet 3/2 4 {h'8( c d c[ h a] g f e d[ c h]} <e, g c>2.)
        	}
        	\\
        	{
        		<f' g>8 s4. s2 s2.
        	}
        >>
        <e g c>4-.
        <<
        	{
        		\omit TupletNumber
        		\tuplet 3/2 4 {d'8( e f e[ d c] h a g f[ e d]}
        		\stemDown
        		<g, c e>2.)
        		\stemNeutral
        	}
        	\\
        	{
        		<f' g>8 s4. s2 s2.
        	}
        >>
        <g, c e>4-.
        <<
        	{
        		\omit TupletNumber
        		\tuplet 3/2 4 {fis'8( g as a[ b h] c cis d dis[ e f])}
        	}
        	\\
        	{
        		\once \override NoteColumn.force-hshift = #1.7
        		\once \override Accidental.extra-offset = #'(2.5 . 0)
        		<d, f!>8 s s2.
        	}
        >>
        s4 <e c' e>-! s <g h g'>-! s <d h' d>-! s <h g' h>-!
        s <d f d'>-! <a f' a>-! <f d' f>-!
        <<
        	{
        		e'8( d c h c h a g)
        	}
        	\\
        	{
        		<e g h>8 s s2.
        	}
        >>
        r4 <g c e g>-! r <h d g h>-! s <c e g c>-! s8 r r4
        \bar "|."
      }
      \new Staff = "lower" \relative c' {
        \clef bass
        \time 2/2
        c2 c, g'2. g4 d2. d4 e8( d c h c h a g c4) e f g
        c,2.
        \bar "||"
        c4 c2.--
        \repeat unfold 3{
        	c4-. h( d h g c2.)
        }
        c4-. h( d h <g g'>)<a a'>2<e e'><g g'><g' g'>
        <d d'>2. d4 e8 d c h c h a g c4 e f g
        c,2. <c g'>4-. q2.-- q4-.
        \repeat unfold 3{
        	<<
        		{
        			g'2. g4 g2. g4
        		}
        		\\
        		{
        			h,( d h g c2.) c4-.
        		}
        	>>
        }
        <<
        	{
        		g'2. g4
        	}
        	\\
        	{
        		h,( d h g)
        	}
        >>
        <a a'>2<e e'><g g'><g' g'>
        <d d'>2. q4 <e e'>8( d' c h c h a g c,4) e f g
        c,2.
        \bar "||"
        <c, c'>4-. q2.-- q4-.
        \repeat unfold 3{
        	<h h'>(<d d'><h h'><g g'><c c'>2.) q4-.
        }
        <h h'>(<d d'><h h'><g g'>)
        <<
        	{
        		s4 <e'' c'> s <h g'> s <d h'> s <h' d>
        		s <a f'>-!<f d'>-!<d a'>-!<g h>8 s s2.
        	}
        	\\
        	{
        		<a,, a'>2-> e'-> g-> g'-><d, d'>2.-> s4
        		e'8( d c h c h a g)
        	}
        >>
        <c, c'>4-><e e'>-><f f'>-><g g'>->
        <<
        	{
        		s4 <c g' e'>
        	}
        	\\
        	{
        		c,2
        	}
        >>
        \ottava #-1
        c,8
        \ottava #0
        r r4
        \bar "|."
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}