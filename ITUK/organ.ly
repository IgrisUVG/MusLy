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
rightOrganP = \relative {
  \key d \minor
  \repeat unfold 4 {<f'' a d>1 <e a e'>}
}


leftOrgan = \relative {
  \key d \minor
  \repeat volta 4 {<e' a>1}
  \alternative {
    {<e a>1}
    {<e a>1}
  }
}
leftOrganP = \relative {
  \key d \minor
  \repeat unfold 4 {<e' a>1 <e a>}
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
fusOrganP = \relative {
  \key d \minor
  \clef "bass"
  \repeat unfold 4 {d1 cis}
}