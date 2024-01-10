\version "2.19.15"

\language "deutsch"

%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
rightOrgan = \relative {
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "1.-4."))
    <f'' a d>1 <e a e'>
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {<f a d>1 <e a e'>}
  }
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 2 {
      <<
        {
          g2 fis
        }
        \\
        {
          d1
        }
      >>
      <h d fis>2 <h e> <g d'> <fis~ cis'>
    }
    \alternative {
      {<fis h>1}
      {
        <fis h fis'>4 r
        \set Score.repeatCommands = #'((volta #f))
        r2
      }
    }

  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    <<
      {
        g'2 fis
      }
      \\
      {
        d1
      }
    >>
    <h d fis>2 <h e> <g d'> <fis~ cis'> <fis h>1
    <<
      {
        g'2 fis
      }
      \\
      {
        d1
      }
    >>
    <h d fis>2 <h e> <g d'> <fis_~ cis'> <fis h fis'>4 r r2
  }
}

leftOrgan = \relative {
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "1.-4."))
    <e' a>1 <e a>1
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {<e a>1 <e a>}
  }
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 2 {
      <c g'>2
      <<
        {
          <d a'~>2 q e
        }
        \\
        {
          s2 fis1
        }
      >>
      <g, e'>2 <a e'^~>
    }
    \alternative {
      {<g e'>1}
      {
        <g e'>4 r
        \set Score.repeatCommands = #'((volta #f))
        r2
      }
    }

  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
      <c g'>2
      <<
        {
          <d a'~>2 q e
        }
        \\
        {
          s2 fis1
        }
      >>
      <g, e'>2 <a e'^~> <g e'>1
      <c g'>2
      <<
        {
          <d a'~>2 q e
        }
        \\
        {
          s2 fis1
        }
      >>
      <g, e'>2 <a e'^~> <g e'>4 r r2
  }
}

fusOrgan = \relative {
  \key d \minor
  \clef "bass"
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "1.-4."))
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
    e2 fis fis g c, d e4 r r2
  }
}