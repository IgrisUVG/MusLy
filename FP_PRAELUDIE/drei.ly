\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsDrei = {
  \clef treble
  \key a \major
  \time 3/4
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  R2. R r4 <e'' a'' cis'''>( <fis'' a'' d'''>)
  r <f'' a'' dis'''>( <gis'' c''' e'''>)
  \break
  \bar "S.|:-S"
  r4 <e'' a'' cis'''>( <fis'' a'' d'''>)
  r <<{s4 s8 e''}\\{<f'' a'' dis'''>4^( <gis'' c''' e'''>)}>>
  a''8[ h''] cis'''[ e'''!] f'''[ cis''''] h'''4. a'''8 gis'''[ a''']
  <cis'''' e''''>8. e'''16
  << {e'''4 s}\\{<e'' a'' cis'''>^( <fis'' a'' d'''>) }>>
  r <<
    {
      s4 s8 <e' e''>
      \override NoteColumn #'force-hshift = #-1.3
      s4 <e'' a''> <a'' d'''> s <d''' f'''> <h'' e'''>
      s \stemDown <e'' a'' cis'''>^( <fis'' a'' d'''>)
    }
    \\
    {
      <f'' a'' dis'''>4^( <gis'' c''' e'''>)
      <a' a''>8[ <h' h''>] <cis'' cis'''>[ <e''! e'''!>]
      <f'' f'''>[ <a'' a'''>] <h'' h'''>4. <a'' a'''>8 <gis'' gis'''> <a'' a'''>
      <e'' e'''>2.
    }
  >>
  r4 <f'' a'' dis'''>4^(
  \once \override Score.RehearsalMark #'extra-offset = #'( 6 . -3 )
  %\once \override Score.RehearsalMark #'font-size = #1
  \mark \markup { \musicglyph #"scripts.coda" }
  <gis'' c''' e'''>)
  r16 <a' c''>-> q q->~ q <h' es''>-> <a' c''>-. r
  r <a'' c'''>-> q q->~ q <h'' es'''>-> <a'' c'''>-. r r
  \ottava #1
  \set Staff.ottavation = #"8"
  <a''' c''''>-> q q->~ q <h''' es''''>-> <a''' c''''>-.
  \ottava #0 r
  R2.*3 r2 r8 e''16 e''' a' e''' h' e''' cis'' e''' e''! e''' f'' e''' cis''' e'''
  h'' e''' f''' c'''' h''' a''' gis''' a'''
  \set subdivideBeams = ##t
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \set baseMoment = #(ly:make-moment 1 8)
  \override TupletBracket #'bracket-visibility = ##f
  e''' e'''' \times 2/3 {cis''''16 a''' f'''} e'''32 cis''' a'' f'' e''8 r2 R2.
  r4 <e'' a'' cis'''>( <fis'' a'' d'''>)
  r <<
    {
      \stemDown
      <f'' a'' dis'''>4^( <gis'' c''' e'''>)
      s2. s s4 <e'' a'' cis'''>^( <fis'' a'' d'''>)
    }
    \\
    {
      s4 s8 e''^.^( a''8^.[ h''^.] cis'''^.[ e'''!^.]
      f'''^.[ cis''''^.] h'''4.) a'''8^( gis'''[ a''']
      <e''' e''''>8.) <e''' e''''>16^( \stemUp e'''4) s
    }
  >>
  r <<
    {
      s4 s8 <e' e''>
    }
    \\
    {
      <f'' a'' dis'''>4^( <gis'' c''' e'''>)
    }
  >>
  <a' cis'' e'' a''>8[ <h' e'' a''h''>]
  <cis'' e'' a'' cis'''>[ <e''! a'' cis''' e'''!>]
  <f'' a'' d''' f'''>[ <cis''' e''' a''' cis''''>]
  <h'' d''' f''' h'''>4.<a'' c''' f''' a'''>8
  <gis'' h'' e''' gis'''>[ <a'' h'' e''' a'''>]
  <<
    {
      <e'' a'' cis''' e'''>2.
    }
    \\
    {
      \times 2/3 {a'8\rest[ <e' a' cis''><e' a' h'>]}
      \times 2/3 {<e' a' cis''>8<a' cis'' e''><cis'' e'' a''>}
      \times 2/3 {<e'' a'' cis'''>8<a'' e''' fis'''><d''' fis''' a'''>}
    }
  >>
  <h'' d''' f''' h'''>4. <a'' c''' f''' a'''>8
  <gis'' h'' e''' gis'''><h'' e''' gis''' h'''>
  <a'' cis''' e''' a'''>2. R
  r4
  <<
    {
      s2 s2.*2

      #(define afterGraceFraction (cons 15 16))
      \afterGrace s2. {
        %\shape #'(
         %          (( 0 . 0) (0.5 . -0.5) (1 . -1) (2 . -1))
          %         ((0 . -1) (0.5 . -0.5) (0 . 0) (0 . 0))
           %        ) Slur
        dis''''16[_( e'''']
      }
      \hideNotes
      a'''4)
      \unHideNotes
    }
    \\
    {
      \repeat tremolo 4 {cis'''16^( e'''}
      \repeat tremolo 4 {cis'''16 e'''}
      \ottava #1
      \set Staff.ottavation = #"8"
      \times 4/5 {f'''16 gis''' a''' cis'''' e''''}
      \repeat tremolo 6 {f''''16 e''''!}
      \repeat tremolo 6 {f''''16 e''''!}
      \cadenzaOn
      a'''4)
    }
  >>
  \ottava #0
  \relative a'{
    \set baseMoment = #(ly:make-moment 1 2)
    cis'16[ a f e] f[ e cis a] cis[ e f a] cis[ a f e]
    cis[ a cis e] f[ a f e] cis[ a f a]\bar "|"
    e[ f a cis] e[ f a cis e cis] f[ e cis a f e] a[ f e cis a f] h[ a f e cis a]
    \clef bass
    d[ cis a f e cis] f[ e cis a f e] a[ f e cis]
  }
  \cadenzaOff
  \bar "||"
  %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2)
  %\tempo "Furioso"
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Furioso"
  R2.
  \clef treble
  R2.
  \repeat unfold 12 {a''16 cis''' b'' cis''' }
  e'''8 <cis'' e'' a'' cis'''>2-> <fis' a' d'' fis''>8
  <a' c'' f'' a''>4. <gis' h' e'' gis''>
  r8 <cis'' e'' a'' cis'''>2-> <fis a d' fis'>8
  <a c' f' a'>4. <gis h e' gis'>
  <a a'>8[ <cis' cis''>] <f' f''>[ <e'! e''!>]~(
  \override Beam.gap = #0
  \repeat tremolo 4 {e'32 e''}
  \repeat tremolo 12 {e'32 e'')}
  <a' a''>8[ <cis'' cis'''>] <f'' f'''>[ <e''! e'''!>]~(
  \repeat tremolo 4 {e''32 e'''}
  \repeat tremolo 12 {e''32 e''')}
  \ottava #1
  \set Staff.ottavation = #"8"
  <a'' a'''>8[ <cis''' cis''''>] <f''' f''''>[ <e'''! e''''!>]~(
  \repeat tremolo 4 {e'''32 e''''}
  \repeat tremolo 12 {e'''32 e'''')}
  <a'' a'''>8[ <cis''' cis''''>] <f''' f''''>[ <e'''! e''''!>]~(
  \repeat tremolo 4 {e'''32 e''''}
  \repeat tremolo 12 {f'''32 f'''')}
  <e''' a''' cis'''' e''''>8
  \ottava #0
  <e' e''>4 <es' es''>8 <d d'>[ <d' d''>]
  <f' f''>[ <cis'' cis'''>] <c'' c'''> <e'' e'''>4
  <h'' h'''>8 <a'' cis'''! e''' a'''>4 r r \bar "||"
  %\once\override Score.MetronomeMark.extra-offset = #'(2.5 . -2)
  %\tempo "Primo tempo"
  \once\override Score.RehearsalMark.extra-offset = #'(13 . -3)
  \mark "Primo tempo"
  <cis'' f'' a'' cis'''>4\fermata r2 R2. \bar ":|.S-S"
  \cadenzaOn
  \stopStaff
  s4
  \bar "||"
  \startStaff
  \cadenzaOff
  \mark \markup { \musicglyph #"scripts.coda" }
  <a'' cis''' e''' a'''>2._\fermata
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Море )}}
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicDrei = {
  \override Hairpin.to-barline = ##f
  \override Hairpin.minimum-length = #10
  \once \override DynamicText #'extra-offset = #'(-3 . -3)
  s2.*6\pp
  \override DynamicText #'extra-offset = #'(0 . -2)
  \override Hairpin #'extra-offset = #'(0 . -2)
  \override TextScript.extra-offset = #'(0 . -1)
  s4. s4.\< s4\! s2\> s4 s2\pp s2\ppp s8 s\mp s4. s4.\< s4\! s2\> s4 s2\pp s2.
  s16
  \override DynamicText #'extra-offset = #'(0 . -0.5)
  \override Hairpin #'extra-offset = #'(0 . -0.5)
  s8.\sf s4 s\> s2 s8 s8\pp s2.*3 s2 s8
  \override DynamicText #'extra-offset = #'(0 . -2)
  \override Hairpin #'extra-offset = #'(0 . -2)
  s\ppp s4. s\< s\!s\> s8 s8\ppp s2
  s2.*3 s2.\< s4\mf s2-\markup {\italic {poco cresc}} s2.*3 s2\ff s4\> s2\! s4\<
  s2.\! s\> s4.\mf s-\markup {\italic dim} s s\ppp\< s2.\p
  s2.-\markup {\italic {poco dim}} s2 s4\ppp s2. s4^\markup {\italic {poco cresc}}
  s1 s4 s4\ff s4*9-\markup {\italic {poco dim}}
  \override DynamicText #'extra-offset = #'(0 . 0.5)
  \override Hairpin #'extra-offset = #'(0 . 0.5)
  \override TextScript.extra-offset = #'(0 . 0.5)
  s2.*2\pp
  s2 s4-\markup {\italic {poco cresc}} s2.*3 s4.\f s-\markup {\italic cresc} s2.
  s2.*11\ff s2
  \once\override DynamicText #'extra-offset = #'(0 . -3)
  s4\fff s2.
  \once\override DynamicText #'extra-offset = #'(0 . 0)
  s8.\sf
  \once\override DynamicText #'extra-offset = #'(0 . -0.5)
  s16\pp s2
}
%%%%%%%%%%% LH %%%%%%%%%%%%
voiceA = \relative e {
  \repeat unfold 2 {
    \times 3/4 {
      <<
        {
          r4 <e e'> <es es'> <d d'>
        }
        \\
        {
          \override NoteColumn #'force-hshift = #1.3
          s4 <a' cis>2 <fis a>4
        }
      >>
    }
    \times 3/4 { << { r <cis cis'> <c c'> <h h'> } \\ { s4 <f' a>2 <e gis>4 } >>  }
  }
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \repeat unfold 18 {
    \times 3/4 { <<   { r4 <e e'> <es es'> <d d'> }  \\  { s4 <a' cis>2 <fis a>4 } >> }
    \times 3/4 { << { r <cis cis'> <c c'> <h h'> } \\ { s4 <f' a>2 <e gis>4 } >>  }
  }
  s2.* 27 s4
  \override TupletNumber #'transparent = ##f
  \override TupletBracket #'bracket-visibility = ##t
  \times 3/4 {
    <<
      {
        r4 <e e'> <es es'> <d d'>
      }
      \\
      {
        \override NoteColumn #'force-hshift = #1.3
        s4 <a' cis>2 <fis a>4
      }
    >>
  }
  \times 3/4 { << { r <cis cis'> <c c'> <h h'> } \\ { s4 <f' a>2 <e gis>4 } >>  }
  \cadenzaOn
  \stopStaff
  s4
  \bar "||"
  \startStaff
  \cadenzaOff
  s2.
}
voiceB = \relative a, {
  \repeat unfold 11 {a,2 r4 f2 r4}
  \repeat unfold 6 {a2 r4 <e f>2 r4}
  \repeat unfold 3 {a2 r4 \acciaccatura { \stemUp f16[e f e]~} <e f>2 r4}
  \clef treble
  \times 4/5 {r16[ f''''' e cis a]} f16[ e cis a] \stemUp a[ e f cis]
  \clef bass
  \stemDown e[ a, cis f,] a[ e f cis]
  \stemUp e[ a, cis f,] a[ e f cis] e[ a, cis f,]
  \override TrillSpanner #'(bound-details right padding) = #1
  \once \override TrillSpanner #'extra-offset = #'(0 . 0.2)
  e2.\startTrillSpan s
  #(define afterGraceFraction (cons 15 16))
  s \afterGrace s2 {dis16[(\stopTrillSpan e]}
  <a a'>8-.) <e' e'>4-- <es es'>8-. <d, d'>-.[ <d' d'>-.]
  <f, f'>-.[ <cis' cis'>-.] <c c'>-. <e, e'>4-- <h' h'>8-.
  <a a'>8-.-> <e' e'>4-- <es es'>8-. <d, d'>-.[ <d' d'>-.]
  <f, f'>-.[ <cis' cis'>-.] <c c'>-. <e, e'>4-- <h' h'>8-.
  <a a'>8-. <e' e'>4-- <es es'>8-. <d, d'>-.[ <d' d'>-.]
  <f, f'>-.[ <cis' cis'>-.] <c c'>-. <e, e'>4-- <h' h'>8-.
  \repeat unfold 7 {
    <a a'>8 <e' e'>4 <es es'>8 <d, d'>[ <d' d'>]
    <f, f'>[ <cis' cis'>] <c c'> <e, e'>4 <h' h'>8
  }
  \repeat tremolo 12 {a'32 a,}
  <a e' a>4\fermata r2
  f r4
  \cadenzaOn
  \stopStaff
  s4
  \bar "||"
  \startStaff
  \cadenzaOff
  \stemUp
  a2.^\fermata
}
linksDrei = {
  \clef bass
  \key a \major
  \time 3/4
  <<
    {
      \voiceA
    }
    \\
    {
      \voiceB
    }
  >>
}