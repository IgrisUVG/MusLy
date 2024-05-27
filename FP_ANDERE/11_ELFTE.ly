\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "11" }
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
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

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
     #(lambda (m p)
        (let ((mu (ly:music-property m 'element)))
          (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
          (ly:make-music-relative! mu p)
          (ly:music-transpose mu (ly:make-pitch arg 0 0)))
        p)
     \transpose c' $(ly:make-pitch arg 0 0) $mus
     $mus
     >>
   #})
pocoCr =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco cresc.")

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \omit Staff.TimeSignature
  <des' e g as c>1<dis fis g d'!><e f! gis dis'><es fes a e'!>
  \cadenzaOn
  <d e! b' fis'>1\fermata
  s4 s32
  \cadenzaOff
  \bar "|"
  \break
  \time 2/4
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #0.65 \teeny \flat
  }
  g'2\startTrillSpan
  a!\startTrillSpan
  \revert TrillSpanner.bound-details.left.text
  h!\startTrillSpan
  \time 5/4
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #0.65 \teeny \flat
  }
  d1(\startTrillSpan s4
  \time 15/8
  d8)\stopTrillSpan d4.~ d16 d!~ d[ cis c cis] f,[ cis' f, a]
  gis2.\startTrillSpan
  \time 4/4
  <ces, f b>2-^\stopTrillSpan q
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \omit Staff.TimeSignature
  <e fis b>1<cis g' a c!><d! fis a b><h! f'! g b>
  \cadenzaOn
  <<
    {
      <e fis a>1 s4 s32
    }
    \\
    {
      \shape #'((1 . -1) (0 . 2) (-4 . 1) (0 . -.5)) Slur
      d4^( g,4. as8
      \override Beam.grow-direction = #RIGHT
      a64[ b h c cis d dis e f fis g gis a b h c
      \top cis d dis e f fis g]
      \override Beam.grow-direction = #'()
      gis64[ a b h c cis d dis e f fis])
    }
  >>
  \cadenzaOff
  \bar "|"
  \break
  \bot
  \time 2/4
  \omit TupletNumber
  \omit TupletBracket
  \tuplet 10/8 2 {
    h,,,,16[( f' as d h' as d, h f as,])
    g[( e' g dis' c' g dis c e, ges,])
    f[( es' gis d'! h' gis d h es, fis,])
  }
  \time 5/4
  e!8\noBeam
  \clef treble
  <cis'''' e>->[(<h d><a c>])<c es>->(<b des><as ces>[)<h d>->(<a c><g b>])
  \time 15/8
  <cis e>->[(<h d><a c>])<c es>->(<b des><as ces>[)<h d>->(<a c><g b>])
  \clef bass
  f,, g!
  \once \undo \omit TupletNumber
  \tuplet 3/2 {a8[ h cis]} dis16 f g a
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1\pp
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
  %\midi {}
}