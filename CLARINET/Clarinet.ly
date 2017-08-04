% Created on Thu Jul 18 20:46:43 MSK 2013
\version "2.18.0"

\header {
	title = "Кларнет" 
 subtitle = "Пример аппликатуры" 
 	composer = "I. G." 
 	instrument = "Clarinet" 

}



\new Staff {
	\time 4/4
	\transposition bes,
	\key c \major
	\clef treble
	{ 	
 r1^\markup {
    %\center-column {
      %'clarinet
      %" "
      \woodwind-diagram
        #'clarinet
        #'(
           (cc . (one h two three four five six))
           (lh . (R thumb a gis ees cis fis f e))
           (rh . (one two three four b gis fis f e))
          )
    %}
}
bes'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . ())
	    (lh . (R a))
	    (rh . ())
	   )
}
f'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . ())
	    (lh . (thumb))
	    (rh . ())
	   )
}
d'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two))
	    (lh . (thumb))
	    (rh . ())
	   )
}
bes1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three four))
	    (lh . (thumb))
	    (rh . ())
	   )
}
%\break
b!1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three four))
	    (lh . (thumb))
	    (rh . (b))
	   )
}
dis'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two))
	    (lh . (thumb))
	    (rh . (four))
	   )
}
fis'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one))
	    (lh . ())
	    (rh . ())
	   )
}
b'1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three four five six))
	    (lh . (R thumb e))
	    (rh . ())
	   )
}
dis''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three four five six))
	    (lh . (R thumb))
	    (rh . (gis))
	   )
}
fis''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three five))
	    (lh . (R thumb))
	    (rh . ())
	   )
}
b''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one))
	    (lh . (R thumb))
	    (rh . ())
	    )
}
dis'''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (two three four))
	    (lh . (R thumb))
	    (rh . (b))
	    )
}
fis'''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (two))
	    (lh . (R thumb cis))
	    (rh . (gis))
	    )
}
cis'''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (two three four five))
	    (lh . (R thumb))
	    (rh . ())
	    )
}
ais''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two))
	    (lh . (R thumb))
	    (rh . (four))
	    )
}
fis''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three five))
	    (lh . (R thumb))
	    (rh . ())
	    )
}
cis''1^\markup {
	\woodwind-diagram
	 #'clarinet
	 #'(
	    (cc . (one two three four five six))
	    (lh . (R thumb))
	    (rh . (fis))
	    )
}
	\bar "|."
	}

}



