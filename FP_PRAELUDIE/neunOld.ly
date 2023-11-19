\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsNeun = {
  \clef treble
  \key f \major
  \time 3/8
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  s8
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times 2/3 {
    \stemUp f'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
    \stemNeutral
    <f' f''>[ b' c'']
    <f'' f'''>[ b'' c''']
    \omit TupletNumber
    \omit TupletBracket
    \ottava #1
    \set Staff.ottavation = #"8"
    <f''' f''''>[ b''' c'''']
    \ottava #0
    <f'' f'''>[ b'' c''']
    <f' f''>[ b' c'']
    \stemUp f'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
    fis'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
  }%%%%%%%%%
  \stemNeutral
  <d'' d'''>8
  \times 2/3 {
    \stemUp <d' g'>16[
    \change Staff = LH
    b
    \change Staff = RH
    e']
    \stemNeutral
    <g' d'' g''>[ b' e'']
    <g'' d''' g'''>[ b'' e''']
    \ottava #1
    \set Staff.ottavation = #"8"
    <g''' d'''' g''''>[ b''' e'''']
    \ottava #0
    <g'' d''' g'''>[ b'' e''']
    <g' d'' g''>[ b' e'']
    \stemUp
    <d' g'>16[
    \change Staff = LH
    b
    \change Staff = RH
    e']
    \change Staff = RH
    a'16[ d' e']
  }%%%%%%%%%
  s8
  \times 2/3 {
    <b'>16[	d' fis']
    \stemNeutral
    <b' b''>[ d'' fis'']
    <b'' b'''>[ d''' fis''']
    <b' b''>[ d'' fis'']
    <b'>[ d' fis']
  }%%%%%%%%%
  s16. c'32[ <f' c''>16] s8. s4.
  s16. s64 g'\noBeam <c'' g''>16\noBeam s8.
  s4 c''8( b'4 c''8 b'4 a'8 g'4 e''8~ e''4 \stemUp b'8 \stemNeutral g'4 d'8 b)
  d'32[ b d' fis'] d''[ b' d'' fis'']
  d'''[ b'' d''' fis'''] s4
  \times 2/3 {
    b'16[ es' f'] as'[ es' f'] b'[ es' f']
    <ces' ces''>[ es' f'] <des' des''>[ es' as'] <ces' ces''>[ es' f']
    <b b'>[ es' f']
    <b' b''>[ es'' f'']
    <b'' b'''>[ es''' f''']
    \ottava #1
    \set Staff.ottavation = #"8"
    <b''' b''''>[ es'''' f'''']
    \ottava #0
    <b'' b'''>[ es''' f''']
    <b' b''>[ es'' f'']
    b'[ es' f']
    \change Staff = LH
    \stemUp
    <as, as>[ des es]
    \change Staff = RH
    \stemNeutral
    as'[ des' eses']
    <ges' ges''>[ ces'' des'']
    <ges'' ges'''>[ ces''' deses''']
    \ottava #1
    \set Staff.ottavation = #"8"
    <f''' f''''>[ b''' c''''!]
    \ottava #0
    <f'' f'''>[ b'' c''']
    <f' f''>[ b' c'']
    f'[ b c'] \bar ":|."
  }
  s8
  \times 2/3 {
    \stemUp f'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
    \stemNeutral
    <f' f''>[ b' c'']
    <f'' f'''>[ b'' c''']
    \ottava #1
    \set Staff.ottavation = #"8"
    <f''' f''''>[ b''' c'''']
    \ottava #0
    <f'' f'''>[ b'' c''']
    <f' f''>[ b' c'']
    \stemUp f'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
    fis'16[
    \change Staff = LH
    b
    \change Staff = RH
    c']
  }%%%%%%%%%
  \stemNeutral
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \times 2/3 {
    g32 c'
    \change Staff = RH
    d'
  }
  g'64 c'' d'' f''
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  g''16[ f''32 es''] c''[ b' g' f']
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \times 2/3 {g32 c' d'}
  \change Staff = RH
  g'64 c'' d'' f''
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  g''16[ f''32 es''] d''[ c'' b' c'']
  d''[ f'' c'' d''] a'[ c'' g' a'] f'[ g' d' f']
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \times 2/3 {f,32 c f g c' \change Staff = RH f' }
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  a'32[ c'' d'' f''] c''[ d'' a' c'']
  g'[ a' f' g'] d'[ f' c' d']
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \stemUp
  \times 2/3 {d,32 a, d e a d' }
  \change Staff = RH
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \stemNeutral
  f'32[ a' h' d''] a'[ h' f' a']
  e'[ f' d' e'] c'16 s16
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \times 2/3 {c''32 f'' g'' c''' f''' g'''}
  <c''' f''' g''' c''''>8\noBeam
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  f''32[ g'' c'' d''] a'[ c'' g' a'] f'[ g' d' f']
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \times 2/3 {f,32 c f g c' \change Staff = RH f' }
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  a'32[ c'' d'' f''] c''[ d'' a' c'']
  g'[ a' f' g'] d'[ f' c' d']
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \change Staff = LH
  \stemUp
  \times 2/3 {d,32 a, d e a d' }
  \change Staff = RH
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \stemNeutral
  f'32[ a' h' d''] a'[ h' f' a']
  e'[ f' d' e'] s8 <c'' g''>16[ f''32 e'']
  \stemUp
  c''[ g' f'64 e' c' \change Staff = LH g]
  \change Staff = RH s8
  \stemNeutral
  \times 2/3 {
    b'16[ es' f'] <b' b''>[ es'' f'']
    \ottava #1
    \set Staff.ottavation = #"8"
    <b'' b'''>[ es''' f''']
    <as'' as'''>[ es''' f''']
    <b'' b'''>[ es''' f''']
    <ces''' ces''''>[ es''' f''']
    <des''' des''''>[ es''' as''']
    <ces''' ces''''>[ es''' f''']
    <b'' b'''>[ es''' f''']
    <ges'' ges'''>[ ces''' des''']
    <f'' f'''>[ b'' c''']
  }
  <f''' b''' c'''' f''''>4.
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Северный ветер )}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksNeun = {
  \clef bass
  \key f \major
  \time 3/8
  <<
    {
      \stemDown
      <f, f>4
      \stemNeutral
      <c c'>8( <b, b>4 <c c'>8 <b, b>4) a,8\rest
      \stemDown
      <g, g>4
      <e_~ e'~>8_( q4 <b, b>8 <g, g>4 <d, d>8)
      <b, b>4 d8\rest d4.\rest
    }
    \\
    {
      \voiceOne
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \times 2/3{
        f16[ b, c]
        \omit TupletNumber
        \omit TupletBracket
        \autoBeamOff
        \crossStaff {f16 s8}
        \autoBeamOn
      }
      s8 s4. s8
      \times 2/3{
        \autoBeamOff
        \crossStaff {f16 s8 fis16 s8}
        \autoBeamOn
      }
      \times 2/3{
        g16[ b, e]
        \autoBeamOff
        \crossStaff {g16 s8}
        \autoBeamOn
      }
      s8 s4. s8
      \times 2/3{
        \autoBeamOff
        \crossStaff {g16 s8 a16 s8}
        \autoBeamOn
      }
      \times 2/3{
        b16[ d fis]
        \autoBeamOff
        \crossStaff {b16 s8}
        \autoBeamOn
      }
      s8 s4
      \times 2/3{
        \autoBeamOff
        \crossStaff {b16 s8}
        \autoBeamOn
      }
    }
  >>
  \stemNeutral
  f,32 c f \change Staff = RH \stemDown c'
  s16 b'32[ f']
  es' c' \change Staff = LH \stemUp b as
  f[ c b, as,] g,[ f, es, des,] es,[ f, es, des,]
  c,64[ g, c g, c g \change Staff = RH \stemDown c' g'] s16
  f''32[ e''] c''[ a' g' e']
  d'[ e' g' a'] g'[ e' d' c'] \change Staff = LH \stemNeutral a[ g f d]
  c[ b, g, f,] d,[ f, g, b,] c[ d c g]
  f[ d c b,] d[ c d f] g[ b \change Staff = RH c' d']
  f'[ d' \change Staff = LH c' b] g[ e d b,] a,[ g, a, b,]
  d[ e g a] b[ d' \change Staff = RH e' g'] e'[ d' \change Staff = LH b a]
  g[ e d b,] a,[ b, d e] g[ e d b,]
  d[ b, d fis] s4
  <<
    {
      \voiceOne
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \omit TupletNumber
      \omit TupletBracket
      s8 \times 2/3{
        <b,, b,>16[ es, f,!]
        <b, b>[ es f]
        \autoBeamOff
        \crossStaff {b16 s8 as16 s8 b16 s8}
        \autoBeamOn
      }
      s4. s4. s4.
      \times 2/3{
        \autoBeamOff
        \crossStaff {b16 s8 s16 s8 as16 s8}
        \autoBeamOn
      }
      s4. s4
      \times 2/3{
        \autoBeamOff
        \crossStaff {
          f16 s8

        }
        \autoBeamOn
      }
    }
    \\
    {
      \stemUp
      s4. <es,, es,>4.
      s4. <es,, es,>4.
      s4. s4.
    }
  >>
  <<
    {
      \stemDown
      <f, f>4
      \stemNeutral
      <c c'>8( <b, b>4 <c c'>8 <b, b>4) a,8\rest
    }
    \\
    {
      \voiceOne
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \times 2/3{
        \omit TupletNumber
        \omit TupletBracket
        f16[ b, c]
        \autoBeamOff
        \crossStaff {f16 s8}
        \autoBeamOn
      }
      s8 s4. s8
      \times 2/3{
        \autoBeamOff
        \crossStaff {f16 s8 fis16 s8}
        \autoBeamOn
      }
    }
  >>
  s4 a,32\rest[ as, c es] s4.
  \ottava #-1
  \set Staff.ottavation = #"8"
  <b,,, b,,>4.
  \ottava #0
  s8 \clef treble
  <c' f'>8 s8 \clef bass
  s4. <f a h d'>4 s8
  \omit TupletNumber
  \omit TupletBracket
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(4 4 4 4)
  \times 2/3 {
    c32 f g
    \change Staff = RH  c' f' g'
  } s8
  \change Staff = LH
  \clef treble
  <c'' f'' g''>8
  s 4. \clef bass
  s8 \clef treble
  <c' f'>8 s8 \clef bass
  s4. <f a h d'>4 s8
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  c,32[ g, c \change Staff = RH g'] s8
  \change Staff = LH
  \voiceOne
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \omit TupletNumber
  \omit TupletBracket
  s8 \times 2/3{
    <b, b>16[ es f]
    \autoBeamOff
    \crossStaff {b16 s8}
    \autoBeamOn
  } s8
  \repeat tremolo 6 {<es,,_> es,>32 es,}
  \repeat tremolo 6 {es,,32 es,}
  \repeat tremolo 6 {es,,32 es,}
  <b,,, b,,>4.
}