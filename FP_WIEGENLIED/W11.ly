\version "2.19.15"
\language "deutsch"
%%%%%%%%%%% RH %%%%%%%%%%%%
elfteRH = \relative {
  \clef treble
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
    {
      e''4. cis8 d4 h c! es a,!2 b4 c d fis cis c h2
    }
    \\
    {
      g4 a2 gis4 g! f2. ges4 f2 a4~ a2 gis
    }
  >>
  \break
  <<
    {
      e'4. cis8 d4 h c! es a,!2 b4. c8 d4 fis cis c h2
    }
    \\
    {
      g4 a2 gis4 g! f2. ges4 f2 a4~ a2 gis
    }
  >>
  \bar ":|."
}
%%%%%%%%%% VERSE %%%%%%%%%%
elfteVerseEins = \lyricmode {
  Ночь4. на8 -- кры4 -- ла, а я встал.2
  По4 -- то -- му что спать у -- стал.2
  Мне4. сов8 -- сем4 не за -- пад -- ло2
  спать,4. ког8 -- да4 во -- круг свет -- ло2
}
elfteVerseZwei = \lyricmode {
  Мне4. сов8 -- сем4 не за -- пад -- ло2
  спать,4. ког8 -- да4 во -- круг свет -- ло2
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicElf = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
elfteLH = \relative {
  \clef bass
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <e b'>4<g a h><f h c><fis dis'><f! f'!> b
  <<
    {
      d2 es2. d4 cis e2.
    }
    \\
    {
      d4 c ces b2 a4 fis a e dis
    }
  >>
  <e b'>4<g a h><f h c><fis dis'><f! f'!> b
  <<
    {
      d2 es2. d4 cis e2.
    }
    \\
    {
      d4 c ces b2 a4 fis a e dis
    }
  >>
}