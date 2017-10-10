\version "2.18.0"

\language "deutsch"

\header {
  title = "SCHABLON"
  meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = ##f%\markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-global-staff-size 17)
\paper {
  indent = 3.0\cm  % space for instrumentName
  short-indent = 1.5\cm  % space for shortInstrumentName
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

fluteMusic = \relative c' { \key g \major g'1 b }
% Pitches as written on a manuscript for Clarinet in A
% are transposed to concert pitch.
clarinetMusic = \transpose c' a
\relative c'' { \key b \major b1 d }
trumpetMusic = \relative c { \key g \major g''1 b }
% Key signature is often omitted for horns
hornMusic = \transpose c' f
\relative c { d'1 fis }
percussionMusic = \relative c { \key g \major g1 b }
sopranoMusic = \relative c'' { \key g \major g'1 b }
sopranoLyrics = \lyricmode { Lyr -- ics }
altoIMusic = \relative c' { \key g \major g'1 b }
altoIIMusic = \relative c' { \key g \major g'1 b }
altoILyrics =  \sopranoLyrics
altoIILyrics = \lyricmode { Ah -- ah }
tenorMusic = \relative c' { \clef "treble_8" \key g \major g1 b }
tenorLyrics = \sopranoLyrics
%pianoNotes%
\include "piano.ly"
violinIMusic = \relative c' { \key g \major g'1 b }
violinIIMusic = \relative c' { \key g \major g'1 b }
violaMusic = \relative c { \clef alto \key g \major g'1 b }
celloMusic = \relative c { \clef bass \key g \major g1 b }
bassMusic = \relative c { \clef "bass_8" \key g \major g,1 b }

\score {
  <<
    \new StaffGroup = "StaffGroup_woodwinds" <<
      \new Staff = "Staff_flute" {
        \set Staff.instrumentName = #"Flute"
        % shortInstrumentName, midiInstrument, etc.
        % may be set here as well
        \fluteMusic
      }
      \new Staff = "Staff_clarinet" {
        \set Staff.instrumentName =
        \markup { \concat { "Clarinet in B" \flat } }
        % Declare that written Middle C in the music
        %  to follow sounds a concert B flat, for
        %  output using sounded pitches such as MIDI.
        \transposition b
        % Print music for a B-flat clarinet
        \transpose b c' \clarinetMusic
      }
    >>
    \new StaffGroup = "StaffGroup_brass" <<
      \new Staff = "Staff_hornI" {
        \set Staff.instrumentName = #"Horn in F"
        \transposition f
        \transpose f c' \hornMusic
      }
      \new Staff = "Staff_trumpet" {
        \set Staff.instrumentName = #"Trumpet in  C"
        \trumpetMusic
      }
    >>
    \new RhythmicStaff = "RhythmicStaff_percussion" <<
      \set RhythmicStaff.instrumentName = #"Percussion"
      \percussionMusic
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"Piano"
      \new Staff { \pianoRHMusic }
      \new Staff { \pianoLHMusic }
    >>
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" {
          \set Staff.instrumentName = #"Violin I"
          \violinIMusic
        }
        \new Staff = "Staff_violinII" {
          \set Staff.instrumentName = #"Violin II"
          \violinIIMusic
        }
      >>
      \new Staff = "Staff_viola" {
        \set Staff.instrumentName = #"Viola"
        \violaMusic
      }
      \new Staff = "Staff_cello" {
        \set Staff.instrumentName = #"Cello"
        \celloMusic
      }
      \new Staff = "Staff_bass" {
        \set Staff.instrumentName = #"Double Bass"
        \bassMusic
      }
    >>
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}