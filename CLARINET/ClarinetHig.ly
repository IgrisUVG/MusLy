% Created on Thu Jul 18 20:46:43 MSK 2013
\version "2.18.0"

\header {
  title = "Кларнет" 
  subtitle = "Аппликатура верхнего регистра"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #60
  system-system-spacing #'basic-distance = #14
  last-bottom-spacing #'basic-distance = #16
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = #0
  line-width = #150
  ragged-last = ##f
  ragged-right = ##f
}

applicatur = {
  %{
    \new Staff {
    \time 4/4
    \transposition bes,
    \key c \major
    \clef treble
    { 	
    r1^\markup {
    \woodwind-diagram
    #'clarinet
    #'(
    (cc . (one h two three four five six))
    (lh . (R thumb a gis ees cis fis f e))
    (rh . (one two three four b gis fis f e))
    )
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
  %}
  
  {
    \ottava #1 {
      g'''1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (two three four five six))
            (lh . (R thumb))
            (rh . (f))
            )
      }
      as'''1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (two three four))
            (lh . (R thumb))
            (rh . (b f))
            )
      }
      a'''!1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (two three))
            (lh . (R thumb cis))
            (rh . (gis))
            )
      }
      bes'''1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (two))
            (lh . (R a cis))
            (rh . (gis))
            )
      }
      b'''!1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (one two four five))
            (lh . (R thumb))
            (rh . (gis))
            )
      }
      b'''1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (one two four five))
            (lh . (R thumb gis))
            (rh . (gis))
            )
      }
      c''''1^\markup {
        \woodwind-diagram
        #'clarinet
        #'(
            (cc . (one four))
            (lh . (R thumb gis))
            (rh . (gis))
            )
      }
    }
  }
}
\new Staff {
  \time 4/4
  \transposition bes,
  \key c \major
  \clef treble
  \applicatur
}


