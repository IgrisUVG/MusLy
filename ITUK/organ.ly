\version "2.19.15"

\language "deutsch"

%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
rightOrgan = \relative {
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "2.-4."))
    <f'' a d>1 <e a e'>
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {<f a d>1 <e a e'>}
  }
}

leftOrgan = \relative {
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "2.-4."))
    <e' a>1 <e a>1
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {<e' a>1 <e a>}
  }
}

fusOrgan = \relative {
  \key d \minor
  \clef "bass"
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "2.-4."))
    d1 cis1
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {d1 cis}
  }
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 2 {e2 fis fis g c, d}
    \alternative {
      {e1}
      {
        e4 r
        \set Score.repeatCommands = #'((volta #f))
        r2
      }
    }

  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    e2 fis fis g c, d e1
    e2 fis fis g c, d e4
  }
}