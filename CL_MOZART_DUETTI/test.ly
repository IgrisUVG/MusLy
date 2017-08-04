\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%\relative c''
%{g1 | e1 |c2. c'4 |g4 c g e | c4 r r2%}
%{
{c,,64_1[ d e f g a b c]
d_1[ e f g a b c d]
e^1[ f g a b c d e]
f^1 [g a b c16]}
\relative c'
{c,8 e g c, \grace { g16[ b d e f d ]} e8 g c e g c, e g}
\relative c'' {
  <<
    { a2 g }
    { f2 e }
    { d2 b }
  >>

}
%}
%{
<<
  {
    \tweak Stem #'transparent ##t
    \tweak Flag #'transparent ##t
    \tweak Stem #'length #8
    b'8~ b'\noBeam
  }
\\
  { b'8[ g'] }
>>
%}
%{
\relative c'' {
  c32[ c
  \once \override Stem.beaming = #(cons (list 1 2) (list 0 2 4))
  c
  \once \override Stem.beaming = #(cons (list 0 2 4) (list 0 1 4))
  c c c]
}
%}
%{
\new StaffGroup
<<
  \new Staff \relative {
    %\override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    b'2(
    \once\override Score.GraceSpacing.spacing-increment = #1.3
    \acciaccatura {d16 e fis} g4. f8) e4-. d-. c-. b-.
  }
  \new Staff \relative {
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    %\override Score.SpacingSpanner.strict-grace-spacing = ##t
    d'8 e16( f) g8 g16( a) b8 c16( b) a8 b16( a)
    g8 a16( g) f8 g16( f)
    \tuplet 3/2 4 {
      e8( f g) c,-. d-. e-.
    }
  }
>>
%}
\new StaffGroup
<<
  \new Staff \relative {
    \clef treble
    \key c \major
    \time 3/8
    \partial 8
    \set Timing.beamExceptions = #'()
    
    \override TupletBracket.bracket-visibility = #'if-no-beam
    \tuplet 3/2 8 {
      g'16-. a-. f-. e( g f) e-. d-. c-. d-. g-. f-.
      \override TupletNumber.transparent = ##t
      e( g f) e-. d-. c-. h-. a-. g-. c-. e-. g-. e-. g-. c-. a-. f-. d-. g-. e-. c-.
    }
    h8
    \tuplet 3/2 8 {
      d'16( h' g) fis-. c'-. h-. a-. g-. fis-. e-. d-. c-. h-. d-. g-. d-. h-. g-. c-. a-. e-.
      d-. g-. h-. g-. d-. h-. c-. d-. fis-. g,-. h-. d-.
    }
    g8-.
    \bar ":|.|:"
    \tuplet 3/2 8 {
      h,16-. d-. e-. f!-. d-. c-. h-. f''-. e-. d-. c-. h-.
    }
  }
  \new Staff \relative {
    \clef treble
    \key c \major
    \time 3/8
    \partial 8
    g8\p g( c h) c4( d8) e4( f8) e( d h) d( c a) d4( e8) g,4 h16( a) g8 r
    \bar ":|.|:"
    \break
    d' d( f h,) d( c e) e( g c,) e( d g) a( g fis) f!8.( e16 f d) c4 e16( d) c8 r
    \bar ":|.|:"
    \break
  }
>>
