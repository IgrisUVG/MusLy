\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
shemeMMXXII = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.Clef.stencil = ##f
  \override Stem.stencil = ##f
  \override Flag.stencil = ##f
  \cadenzaOn
  s4 a' b cis d es e s s s h c f fis g gis
  \bar ""
  \break
  s a,^1_1 es'^5_2 cis^3_3 b^2_4 e^6_5 es^5_2 d^4_6 e^6_5
  s fis_7 g_8 f_9 s h,_10 c_11 gis_12
  \bar ""
  \break
  <<
    {
      es' as, c f b, des c s
      \key as \major s \bar "||"
      es f c c des b
    }
    \new Staff {
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      es f c des b s s s s
      a_1 b!_4 cis_3 d_6 es!_2 e_5
      h_10_1 c_11_4 f_9_3 fis_7_6 g_8_2 gis_12_5
    }
  >>
  s
  <gis, e'> <fis es'> <c d'> <gis' e'>
}