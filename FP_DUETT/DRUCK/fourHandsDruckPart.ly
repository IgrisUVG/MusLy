\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

#(set-default-paper-size "a4" 'landscape)
\paper {
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 15
  outer-margin = 25
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% INCLUDE %%%%%%%%%
\include "primoD.ly"
\include "secondoD.ly"

\book {
  \paper {
    print-all-headers = ##t
    %{
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
    %}
  }
  \header {
    title = "***"
    %composer = "I. G."
    meter = ##f
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \secondoRHseiteEins
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \secondoLHseiteEins
    >>
    \header {
      title = ##f
      subtitle = "Secondo"
      meter = "Lento"
      %composer = ##f
      composer = "I. G."
      breakbefore = ##t
    }
    \layout {}
  }
  \pageBreak
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \primoRHseiteZwei
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \primoLHseiteZwei
    >>
    \header {
      title = ##f
      subtitle = "Primo"
      meter = "Lento"
      %composer = ##f
      composer = "I. G."
    }
    \layout {}
  }
  \pageBreak
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \secondoRHseiteDrei
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \secondoLHseiteDrei
    >>
    \header {
      title = ##f
      tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
    }
    \layout {
      indent = #0
      ragged-last = ##t
    }
  }
  \pageBreak
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \primoRHseiteVier
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \primoLHseiteVier
    >>
    \header {
      title = ##f
      tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
    }
    \layout {
      indent = #0
      ragged-last = ##t
    }
  }
  \pageBreak
  \markuplist {
    \fill-line {
      \column {
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \hspace #1
        \line {
          ***
        }
      }
    }
  }
  \pageBreak
}