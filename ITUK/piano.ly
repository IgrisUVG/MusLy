\version "2.19.15"

\language "deutsch"

top = \change Staff = "RH"
bot = \change Staff = "LH"

rightPiano = \relative {
  \repeat volta 4 {
    <e' a d>4<g c>8 <f a>4. h4
  }
  \alternative {
    {
      <<
        {
          cis2.
          \stemDown
          <d a'>8 <h gis'>
        }
        \\
        {
          r8 <d, h'>4 a'8 gis e4.
        }
      >>
    }
    {
      <<
        {
          cis'2
        }
        \\
        {
          r8 <d, h'>4 <e a>8
        }
      >>
      \set Score.repeatCommands = #'((volta #f))
      \stemUp
      <gis cis>8 <h e> <e a>4
      \stemNeutral
    }
  }
  \bar "||"
  \break
  R1*7
}

leftPiano = \relative {
  \clef "bass"
  \repeat volta 4 {
    <<
      {
        s2 e'4 s
      }
      \\
      {
        d,8 a' h c e d a d,
      }
    >>
  }
  \alternative {
    {
      <<
        {
          s2. e8 cis'
        }
        \\
        {
          a, e' a <gis cis> h a e4
        }
      >>
    }
    {
      a,8 e' a <gis cis>
      \set Score.repeatCommands = #'((volta #f))
      \stemDown
      \top <h e> <e a> <gis cis>4 \bot
      \stemNeutral
    }
  }
  \bar "||"
  \break
  R1*7
}