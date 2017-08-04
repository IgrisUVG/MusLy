\version "2.19.15"

\language "deutsch"

\header{
  title = "TEST"
  composer = "I. G"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}
%{
{\clef treble \key d \major
c4 \appoggiatura b16 c4
c4 \acciaccatura b16 c4
c_-^1 d^. f^4_2-> e^-_+\break
s1\break
g64_1[ a_2 b_3 c'_4  d'_5 e'_6 f'_7 g'_8]  a'-9[ b'-10 c''-11 d''-12  e''-13 f''-14 g''-15 a''-16]
d'16-0[ b'-0 a'_\3] dis'-1[ b' a'] e'-2[ b' a']
\slurDown \times 6/9 {gis'32-1([ a'-2) b'-0_\2( cis''-1) e''-4 fis''-1( g''-2)\stemUp \slurDown \acciaccatura a''8 \stemDown b''16-4]}
{d'''16 < g' e'' bes''> q e''' <g' fis'' a''>[ q
		\override StringNumber #'add-stem-support = ##t <g''-1_\3>32 <a''-3> <c'''^2_\2>(<b''^1>) <a''^3_\3> <g''^1>]}
<<

	{fis''2}
	\\
	{cis'2}
	\\
	{d''2}
	\\
	{e'2}
	\\
	{b'2}
	\\
	{g'2}
>>
}
{\clef "bass"
	R1
	<<
		{ e'2\rest r4. \cueClefUnset e8 }
		\new CueVoice {
			\cueClef "treble" \stemUp d''8^"flute" c'' d'' e'' fis''2
		}
	>>
	d4 r a, r
}
\version "2.16.2"
\relative c'' {
r2
c4.\( g8 |
\once \override Tie #'staff-position = #3.5
bes1~ |
\bar "||"
\time 6/4
bes2.^\markup {\bold "Moderato"} r8
\mergeDifferentlyHeadedOn
\mergeDifferentlyDottedOn
<<
{c,8[ d fis bes a] | }
\\
% Reposition the c2 to the right of the merged note
{c,8~ \once \override NoteColumn #'force-hshift = #1.0
% Move the c2 out of the main note column so the merge will work
\shiftOnn c2}
\\
% Stem on the d2 must be down to permit merging
{s8 \stemDown \once \override Stem #'transparent = ##t d2}
\\
{s4 fis4.}
>>
\mergeDifferentlyHeadedOff
\mergeDifferentlyDottedOff
g2.\)
}
%}
%{
\score {
	<<
		\new Staff \relative {
			e' es d des
			\repeat volta 3 {
				c d e f
				c d e f
			}
			\alternative {
				{
					g f e d
				}
				\bar ":|."
				{
					g
				}
			}
			 a b h c1
		}
		\new Dynamics {
			s1\f\>
			\repeat volta 3 {
				s1*2\!-\markup {
						\column {
							\line { \teeny 1: \small\dynamic p }
							\line { \teeny 2: \small\dynamic f }
					}
				}
			}
			\alternative {
				{
					s1
				}
				{
					s4\>
				}
			}
			s2. s1\p
		}
	>>
	}%}
\relative c'' {
  a4-\markup { \postscript #"1.75 2 moveto 5 1 rlineto stroke" }
  %-\markup { \postscript #"[ 0 1 ] 0 setdash 3 5 moveto 5 -3 rlineto stroke " }

  %b4-\markup { \postscript #"3 4 moveto 0 0 1 2 8 4 20 3.5 rcurveto stroke" }
  s2.
  %a'1
}