\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

rhMark = \markup {
  \override #'(font-encoding . latin1) \italic "RH"
}
lhMark = \markup {
  \override #'(font-encoding . latin1) \italic "LH"
}
fakeBassClef = {
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #2
  \set Staff.middleCPosition = #-6
}
fakeBassClefShift = {
  % Change default prefatory item order so that clef is printed after barline
  \override Score.BreakAlignment.break-align-orders =
  #(make-vector 3 '(span-bar
                    breathing-sign
                    staff-bar
                    clef
                    key
                    time-signature))
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #-10
  \set Staff.middleCPosition = #-8
}

rechtsEins = {
  \clef treble
  \key c \major
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
%%%%%%%%%%%%%%% Часть первая - правая рука %%%%%%%%%%%%%%%%%%%
  <<
    {
      d'32[( f' as' h']
      \stemDown
      d''[ f'' as'' h'']
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      as'' g'' as'' h'' as'' g'' as'' h'' h''8)
      s4. s1 s2.
      \unset subdivideBeams
      \override Beam.breakable = ##t
      \stemUp
      h'32->[( e'' f'' h'' e'' f''])
      \slurDown
      \stemNeutral
      \shape #'(
                 ((0 . 0) (0.5 . -0.5) (1 . -1) (2.5 . -0.5))
                 ((0 . -0.5) (0.5 . -1) (0 . 0) (0 . 0))
                 ) Slur
      h'!->[( e'' f'' h'' e'' f'']) h'->[( e'' f'' h'' e'' f''])
      h''_>[( e'' f'' h'' e'' f'']) h'->[( e'' f'' h'' e'' f''])
      a'->[( d'' e'' a'' d'' e'']) a'->[( d'' e'' a'' d'' e''])
      a'->[( d'' e'' a'' d'' e'']) a'->[( d'' e'' a'' d'' e''])
      a'->[( d'' e'' a'' d'' e'']) a'->[( d'' e'' a'' d'' e''])
      a'->[( d'' e'' a'' h'' a''])
      \slurNeutral
      f''[( e''
      \change Staff = LH
      \clef treble
      h' a']
      \change Staff = RH
      \stemUp
      f'[ e'
      \change Staff = LH
      \clef bass
      h a]
      \change Staff = RH
      \clef bass
      \stemNeutral
      f[ e
      \change Staff = LH
      h, a,]
      \change Staff = RH
      f, e, h,,16])
      \once\override Staff.Clef.space-alist.next-note = #'(extra-space . 0.1)
      \clef treble
      r2
      \times 4/6 {a'32( h' c'') f''( e'') h''( a''8.~)} a''4-\markup {\italic "sim."}
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \times 4/6 {a'32( h' c'') f''( e'') c'''( h''8.~)} h''4
      \times 4/6 {a'32( h' c'') f''( e'') d'''( c'''8.~)} c'''4
      \times 4/6 {a'32( h' c'') f''( e'') e'''( d'''8.~)} d'''4
      s1
    }
    \\
    {
      s2
      \change Staff = LH
      \stemUp
      \slurUp
      c32[( e g h] des'[
      \change Staff = RH
      e' g' h']
      \stemNeutral
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      des'' c'' e'' g'' h' d'' fis'' gis''
      \stemUp
      <a' d'' a''>8.) <h' d'' h''>16^~ q8 <h' f''! h''>^~
      <h' f'' h''>16 <a' f'' a''>8.
      \stemNeutral
      \ottava #1
      \set Staff.ottavation = #"8"
      \shape #'(
                 ((0.5 . -0.5) (0 . 0) (0 . 4) (0 . 3))
                 ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                 ) Slur
      c''''64( h''' b''' a''' as''' g''' fis'''
      f''' e''' es''' d''' des''' c''' h'' b'' a''
      \unset Staff.ottavation
      \ottava #0
      \times 4/5 { g''32[ f'' d'' c'' a']}
      \change Staff = LH
      \clef treble
      \times 4/5 { g'32[ f' d' c' a]}
      \change Staff = RH
      \clef bass
      g[ f des c]
      \change Staff = LH
      \clef bass
      a,[ f, des, c,] h,,[ f, as,
      \change Staff = RH
      d] as[ h
      %\change Staff = LH
      \clef treble
      f' as']
      \clef bass
      %\change Staff = RH
      \clef treble
      \stemDown
      h'8)
      \change Staff = LH
      \clef treble
      \stemUp
      b'
      \clef bass
      s1*3
      \change Staff = RH
      s4. <a c' e' f'>8
      s4. <a h  d' f'>8
      s4. <a c' e' f'>8
      s4. <a h  d' e'>8
      s1
    }
  >>
%%%%%%%%%%% Часть вторая - правая рука %%%%%%%%%%%%%%
  \key ges \major
  s2
  %\change Staff = LH
  \stemUp
  \omit Flag
  s8 des'''4^>^(-\tweak self-alignment-X #1
  -\tweak Y-offset #ly:self-alignment-interface::y-aligned-on-self
  -\tweak self-alignment-Y #-13 ^\finger \lhMark
  es'''8^>)
  s8 as'''4^>^( ges'''8^>)
  s8 as'''4^>^( es'''8^>)
  s8 des''''4^>^( ges'''8^>) s2
  s1 s2
  s8 des'''4^>^( es'''8^>)
  s8 as'''4^>^( ges'''8^>)
  s8 as'''4^>^( es'''8^>)
  s8 des''''4^>^( b'''8^>)
  s8
  \shape #'((0 . 0) (0 . 0) (0 . 0) (-2.5 . 0)) Slur
  des''''4^>^( \hideNotes des'''8) \unHideNotes
  s2 s4. des'''8^>
  s8 es'''4^> f'''8^>
  s8 as'''4^> s8
  %\change Staff = RH
