\version "2.19.15"

\language "deutsch"

rechtsHdur = \relative {
  \clef treble
  \key h \major
  \override Staff.TimeSignature.stencil = ##f
  r16 h' cis dis h ais fis' h, gis e' cis dis h fis cis' h
  \bar ".|:"
  fis h cis dis h ais fis' h, gis e' cis dis h fis cis' h
  \bar ":|."
}

dynamicHdur = {
  \override Hairpin.to-barline = ##f
  
}

linksHdur = \relative {
  \clef bass
  \key h \major
  \override Staff.TimeSignature.stencil = ##f
  R1 \bar ".|:" R1 \bar ":|."
}