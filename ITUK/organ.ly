\version "2.19.15"

\language "deutsch"

rightOrgan = \relative {
  \key d \minor
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \tag #'Partitur {\partial 4 s4}
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
        <fis h fis'>4
        %\set Score.repeatCommands = #'((volta #f))
        <<
          {
            s4 d''2
          }
          \\
          {
            <h~ e^~>2. <h e fis>4
          }
        >>
      }
    }
    <<
      {
        s4 d2
      }
      \\
      {
        <h~ e^~>2. <h e fis>4
      }
    >>
    <<
      {
        s4 d2
        \time 3/4
        s2 d4
      }
      \\
      {
        <h~ e^~>2.
        \time 3/4
        <h e fis>4
        <h~ e^~>2
      }
    >>
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    <<
      {
        g2 fis
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
    <h d fis>2 <h e> <g d'> <fis_~ cis'> <fis h fis'>4
    <<
      {
        s4 d''2
      }
      \\
      {
        <h~ e^~>2. <h e fis>4
      }
    >>
    <<
      {
        s4 d2
      }
      \\
      {
        <h~ e^~>2. <h e fis>4
      }
    >>
    <<
      {
        s4 d2
        \time 3/4
        s2 d4
      }
      \\
      {
        <h~ e^~>2.
        \time 3/4
        <h e fis>4
        <h~ e^~>2
      }
    >>
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 9/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  R1
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 3 {<f a c>1}
    \alternative {{<e a e'>}{<f as f'>}}
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 2 {<f a c>1 <e a e'>} <f a c> <f as f'>
  }
}

leftOrgan = \relative {
  \key d \minor
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t  
  \tag #'Partitur {\partial 4 s4}
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
        <g e'>4 e''
        \set Score.repeatCommands = #'((volta #f))
        d2
      }
    }
    fis4 e d2
    fis4 e d2
    \time 3/4
    fis4 e d
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    <c, g'>2
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
    <g, e'>2 <a e'^~> <g e'>4 e'' d2
    fis4 e d2
    fis4 e d2
    \time 3/4
    fis4 e d
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 9/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  R1
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 3 {<e, a>1}
    \alternative {{<e a>}{<des as'>}}

  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 5 {<e' a>1} <des as'>
  }
}

fusOrgan = \relative {
  \key d \minor
  \clef "bass"
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \tag #'Partitur {\partial 4 s4}
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
    R1*2
    \time 3/4
    R2.
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    e2 fis fis g c, d e1
    e2 fis fis g c, d e4 r r2 R1*2
    \time 3/4
    R2.
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 9/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  R1
  \key d \minor
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 3 {a1}
    \alternative {{cis,}{as'}}

  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 2 {a1 cis,} a' as
  }
}