%%%%%%%%%%% Часть третья - правая рука %%%%%%%%%%%%%%
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "meno mosso"
  <<
    {
      %\once\override Score.MetronomeMark.extra-offset = #'(-2 . 2.5)
      %\tempo "meno mosso"
      s2 f''2( \stemDown as'' <ges' ges''>4)\stemUp
      s2 f''2( \stemDown as'' <ges' ges''>4)\stemUp
      s2 f''2( \stemDown as'' <ges' ges''>4)\stemUp
      s2 f''2( \stemDown as'' <ges' ges''>4)
      \hideNotes
      \shape #'((.5 . -9) (0 . 6) (-2 . 3) (-.5 . -3)) Slur
      f4.^(
      \unHideNotes
      f'8 <es'' f''> f' <des'' f''> f'
      <c'' f''> f' <des'' f''> f' <b' f''> f' <as' f''> f'
      \stemUp
      b'2) f''8 s f''' r \stemDown
      <b'' b'''>2( <as'' as'''>4) \stemUp
      \repeat unfold 3 {
        s2 f''8 s f''' r \stemDown
        <b'' b'''>2( <as'' as'''>4) \stemUp
      }
      s2 <b' es''>8->( des'' b'4.) as'8\noBeam( ges' as')
      s2 <b' es''>8->( des'' b'4.) as'8\noBeam( ges' es')
      <des' des''>4.( <ces' ces''>8 <b b'>4)
      s ces''' s2. s4 ces''' s1*2
      es'4._( ges'8 des'4) s2 es''8 des''
      es'4._( ges'8 des'4) s2 es''8 des''
      b'4._( as'8 ges'4)
      \change Staff = LH
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \shape #'((-.5 . -2) (-1 . 3) (0 . 2) (0 . 0)) Slur
      ces'8(
      \change Staff = RH
      \stemDown
      as' b' des'' es''[ des''])\stemNeutral
      ges''4. ges''8 ges''4\stemUp
      \change Staff = LH
      \shape #'((-.5 . 0) (1 . 3) (.5 . 1) (0 . 0)) Slur
      ces''8(
      \change Staff = RH
      \stemDown
      as'' b'' des''' es'''[ des'''])\stemNeutral
      ges'''4. ges'''8 ges'''4\stemUp
      \change Staff = LH
      \shape #'((-.5 . -.5) (0 . 2) (.5 . 0) (0 . 0)) Slur
      ces'''8(
      \change Staff = RH
      \stemDown
      \ottava #1
      \set Staff.ottavation = #"8"
      as''' b''' des'''' es''''[ des''''])\stemNeutral
      b'''4. des''''8 as'''4. b'''8
      ges'''4. g'''8 as'''4. b'''8
      des''''4. b'''8 as'''4. ges'''8 g'''4. as'''8 b'''2
      es''''4. des''''8 ces''''4. des''''8
      b'''4. ces''''8 as'''4. des'''8
      des''''4. b'''8 as'''4. ges'''8 ges'''4 s
      \ottava #0
      r2
      \stemUp
      \makeOctaves #1
      {
        b'4. des''8 as'4. b'8
        ges'4. g'8 as'4. b'8
        des''4. b'8 as'4. ges'8 g'4. as'8 b'2
        es''4. des''8 ces''4. des''8
        b'4. ces''8 as'4. des'8
        des''4. b'8 as'4. ges'8 ges'4.
      }
      s8 f''2( \stemDown
      \makeOctaves #-1
      {
        b'' as''4 ges''4.)
      }
      \stemUp
      s8 f''8 s f''' r \stemDown
      \makeOctaves #-1
      {
        as'''2( ges'''4 es'''4.)
      }
      \stemUp
      s8 f''2( \stemDown
      \makeOctaves #-1
      {
        b'' as''4 ges''4.)
      }
      \stemUp
      s8 f''8 s f''' r \stemDown
      \makeOctaves #-1
      {
        as'''2( ges'''4)
      }
      \stemUp
    }
    \\
    {
      \voiceTwo
      s4. f'8~ f'2 s2.
      s4. f'8~ f'2 s2.
      s4. f'8~ f'2 s2.
      s4. f'8~ f'2 s2.
      s1*2
      \repeat unfold 4 {
        s4. f'8~ f'4. r8 s2.
      }
      s4. es' s2. s4. es' s2.*2
      r8 ces''4.
      <des'' des'''>4.^( <ces'' ces'''>8 <b' b''>4)
      r8 ces''4.
      \repeat unfold 4 {as''4.^>^( ges''8)} s2.
      r8 es'2~ es'8 s2. r8 es'2~ es'8 s2.*6 s1*11
      s2 s4. es''8 s1*3
      \repeat unfold 2 {
        s4. f'8~ f'2 s2.
        s4. f'8~ f'4. r8 s2.
      }
    }
    \\
    {
      %дополнительно
      \voiceTwo
      s2*18
      \repeat unfold 4 {
        s2 s8 f''4 s8 s2.
      }
      s2.*5
      \voiceOne
      s4. ges''8 s2.
      s4. b''8 s1*2 s2. s4 ges'2 s2. s4 ges'2
      s2.*6 s1*16 s2.
      \voiceTwo
      s2 s8 f''4 s8 s2. s1 s2. s2 s8 f''4 s8 s2.
    }
    \\
    {
      %дополнительноBis
      \voiceOne
      s2*18 s1*4 s2.*5 s2 s2. s1 s1*2 s2 s1*2 s2.
      s4. b' s2. s4. b' s2.*6 s1*16 s2. s1 s2. s1 s2. s1 s2.
    }
  >>
  \bar "||" \break
%%%%%%%%%%%%%%% Каденция - правая рука %%%%%%%%%%%%%%
  \time 4/4
  \override Flag #'transparent = ##f
  \change Staff = LH
  \stemUp
  <des ges b>4.
  \change Staff = RH
  \stemNeutral
  <des' ges' b'>8
  <es' as'>4. <c' es'>8~ q4. d'8^>~ d' <c' f'>4^> <c' f' b'>8
  <des'! ges'!>4.-><des' b'>8<es' as'c''>4.\stemUp <g'_~ b'~ es''~>8
  \cadenzaOn
  \once \hide Stem
  <\tweak #'duration-log #1 g'
  \tweak #'duration-log #1 b'
  \tweak #'duration-log #1 es''>4
  \relative {
    \small
    \stemDown
    f''16[ g b as g f es c b c des]
    c[ as g f es g b c b g f]
    \stemUp
    d[ es c
    \change Staff = LH
    as g
    \change Staff = RH
    es' as c f es c]
    \stemNeutral
    \normalsize
  }
  \cadenzaOff
  des''8 ces''!4-> des''8 b'4.-> as'8
  ges'4 f'8 es'4.-> <b' des'' es''>8<ges' b'>->~
  \time 3/4
  q2.\break
  \time 4/4
  <<
    {
      <des' ges' b'>4.^>( es'8^> b'\rest)
      \stemDown
      <b' es''>\noBeam des'' b'->~ b'2.
      \stemNeutral
      <des' ges' b'>4.^>( es'8^> b'\rest)
      <des' des''>\noBeam b' as'->~ as'2.
      <des' ges' b'>4.^>( es'8^> b'\rest)
      as' \noBeam ges' es'->_~ es'2.
    }
    \\
    {
      s2
      \autoBeamOff
      \crossStaff {des'4.^>}
      \autoBeamOn
      \stemUp
      s8 r <ces' es'>^>~ q2
      \stemDown
      s2
      \autoBeamOff
      \crossStaff {des'4.^>}
      \autoBeamOn
      \stemUp
      s8 r <des' ges'>^>~ q2
      \stemDown
      s2
      \autoBeamOff
      \crossStaff {des'4.^>}
      \autoBeamOn
      \stemUp
      s8 r des'^>~ des'2
    }
  >>
  <<
    {
      \stemDown
      s2. <b' des'' as''>
      s <b' des'' ges'' as'' b''>\arpeggio
    }
    \\
    {
      \stemUp
      s2 b'8 des''
      \stemDown
      s2 s8 ges'
      \stemUp
      s2 b'8 des''
      \stemDown
      s2 s8 ges'
    }
    \\
    {
      \voiceTwo
      s2 ges'4 s2 f'4 s2 ges'4 s2 f'4
    }
    \\
    {
      \voiceTwo
      s4. es' s des' s4. es' s des'
    }
  >>
  s4. b'8\noBeam as' ges'
  es'4.( ges'8 des'4)
  \change Staff = LH
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shape #'((-.5 . -2) (-1 . 3) (0 . 2) (0 . 0)) Slur
  ces'8(
  \change Staff = RH
  \stemDown
  es' ges' b' es''[ des''])\stemNeutral
  b'4. as'8 ges'4
  \change Staff = LH
  \shape #'((-.5 . -2) (-1 . 3) (0 . 2) (0 . 0)) Slur
  ces'8(
  \change Staff = RH
  as' b' des'' es''[ des''])\stemNeutral
  ges''4. ges''8 ges''4\stemUp
  \change Staff = LH
  \shape #'((-.5 . -2) (0 . 2) (0 . 2) (0 . 0)) Slur
  ces''8(
  \change Staff = RH
  \stemDown
  as'' b'' des''' es'''[ des'''])\stemNeutral
  ges'''4. ges'''8 ges'''4\stemUp
  \change Staff = LH
  \shape #'((-.5 . -2) (0 . 2) (0 . 2) (0 . 0)) Slur
  ces'''8(
  \change Staff = RH
  \stemDown
  \ottava #1
  \set Staff.ottavation = #"8"
  as''' b''' des'''' es''''[ des''''])\stemNeutral
  <<
    {
      \stemDown
      s2. <ges''' ces'''' des'''' ges''''>4
    }
    \\
    {
      \voiceOne
      s2 s8 des''''(
      \cadenzaOn
      s4)
    }
    \\
    {
      \voiceTwo
      s2 ces''''4(
      \cadenzaOn
      s4)
    }
    \\
    {
      s4. ges'''(
      \cadenzaOn
      s4)
    }
  >>
  \ottava #0
  s4
  \clef bass
  s8. s2
  \clef treble
  s8. s2 s8. s2 s8. s2 s8 s2.
}

linksEins = {
  \clef bass
  \key c \major
  \time 4/4
  \set Staff.printKeyCancellation = ##f
%%%%%%%%%%% Часть первая - левая рука %%%%%%%%%%%%%%%%%
  <<
    {
      a,,4_( s2 g,,4)
      h,4\rest
      \shape #'(
                 ((0 . 0) (2 . -1) (3 . -2) (0 . -3))
                 ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                 ) Slur
      a,,_( h,2\rest g,,4) s2
      \shape #'(
                 ((0 . 0) (0 . 0) (0 . 0) (3 . 0))
                 ((0 . -4) (-2 . -3) (-5 . -1) (0 . 0))
                 ) Slur
      a,,4_( h,2\rest g,,8.) fis,,4_~ fis,,16_~
      fis,,16\noBeam fis,,8. fis,,\noBeam fis,, fis,,\noBeam fis,, s2
      \times 4/6 {a,,16_\markup {\italic "non legato"} e, d, a, e, f,}
      \times 4/6 {a,,16 e, d, a, e,-\markup {\italic "sim."} f,}
      \override TupletNumber #'transparent = ##t
      \override TupletBracket #'bracket-visibility = ##f
      \repeat unfold 8 {\times 4/6 {a,,16 e, d, a, e, f,} }
      \times 4/6 {fis, gis, ais, c d e}
      \times 4/6 {
        fis gis ais
        \change Staff = RH
        c' d' e'
      }
      \stemDown
      fis'16[ gis' ais' c'' d'' e'' fis'' gis'']
      \change Staff = LH
      \bar "||"
    }
    \\
    {
      s4 <h f'>16^- <h e'>^- <h dis'>^- <h d'>^- s2
      \change Staff = RH
      <a e' a'>8. <h e' h'>16~ q8 q~ q16 <c' e' c''>8.
      s4 s1
      \stemUp
      e'''16\rest c'''8.^--\tweak self-alignment-X #1
      -\tweak Y-offset #ly:self-alignment-interface::y-aligned-on-self
      -\tweak self-alignment-Y #-13 ^\finger \lhMark
      d'''16^-\noBeam e'''8.^- e'''4\rest s4
      c'''8.^-\noBeam cis'''^- b''^-\noBeam h''^- b''^- h''16^-\noBeam
    }
  >>
%%%%%%%%%%% Часть вторая - левая рука %%%%%%%%%%%%%%%
  \key ges \major
  \clef treble
  \stemNeutral
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es''-\markup {\lower #6 \italic legato} ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    es'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }%%%%%Takt-1
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    as'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    ges'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    as'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    es'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }%%%%%Takt-2
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des''''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    ges'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }%%%%%Takt-3
  \times 8/10 {
    b64->[ ces' es' as' b'
    \change Staff = RH
    ces'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' ces''
    \change Staff = LH
    b' as' es' ces']
  }
  \times 8/10 {
    b64->[ ces' es' ges' b'
    \change Staff = RH
    ces'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' ces''
    \change Staff = LH
    b' ges' es' ces']
  }\bar "" \break
  \times 8/10 {
    b64->[ ces' es' f' b'
    \change Staff = RH
    ces'' es'' f'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' f'' es'' ces''
    \change Staff = LH
    b' f' es' ces']
  }
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }%%%%%Takt-4
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    es'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }%%%%%Takt-5
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    as'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    ges'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    as'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    es'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }%%%%%Takt-6
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des''''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    b'''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }\bar "" \break
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des''''64[
    %\change Staff = RH
    b'' as'' ges'' es'' des''
    \change Staff = LH
    b' as' es' des']
  }
  \times 8/10 {
    b64->[ des' es' as' b'
    \change Staff = RH
    des'' es'' ges'' as''] b''->[
  }
  \times 8/10 {
    as''64 ges'' es'' des''
    \change Staff = LH
    b' as' ges' es' des' ces']
  }%%%%%Takt-7
  \times 8/10 {
    b64->[ ces' es' ges' b'
    \change Staff = RH
    ces'' es'' ges'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' ges'' es'' ces''
    \change Staff = LH
    b' ges' es' ces']
  }
  \times 8/10 {
    b64->[ ces' es' f' b'
    \change Staff = RH
    ces'' es'' f'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' f'' es'' ces''
    \change Staff = LH
    b' f' es' ces']
  }\bar ""\break
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b''->~]
  }
  \times 8/10 {
    b''64[ b''-> as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    des'''64[
    %\change Staff = RH
    b'' as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }%%%%%Takt-8
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    es'''64[
    %\change Staff = RH
    b'' as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    f'''64[
    %\change Staff = RH
    b'' as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }\bar "" \break
  \times 8/10 {
    b64->[ ces' es' f' as'
    \change Staff = RH
    ces'' es'' f'' as'' b'']
  }
  \times 8/10 {
    %\change Staff = LH
    as'''64[
    %\change Staff = RH
    b'' as'' f'' es'' ces''
    \change Staff = LH
    as' f' es' ces']
  }
  \times 8/10 {
    b64->[ ces' eses' f' as'
    \change Staff = RH
    ces'' eses'' f'' as'' b'']
  }
  \times 8/10 {
    ces'''64[ as'' f'' eses'' ces''
    \change Staff = LH
    as' f' eses' ces' b]
  }\bar "||"
%%%%%%%%%%% Часть третья - левая рука %%%%%%%%%%%%%%%
  \clef bass
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
    \override Score.SpacingSpanner.strict-note-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    {
      %верхний
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown <ces des ces'>2.\stemUp
      s4 b4~ \stemDown <b,_~ deses_~ b~>2 <b, deses! b> d\rest
      \stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown <ces des ces'>2.\stemUp
      \repeat unfold 2 {s4 b2 s4 ces'2}
      s4 b s \voiceTwo ces'2 \voiceOne
      s4 b s \voiceTwo ces'2 \voiceOne
      s4 des' s ces' s b s as
      \repeat unfold 3 {s4 b s \voiceTwo ces'2.  \voiceOne}
      s4 b' s \voiceTwo ces''2.  \voiceOne
      s4 b'' s \voiceTwo ces'''2.  \voiceOne
      \repeat unfold 2 {s4 ges''' s f''' s fes''' s es'''}
      s as''' s g''' s ges'''! s f''' s ges''' s f'''
      \ottava #0
      \clef bass
      ges,,8 ges, b, des ges b
      \change Staff = RH
      \stemDown
      des' ges' \stemDown
      \change Staff = RH
      \repeat unfold 2 {s4 ges' s f' s fes' s es'}
      s as' s g' s ges'! s f' s ges' s f'\change Staff = LH
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown ces'2.\stemUp
      s4 b4. s4 ces'8~ \stemDown <ces des ces'>2.\stemUp
    }
    \\
    {
      %средний
      \voiceOne
      r8 ges2 r8 ges4_~ \stemDown ges2.\stemUp
      r8 f2 r8 f4_~ \stemDown f2.\stemUp
      r8 es2 r8 es4_~ \stemDown es2.\stemUp
      r8 d2 r8 des4_( s2.) r8 deses4._( s2) s1
      r8 ges2 r8 ges4_~ \stemDown ges2.\stemUp
      r8 f2 r8 f4_~ \stemDown f2.\stemUp
      r8 es2 r8 es4_~ \stemDown es2.\stemUp
      r8 d2 r8 des4_( s2.)
      \repeat unfold 2 {r8 es2_~ es8 r ges2_~ ges8}
      r8 ges4. r8 ges~ \voiceTwo ges2 \voiceOne
      r8 ges4. r8 ges~ \voiceTwo ges2 \voiceOne
      \repeat unfold 4 {r8 ges4.}
      \repeat unfold 3 {r8 ges4. r8 ges~ \voiceTwo ges2. \voiceOne}
      r8 ges'4. r8 ges'~ \voiceTwo ges'2. \voiceOne
      r8 ges''4. r8 ges''~ \voiceTwo ges''2. \voiceOne
      \repeat unfold 8 {r8 des'''4.}
      \repeat unfold 4 {r8 es'''4.}
      \repeat unfold 2 {r8 des'''4.} s1
      \repeat unfold 8 {
        r8
        \change Staff = RH
        \stemDown
        des'4.
        \change Staff = LH
      }
      \repeat unfold 4 {
        r8
        \change Staff = RH
        es'4.
        \change Staff = LH
      }
      \repeat unfold 2 {
        r8
        \change Staff = RH
        des'4.
        \change Staff = LH
      }
      r8 ges2 r8 ges4_~ \stemDown ges2.\stemUp
      r8 f2 r8 f4_~ \stemDown f2.\stemUp
      r8 es2 r8 es4_~ \stemDown es2.\stemUp
      r8 d2 r8 des4_( s2.)
    }
    \\
    {
      %нижний
      \voiceTwo
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.( \time 3/4 s2.)\time 4/4
      b,2_( s) s1
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.( \time 3/4 s2.)
      \repeat unfold 2 {b,2. ces}
      b,2 ces4~ \time 2/4 ces2 \time 3/4
      b,2 ces4~ \time 2/4 ces2 \time 4/4
      des2 ces b, as, \time 3/4 b,2 ces4~ ces2.
      \repeat unfold 2 {b,2 ces4~ ces2.}
      \clef treble
      b2 ces'4~ ces'2. b'2 ces''4~ ces''2.\time 4/4
      \ottava #1
      \set Staff.ottavation = #"8"
      \repeat unfold 2 {ges''2 f'' fes'' es''}
      as'' g'' ges''! f'' ges'' f'' s1
      \repeat unfold 2 {ges2 f fes es}
      as g ges! f ges f
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.~ \time 3/4 ces2.\time 4/4
      b,2_~ \stemUp b,8 \stemDown ces4.( \time 3/4 s2.)\time 4/4
    }
  >>
%%%%%%%%%%%%%%% Каденция - левая рука %%%%%%%%%%%%%%
  <<
    {
      s2
      \autoBeamOff
      \crossStaff {
        as4. es8~ es4. <d b>8~ q g4 s8 ges!4. b8
      }
      \autoBeamOn
    }
    \\
    {
      <ges,, ges,>8<as,, as,><b,, b,>4. es,8 <as,, as,>4
      <ges,, ges,>8<f,, f,>->~ q4 <b,, b,>4. <des,! des!>8~
      q8 <b,, b,>8->~ q4
    }
  >>
  <c, c>4. <es,, es,>8~
  \cadenzaOn
  \once \hide Stem
  <\tweak #'duration-log #1 es,,
  \tweak #'duration-log #1 es,>4 s16*33\bar "|"\break
  \cadenzaOff
  <ges b>4<ges ces'>4.<b d'>8<a des'>4->~
  <a! des'>8<as c'><as ces'>
  <ges b ces'>4-><f as c'>-><es ges des'>8->~ q2.
  <<
    {
      <es, b, ges>8[ ges, des]
      \autoBeamOff
      \crossStaff {<ges b>8}
      \autoBeamOn
    }
    \\
    {
      s4. es8->\noBeam
    }
  >>
  <des es as>4.
  <<
    {
      <ces, ges, ces>8_>~
      \time 3/4
      q2.
      \time 4/4
    }
    \\
    {
      \voiceOne
      \autoBeamOff
      \crossStaff {
        s8 s <ges b>8~ q2
      }
      \autoBeamOn
    }
  >>
  <<
    {
      <es, b, ges>8[ ges, des]
      \autoBeamOff
      \crossStaff {<ges b>8}
      \autoBeamOn
    }
    \\
    {
      s4. es8->\noBeam
    }
  >>
  <<
    {
      \stemDown
      <des es as>4.
      <ces, ges, ces>8_>~
      \time 3/4
      q2.
      \time 4/4
    }
    \\
    {
      \voiceOne
      \autoBeamOff
      \crossStaff {
        \override NoteColumn.ignore-collision = ##t
        s2 s8 as8~ as2
      }
      \autoBeamOn
    }
    {
      \voiceOne
      \autoBeamOff
      \crossStaff {
        s4 b8 as8~ as2.
      }
      \autoBeamOn
    }
    \\
  >>
  <<
    {
      <es, b, ges>8[ ges, des]
      \autoBeamOff
      \crossStaff {<ges b>8}
      \autoBeamOn
    }
    \\
    {
      s4. es8->\noBeam
    }
  >>
  <des es as>4.
  <<
    {
      <ces, ges, ces>8_>~
      \time 3/4
      q2.
    }
    \\
    {
      \voiceOne
      \autoBeamOff
      \crossStaff {
        s8 s <ges b>8~ q2
      }
      \autoBeamOn
    }
  >>
  <<
    {
      %верхний
      s4 ces'2 s4 b2 s4 ces'2 s4 b2 s4 ces'2
      \repeat unfold 2 {s4 b s \voiceTwo ces'2.  \voiceOne}
      s4 b' s \voiceTwo ces''2.  \voiceOne
      s4 b'' s \voiceTwo ces'''2.  \voiceOne
    }
    \\
    {
      %средний
      \voiceOne
      \repeat unfold 5 {r8 ges2_~ ges8}
      \repeat unfold 2 {r8 ges4. r8 ges~ \voiceTwo ges2. \voiceOne}
      r8 ges'4. r8 ges'~ \voiceTwo ges'2. \voiceOne
      r8 ges''4. r8 ges''~ \voiceTwo ges''2.
    }
    \\
    {
      %нижний
      \voiceTwo
      ces2. b, ces b, ces
      \repeat unfold 2 {b,2 ces4~ ces2.}
      \clef treble
      b2 ces'4~ ces'2. b'2 ces''4~ ces''2.
    }
  >>
  <<
    {
      %верхний1
      \tag #'layout {
        s4
        \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) Slur
        des''2(
        \cadenzaOn
        s4)
      }
    }
    \\
    {
      %верхний2
      \voiceOne
      \tag #'layout {s2. <b' es'' f''>4}
    }
    \\
    {
      %средний
      \voiceTwo
      \tag #'layout {
        d''8\rest ces''2~
        \shape #'((0 . 0) (0 . 0) (0.5 . 0) (1 . 0)) Slur
        ces''8(
        \cadenzaOn
        s4)
      }
    }
    \\
    {
      %нижний
      \voiceTwo
      %\ottava #1
      \set Staff.ottavation = #"8"
      \once\override Staff.OttavaBracket.direction = #UP
      \set Voice.middleCPosition = #(- 1 14)
      \shape #'((0.5 . 0) (0.5 . 0) (1 . 0) (1.5 . 0)) Slur
      ges''2.(
      \cadenzaOn
      s16)
      %\ottava #0
      \unset Staff.ottavation
      \unset Voice.middleCPosition
      s8.
      \voiceOne
    }
    \\
    {
      s2.
      \override Beam #'breakable = ##t
      \stemUp
      %\small
      \tag #'layout {
        \fakeBassClefShift
        ges16[ b des' f' as b des' ges'
        \revert Score.BreakAlignment.break-align-orders
        %\unset Staff.clefPosition
        %\unset Staff.clefGlyph
      }
      \change Staff = RH
      \stemDown
      b, des ges\bar ""\break
      \change Staff = LH
      \stemUp
      \tag #'layout {
        \fakeBassClef
        ges' b' des'' f'' as' b' des'' ges''
      }
      \change Staff = RH
      \stemDown
      b des' ges'%\bar ""
      \change Staff = LH
      \clef treble
      \stemUp
      ges b des' f' as b des' ges'
      \change Staff = RH
      \stemDown
      b' des'' ges''
      \change Staff = LH
      \stemUp
      ges' b' des'' f'' as' b' des'' ges''
      \change Staff = RH
      \stemDown
      b'' des''' ges'''%\bar ""
      \change Staff = LH
      \stemUp
      \ottava #1
      \set Staff.ottavation = #"8"
      ges'' b'' des''' f''' as'' b'' des''' ges'''
      \change Staff = RH
      \stemDown
      \ottava #1
      \set Staff.ottavation = #"8"
      b''' des''''] ges''''2.
    }
  >>

  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Звёздное небо )}}
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicEins = {
  \override Hairpin.to-barline = ##f
  s1\f s2.\ff s4 s4.\> s8\! s8 s-"rit." s\pp-"a tempo" s1
  s2 s\< s4\f s4\> s8-"rit." s2\! s1*2 s2. s4-"rit."
  s1*6-"a tempo" s2. s8 s8-"rit."
  \once\override TextScript.extra-offset = #'(0 . 4)
  s1-"a tempo" s2. s8 s8-"rit."
  s1-"a tempo"
}
