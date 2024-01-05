\version "2.19.15"

\language "deutsch"


rightOrgan = \relative {
  \key d \minor
  \repeat volta 4 {<f'' a d>1}
  \alternative {
    {<e a e'>1}
    {<e a e'>1}
  }
}

leftOrgan = \relative {
  \key d \minor
  \repeat volta 4 {<e' a>1}
  \alternative {
    {<e a>1}
    {<e a>1}
  }
}

fusOrgan = \relative {
  \key d \minor
  \clef "bass"
  \repeat volta 4 {d1}
  \alternative {
    {cis1}
    {cis1}
  }
}