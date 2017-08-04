\version "2.18.0"

\language "deutsch"

\header {
  title = "F&G War."
  meter = "Lustig"
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #14
    \remove "Bar_number_engraver"
  }
}
\score {
  \new StaffGroup<<
    \time 6/8

    \new Staff
    \with {
      instrumentName = "Fl."
    }
    \relative e'' {
      \clef treble
      \key e \major
      \time 2/4
      %\override Staff.TimeSignature #'stencil = ##f
      \repeat volta 2 {
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      }
      \alternative {
        {cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.}
        {cis8 e-. }
      }
      fis-. dis-. 
      e-. r 
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
      r8 a,16 h cis( dis) e fis \break
      \repeat volta 2 {
        gis( a) h cis dis( e) fis gis gis8( fis) dis,16( e) fis gis
        a( h) cis dis e( fis) gis a a8( gis) e16( fis gis a
        h) e,( gis e) a( gis) fis e gis( e h) fis' e( dis) cis h
      }
      \alternative{
        {cis( e a) cis, dis h' fis( dis) gis( a) fis e dis cis h a}
        {cis[ e( dis}
      }
      cis] dis) fis( e dis e8) r r4
      h8-- e,16( h gis h fis' gis a, h fis' a dis, fis h dis
      e8)
    }
    \new Staff
    \with {
      instrumentName = "Guit."
    }
    {
      \clef treble
      \key e \major
      \time 2/4
      %\override Staff.TimeSignature #'stencil = ##f
      e8 r <gis' h' e''> r h r <fis' h' dis''> r
      dis' r <h' fis'' h''> r e' r <h' e'' gis''> r
      <gis h' e''> r <cis' e'' a''> <dis' h' fis''> <e' h' gis''> r <cis' gis' e''> r
      <a cis'' e''> r <h fis' dis''> r <e' h' e''> r <a cis'' e''> r
      <a cis'' e''> r <h fis' dis''> r <cis' gis' cis''> r <h dis'' fis''>4
      <e' h' e''>8 r r <h e'' gis''> <a cis'' e''> r <h dis'' fis''>4
      <e' h' e''>8 r <cis' cis'' gis''> r <a cis'' e''> r <h dis'' fis''>4
      <e' h' e''>8 r <cis' cis'' gis''> r <a cis'' a''> r <h dis'' a''> r
      <cis' e'' gis''> r r4 
      h'8 <gis e' h' e''>-- r <cis' a' e'' a''>
      <<
        {
          h''16_( a'') gis'' fis'' e''_( dis'') cis'' c''
        }
        \\
        {
          h4                      a
        }
      >>
      h'8 <gis e' h' e''>-- r <cis' a' e'' a''>
      <<
        {
          h''16_( a'') gis'' fis'' e''_( dis'') cis'' c''
        }
        \\
        {
          h4                      a
        }
      >>
      h'8 <cis' e''> r <h a' e'' a''> r <h gis' e'' h''> r <h fis' dis'' fis''>
      <<
        {
          <gis e' h' e''>8
        }
        \\
        {
          gis16[ a]
        }
      >>
      h16( cis') dis' e' fis' gis' a' h' cis'' dis'' e''( fis'') gis'' a''
      <e gis' h''>8 r <e' h' gis''> r <h dis'' fis''>4 r8 <fis' e'' cis'''>
      <dis' fis'' h''> r <h fis'' dis'''> r <e' h' gis''>4 r8 <h a' fis''>
      <gis h' e''> r <cis' e'' a''> <dis' h' fis''> <e' h' gis''> r <cis' gis' e''> r
      <a cis'' e''> r <h fis' dis''> r <e' h' e''> r <a cis'' a''> r
      <a cis'' e''> r <h fis' dis''> r <cis' gis' cis''> r h''8.( a''16
      <e' h' gis''>8) r <gis e' h'> r <a cis'' e''> r
      <<
        {
          h''8.( a''16 \stemDown <e' h' gis''>8)
        }
        \\
        {
          <h fis' dis''>4 s8
        }
      >>
      r8 <gis cis'' e''> r <a cis'' fis''> r
      <<
        {
          h''8.( a''16 \stemDown <e' h' gis''>8)
        }
        \\
        {
          <h fis' dis''>4 s8
        }
      >>
      r8 <gis e' h'> r <a e' cis''> r <h fis' dis''> r <cis' gis' e''>
    }
  >>
}