\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "flute.ly"
\include "oboe.ly"
\include "clarinet.ly"
\include "fagotto.ly"
\include "corno.ly"
flClErste = {\partcombine \clarinettoMusicErste \fluteMusicErste}
\score {
  <<
    \new Staff {
      \partcombine
      \flClErste      
      \oboeMusicErste
    }
    \new Staff {
      \partcombine
      \cornoMusicErste
      \fagottoMusicErste
    }
  >>
}
flClZweite = {\partcombine \clarinettoMusicZweite \fluteMusicZweite}
\score {
  <<
    \new Staff {
      \partcombine
      \flClZweite      
      \oboeMusicZweite
    }
    \new Staff {
      \partcombine
      \cornoMusicZweite
      \fagottoMusicZweite
    }
  >>
}