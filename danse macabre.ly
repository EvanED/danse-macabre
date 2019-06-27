\version "2.19.80"
\language "english"


% Kuemer duet

\header {
  title = "DANSE MACABRE"
  subtitle = "POËM SYMPHONIQUE"
  composer = "C. SAINT-SAËNS"
  poet = "Transcription for violin and piano"
  piece = "par L‘AUTEUR"
  opus = "Op. 40"
  tagline = ##f
}

sempreFF = \markup { \italic "sempre" \dynamic ff }

cello_bass = {\tag #'cello {\clef "bass"}}
cello_tenor = {\tag #'cello {\clef "tenor"}}
cello_treble = {\tag #'cello {\clef "treble"}}

og_break = {}%\break}
og_nobreak = {}%\noBreak}
og_pagebreak = {}%\pageBreak}
my_pagebreak = {\pageBreak}

global = {
  \compressFullBarRests
  \accidentalStyle modern-cautionary
  
  \override Score.BarNumber #'break-align-symbols = 
    #'(left-edge)  % or maybe you prefer #'(staff-bar clef) 
  \override Score.BarNumber #'self-alignment-X = #LEFT 
  \override Score.Clef #'break-align-anchor-alignment = #LEFT
  \override MultiMeasureRest.expand-limit = #2
  \override DynamicTextSpanner.style = #'none

  \key g \minor
  \time 3/4
  \tempo "Mouv modéré de valse"
   
  \cello_bass
}

descending_with_low_g = \relative c' {
  <g g'>2 q4 |
  <g f'?>2 q4 |
  <g e'>2 q4 |
  <g ef'>2 q4 |
}

graced_descending = \relative c''' {
  \slashedGrace bf8( a[ af])
}

graced_descending_run = \relative c''' {
  g[ bf]  
    \graced_descending
    \transpose bf a \graced_descending |
  \transpose bf af \graced_descending
    \transpose bf g \graced_descending
    \transpose bf gf \graced_descending |
    
  % PAGE 5 LINE 4 // or LINE 5
  \transpose bf f \graced_descending
    \transpose bf e \graced_descending
    \transpose bf ef \graced_descending |
  \transpose bf d \graced_descending
    \transpose bf df \graced_descending
    \transpose bf c \graced_descending |
  af, g af c bf af |
  g fs g bf a g |
}


violin = \relative c' {
  \global
  % Music follows here.
  <<
    {
      d4\p^"pizz" g\rest g\rest |
      \repeat unfold 11 {
        d g\rest g\rest |
      }
    }
   \\
    \new Voice="arco" { \voiceTwo
      \repeat unfold 11 {
          d2.~ |
      }
      d2. |
    }
  >>
  R1*3/4*10 |
  <<
    s1*3/4 | s |
   \\
    \new CueVoice {
      %\cueClef "bass"
      c4 r r | ef r r |   % VIOLIN: removed ,
    }
  >>
  %\cueClefUnset
  \set fingeringOrientations = #'(left)
  <a-\tweak Fingering.extra-offset #'(0 . 0.5) -0 
    ef'-2>2.->\f |  % VIOLIN: added ,
  <d, a'>-> |
  <a' ef'>2-> q4 |
  <d, a'>2-> q4 |
  <a' ef'>8->-. q-. q4-. <d, a'>-. |
  <a' ef'>8->-. q-. q4-. <d, a'>-. |
  
  % PAGE 1 LINE 3
  \og_break
  <a' ef'>4-. <d, a'>-. <a' ef'>4-. |
  <d, a'>-. <a' ef'>4-. <d, a'>-. |
  r4 g,8-.\p bf-. g-. a-. |
  bf4-- a8-. bf g-. bf-. |
  a( g) g-. bf-. g-. a-. |
  bf4-- a8-. bf-. g-. bf-. |
  af4-- af8-. c-. af-. bf-. |
  
  % PAGE 1 LINE 4
  \og_break
  c4-- bf8-. c-. af-. c-. |
  bf( af) af-. c-. af-. bf-. |
  c4-! af8-. c-. bf-. af-. |
  g4-. <d' bf'>-. g,-. |
  r <d' bf'>-. g,-. |
  r <d' bf'>-. g,-. |
  r <d' bf'>-. g,-. |

  % PAGE 1 LINE 5
  \og_break
  r <ef' c'>-. af,-. |
  r q-. af-. |
  r q-. af-. |
  r q-. af-. |
  <g d' bf'>-. r d'4\f^\markup{\italic{largamente}} |
  g2 g4 |
  f2 f4 |
  e2 e4 |
  ef2 ef4 |
  d4 e g |
  
  
  % PAGE 1 LINE 6
  \og_break
  fs4 e d |
  e2 e4 |
  fs r d |
  g2 g4 |
  f?2 f4 |
  e2 e4 |
  ef2 ef4 |
  d g bf |
  a fs d |
  fs2 e4 |
  d r r |
  
  % PAGE 1 LINE 7
  \og_break
  \stemDown
  <d a' fs'>4^"pizz" r r |
  q r r |
  q r r |
  \stemNeutral
  r g8\f^"arco" bf g a |
  bf4 ef,8 g ef f |
  g4 bf,8 ef bf d |
  ef4-- ef8 ef ef ef |
  d4 r r |
  
  % PAGE 1 LINE 8
  \og_break
  \stemDown
  <d a' fs'>4^"pizz" r r |
  q r r |
  q r r |
  \stemNeutral
  r g8\f^"arco" bf g a |
  bf4 ef,8 g ef f |
  g4 bf,8 ef bf d |
  ef4-- ef8 ef ef ef |
  d4 <d a'>8\ff q q q |
  
  % PAGE 1 LINE 9
  \og_break
  <a' ef'>4 <d, a'>8 q q q |
  <a' ef'>4 <d, a'> <a' ef'> |
  <d, a'> <a' ef'> <d, a'> |
  \cello_tenor
  \repeat unfold 4 { r4 <g, d' bf' g'> <bf' g'> | }
  r4 <af, ef' c' af'>4 <c' af'> |
  
  % PAGE 1 LINE 10
  \og_break
  \repeat unfold 3 { r4 <af, ef' c' af'>4 <c' af'> | }
  <g, d' bf' g'> g''8\ff bf g a |
  bf4 a8 bf g bf |
  a(\prall[ g)] g bf g a |
  
  % PAGE 1 LINE 11
  bf4 a8 bf g bf |
  af4 af8 c af bf |
  c4 bf8 c af c |
  bf8(\prall[ af)] af c af bf |
  c4-! af8 c bf af |
  g4 r \cello_bass d, |
  
  % PAGE 2 LINE 1
  \og_pagebreak
  \descending_with_low_g
  <g, d'>4 e' g |
  fs e d |
  <g, e'> 2 q4 |
  <g fs'>4 r d' |
  
  % PAGE 2 LINES 2-4
  \descending_with_low_g
  <g, d'>4 g' bf |
  a fs d |
  <a fs'>2 <a e'>4 |
  \allowPageTurn
  d4 r r |
  \allowPageTurn
  
  %\repeat unfold 2
  {
    \cello_tenor
    < d a' fs'>4^"pizz"\mf r r |
    \allowPageTurn
    \repeat unfold 2 {
      <d a' fs'>4 r r |
      \allowPageTurn
    }
    r g'8^"con legno" bf g a |
    bf4 ef,8 g ef f |
    g4 bf,8 ef bf d |
    ef4 ef8 ef ef ef |
    d4 r r |
  }
  {
    < d, a' fs'>4^"pizz" r r |
    \repeat unfold 2 {
      <d a' fs'>4 r r |
    }
    r g'8^"con legno" bf g a |
    bf4 ef,8 g ef f |
    g4 bf,8 ef bf d |
    ef4 ef8 ef ef ef |
    d4 r r-\tweak DynamicText.extra-offset #'(3 . 0)\f |
  }
  % LINE 4 last 3 measures 
  \cello_bass
  <<
    { a2.~
        -\tweak TextScript.extra-offset #'(-4 . -2) ^"arco" 
        |
      a~ | a4~ a8 }
    \\
    {
      d,16([ ef \repeat unfold 4 { d ef } d ef] |
      d[     ef \repeat unfold 4 { d ef } d ef] |
      d[ ef d ef d8])
    }
  >>
  r8 <d a' fs'>4\ff |
  
  % PAGE 2 LINE 5
  \og_break
  \barNumberCheck #137
  <g, d' bf' g'>4 r r |
  R1*3/4*6 |
  r4 r g\mf | 
  d'8-> d d4 d |
  c8-> c c4 c |
  b8-> b b4 b |
  bf8-> bf bf4 bf |
  a8[ a] b[ b] d[ d] |
  
  % PAGE 2 LINE 6
  \og_break
  c[ c] b[ b] a[ a] |
  c c a'4 c, |
  bf?8 a g a bf c |
  d4 r8 a g a |
  bf a g bf a g |
  c4 r8 c bf a |
  bf4 r8 a g bf |
  
  % PAGE 2 LINE 7
  \og_break
  d4 r8 bf g d' |
  cs16->( d cs d cs8) r8 a'4 |
  <d, d'>2-> q4 |
  <c c'>2-> q4 |
  <b b'>2-> q4 |
  <bf bf'>2-> q4 |
  <a a'>4 <b b'> <d d'> |
  <c c'> <b b'> <a a'> |
  
  % PAGE 2 LINE 8
  \og_break
  <c c'>2 c4 |
  bf8-.\p d-. g-. a-. bf-. c-. |
  d cs d f e d |
  \cello_tenor
  g fs g bf a g |
  c b bf a g fs |
  f\cresc d cs c b bf |
  
  % PAGE 2 LINE 9-11
  \og_break
  a b cs d e f |
  <a, a'>8(\f\< <a b'> <a c'> <a cs'> <a d'> <a ds'>)
  \bar "||" \key d \minor
  \barNumberCheck #173
  <e' e'>4
     \cello_bass
     \tuplet 3/2 { e,8\p^\markup{\italic "scherzando"}( f e) } e4-. |
  \my_pagebreak
  \override Staff.MeasureCounter.count-from = #2
  \startMeasureCount
  r4 \tuplet 3/2 { e8( f e) } e4-. |
  \temporary\omit TupletNumber
  \repeat unfold 14 {
    r4 \tuplet 3/2 { e8( f e) } e4-. |
  }
  \undo\omit TupletNumber
  \stopMeasureCount
  
  \set crescendoText = \markup {\italic {poco a poco cresc.}}
  \set crescendoSpanner = #'text
  \temporary \override DynamicTextSpanner.style = #'dashed-line
  
  r4 r 
    \cello_tenor
    f'^"pizz"
      ^\markup{\italic "marcato"}
      \cresc
    |
  e r f |
  d r e |
  cs r d |
  % TODO: poc a poco cresc
  
  % PAGE 3 LINE 1
  \og_pagebreak
  d4 r f |
  f r g |
  f e d |
  f r e |
  e r g |
  f r g |
  e r f |
  d r e |
  e r g |
  
  % PAGE 3 LINE 2
  \og_break
  g r a |
  g f e |
  g\f r
    \cello_bass
    as,,(^"arco"
  \revert DynamicTextSpanner.style
  \set crescendoText = \markup{\italic{cresc.}}
  \bar "||" \key b \minor
  b) r fs'(\p^\markup{\italic "molto expressivo"}\< |
  b2) b4( |
  as2) as4( |
  a2) a4(\! |
  g2)\> g4( |
  fs g b |
  a g fs |
  
  % PAGE 3 LINE 3
  \og_break
  g2) g4( |
  b2.)\!~ |
  b2.~ |
  b4 r r |
  R1*3/4*5 |
  r4 r fs(\< |
  b2) b4( |
  as2) as4( |
  a2) a4(\! |
  g2)\>\sf g4( |
  e fs a |
  
  % PAGE 3 LINE 4
  \og_break
  g fs e |
  g2) g4( |
  fs2.)\!~ |
  fs2.~ |
  fs4 r r |
  R1*3/4*1 |
  <b, e>2.\sf\>~ |
  q |
  <as e'>~ |
  q |
  \tuplet 3/2 4 {b8\cresc( c cs d ds e es fs g} |
  
  % PAGE 3 LINE 5
  \og_break
  \temporary\omit TupletNumber
  \tuplet 3/2 4 {gs a as b c cs d ds e) } |
  \tuplet 3/2 4 {es( fs g gs a as b\sf as a} |
  \tuplet 3/2 4 {gs\dim g fs f e ds d cs c) } |
  \tuplet 3/2 4 {b\cresc( as a gs g fs f e ds } |
  \tuplet 3/2 4 {d cs c b\sf c cs d ds e) } |
  
  % PAGE 3 LINE 6
  \og_break
  \tuplet 3/2 4 {es\dim( fs g gs a as b bs cs } |
  \tuplet 3/2 4 {d ds e es fs g gs a as } |
  \undo\omit TupletNumber
  b4)\p ds,,8-. fs-. ds-. es-. |
  fs[\sf fs] es[ es] ds4 |
  r4 ds'8 fs ds es |
  
  % PAGE 3 LINE 7
  \og_break
  fs\sf[ fs] es[ es] ds4 |                  \og_nobreak
  r
    \cello_treble
    c'8\cresc ef c d |                      \og_nobreak
  ef\sf[ ef] d[ d] c4 |                     \og_nobreak
  r \cello_bass
    c,,8 ef c d |                           \og_nobreak
  ef\sf[ ef] d[ d]
    \once \override Staff.NoteColumn #'X-extent = #'(1 . 2)
    c4 |                     \og_nobreak
  
  \bar "||" \key g \minor
  
  \cello_tenor
  \my_pagebreak

  %%%%%%%% START AUTOGENERATED %%%%%%%%
  \tuplet 3/2 4 { g8( ef' c') g'( c, ef,} g,4~ |
  \temporary\omit TupletNumber
  % PAGE 3 LINE 8
  \og_break
  \tuplet 3/2 4 { g8 ef' c') g'( c, ef,} g,4~ |
  \tuplet 3/2 4 { g8 e' c') g'( c, e,} g,4~ |
  \tuplet 3/2 4 { g8 e' c') g'( c, e,} g,4_> |
  \tuplet 3/2 4 { a8_> f' c') a'( c, f,} a,4~ |
  \tuplet 3/2 4 { a8 f' c') a'( c, f,} a,4~ |
  \tuplet 3/2 4 { a8 e' cs') a'( cs, e,} a,4~ |
  % PAGE 3 LINE 9
  \og_break
  \tuplet 3/2 4 { a8 e' cs') a'( cs, e,} a,4_> |
  \tuplet 3/2 4 { bf8 f' d') bf'( d, f,} bf,4~ |
  \tuplet 3/2 4 { bf8 f' d') bf'( d, f,} bf,4_> |
  \tuplet 3/2 4 { c8 g' e') c'( e, g,} c,4~ |
  \tuplet 3/2 4 { c8 g' ef') c'( ef, g,} c,4_> |
  \tuplet 3/2 4 { d8_> a' fs') d'( fs, a,} d,4_> |
  % PAGE 3 LINE 10
  \og_break
  \tuplet 3/2 4 { ef8 bf' g') ef'( g, bf,} ef,4_> |
  \tuplet 3/2 4 { d8_> a' fs') d'( fs, a,} d,4_> |
  \tuplet 3/2 4 { ef8_> bf' g') ef'( g, bf,} ef,4_> |
  \tuplet 3/2 4 { d8_> a' fs') d'( fs, a,} d,4_> |
  \tuplet 3/2 4 { ef8_> bf' g') ef'( g, bf,} ef,4~ |
  \tuplet 3/2 4 { ef8 bf' g') ef'( g, bf,} ef,4~ |
  % PAGE 3 LINE 11
  \og_break
  \tuplet 3/2 4 { ef8 bf' g') ef'( g, bf,} ef,4) |
  %%%%%%%% END AUTOGENERATED %%%%%%%%
  
  \undo\omit TupletNumber
  {
    <<
      { R1*3/4 | }
      {s2 s4 }
    >>
    \cello_bass
    <<
      { d2\ff d4 }
      \\
      { d2 d4 }
    >>
  }
  \repeat unfold 3 {
    R1*3/4 |
    <<
      { d2 d4 } % TODO: only first repeat
      \\
      { d2 d4 }
    >>
  }

  % PAGE 4 LINE 1 [first measure prev. block; also has L2 M1-2]
  \og_pagebreak
  a'2 a4 |
  g2\dim g4 |
  f2 f4 |
  ef2 ef4 |
  \repeat unfold 2 {
    d2 d4 |
    ef2 ef4 |
  }
  d2\p d4 |
  \repeat unfold 3 {
    d2 d4 |
  }

  % PAGE 4 LINE 2
  d4 a8^\markup{\italic "stacc."} a a a |
  \repeat unfold 2 {
    d4 a8 a a a |
  }
  d4 a d |
  r g8 bf g a |
  bf4 ef,8 g ef f |
  g4 bf,8 ef bf d |
  
  % PAGE 4 LINE 3
  \og_break
  ef4-- ef8 ef ef ef |
  \repeat unfold 3 {
    d4 a8 a a a |
  }
  d4 a d |
  r g'8 bf g a |
  bf4 ef,8 g ef f |
  
  % PAGE 4 LINE 4
  \og_break
  g4 bf,8 ef bf d |
  ef4-- ef,8 ef ef ef |
  d4 r <d a'>-.\f |
  <a' ef'>8-.-> q-. q4-. <d, a'>-. |
  \repeat unfold 3 { <a' ef'>8-. <d, a'>-.} |
  <a' ef'>4-. <d, a'>-. r |
  
  % PAGE 4 LINE 5
  \og_break
  r r df4\mf |
  df8-> df df4 df |
  df8 df df df df df |
  df4 df r |
  r r c4 |
  c8-> c c4 r |
  r r bf |
  
  % PAGE 4 LINE 6
  \og_break
  bf8-> bf bf4 <bf g'>-.\p |
  <a fs'>-. r r |
  \my_pagebreak
  R1*3/4*1 |
  r4 r d'(^\markup{\italic "expressivo"} |
  f e d |
  e2. |
  a,) |
  r4 r c( |
  ef? d c |
  
  % PAGE 4 LINE 7
  \og_break
  d2. |
  g,) |
  r4 r g4( |
  bf a g |
  a2 e4) |
  g2.(~ |
  g |
  ef) |
  d~ |
  d~ |
  d4 r r |
  
  % PAGE 4 LINE 8 [plus L9 M1-2]
  R1*3/4*1 |
  a2\pp\<( bf4 |
  d\> df c)\! |
  b2( c4) |
  ef2->( d4) |
  f2->( ef4) |
  g2->( fs4) |
  \repeat unfold 2 {
    r4 c'8\cresc( ef c d |
    ef-> c ef d c bf)    |
  }
  
  % PAGE 4 LINE 9 [M1-2 ^^]
  r4 \cello_treble c'8( ef c d) |
  \repeat unfold 3 {
    ef(-> c ef d c bf) |
  }
  
  % PAGE 4 LINE 10
  \og_break
  ef\f-. c-. ef-. d-. c-. bf-. |
  c bf a fs a g |
  fs c ef d c a |
  \cello_bass
  c bf a fs a g |
  fs c[( ef^\sf d c a)] |
  r c( ef^\sf d c a) |
  
  % PAGE 4 LINE 11
  \og_break
  \repeat unfold 2 {
    r c( ef^\sf d c a) |
  }
  r d( ef e f fs |
  g[ gs)]\<  % beats 2-3 in split voices
  <<
    { 
      %{beat 1 outside%} a bf b c |
      cs[ d] %{beats 2-3 outside%}
    }
    \\
    {
      d,2 ~ |
      d4
    }
  >>
  %{beat 1 inside%} ds'8-. e-. fs-. g-.\! |
  \cello_treble
  a8-. bf-. c-. d-. e-. fs-. |
  
  % PAGE 4 LINE 12 and PAGE 5 LINES 1 and 2
  \og_break
  g4-.\ff % MEASURE CONTINUED IN REPEAT
  \repeat unfold 2 {
    \cello_treble
    %{ beat 1 external %}  <bf,, g'>8 <bf bf'> <bf g'> <bf a'> |
    \repeat unfold 2 {
      <bf bf'>4 <bf g'>8 <bf bf'> <bf g'> <bf bf'> |
      <bf a'>[( <bf g'>]) <bf g'>8 <bf bf'> <bf g'> <bf a'>
    }
    <bf bf'>4 <bf g'>8 <bf bf'> <bf g'> <bf bf'> |

    % PAGE 5 LINE 1
    <a d'>4 <a e''>8 <a fs''> <a d'> <a fs''> |
    <a a''>4 \cello_bass a,8 bf b cs |
    d4 %{ BEATS 2 and 3 in first measure of repeat %}
  }
  
  % PAGE 5 LINE 2 [MEASURES 1-4 ABOVE]
  %{ BEAT 1 FROM REPEAT %} d2:8_\sempreFF |
  cs4 d2:8 |
  cs4 d2:8 |
  cs4 d2:8 |
  
  % PAGE 5 LINE 3
  \og_break
  cs4 <d d'>2:8 |
  \repeat unfold 3 {
    <d a' fs'>4 <d d'>2:8 |
  }
  <d bf' g'>4
    \cello_tenor
    d8^\markup{\italic "furioso"}\upbow g bf d |
  \graced_descending_run
  fs, a d fs a d |
  bf4 d,,8 g bf d |
  \graced_descending_run |
  
  % PAGE 5 LINE 6
  \og_break
  {
    fs, a d fs a d |
    bf^\markup{\italic "stringendo"} g d bf g d |
  }
  \repeat unfold 1 {
    fs a d fs a d |
    bf g d bf g d |
  }
  fs a d fs a d |
  d,, fs a d fs a |
  
  % PAGE 5 LINE 7
  \og_break
  a, d fs a
    \cello_treble
    d fs |
  g4\fff^"animato" f ef |
  f ef d |
  ef d c |
  af8 c af bf c4 |
  fs,8 a fs g a4 |
  \cello_bass
  <d,, a' g'> f' ef |
  
  % PAGE 5 LINE 8
  \og_break
  f ef d |
  ef d c |
  af8 c af bf c4 |
  fs,8 a fs g a4 |
  \repeat unfold 2 {
    g,4( <d' bf' g'>) r |
    ef( <ef c' fs>) r |
  }
  
  % PAGE 5 LINE 9
  \og_break
  g,4( <d' bf' g'>) r |
  \repeat unfold 2 {
    <g, d'>4( <d' bf' g'>) r |
  }
  \repeat unfold 5 {
    <g, d'>4( <d' bf' g'>) <g, d'> |
  }
  \bar "||"
  <<
    { R1*3/4*1 |}
    { s2
      s4
        -\tweak DynamicText.extra-offset #'(4 . 0)\f
        -\tweak TextScript.extra-offset #'(4 . 0)^"ad lib." }
  >>
  \cello_treble
  ef''4-._"(du talon.)" r8 bf'-. bf4-. |
  
  % PAGE 5 LINE 10
  \og_break
  ef,4-.
    g2->
      _\markup{\italic "dim."}
      \fermata
       -\tweak X-offset #3  ^\markup{\italic "long"}
    |
  R1*3/4*10
  r1*3/4\fermata |
  \cello_bass
  d2.\f^\markup{\italic "quasi recitativo"}
  bf4 a g |
  g2.~ |
  g4 r r |
  bf2. |
  g4 f ef |
  ef2.~|
  
  % PAGE 5 LINE 11
  \og_break
  ef4 r r |
  r r ef(\dim |
  af,) bf c |
  ef2. |
  ef( |
  \repeat tremolo 6 { d16\p->^\markup{\italic "trillo."} ef }
  \repeat tremolo 6 { d ef }
  \repeat tremolo 6 { d ef }
  
  % PAGE 5 LINE 12
  \og_break
  \repeat tremolo 6 { d ef }
  \repeat tremolo 6 { d ef }
  \repeat tremolo 6 { d\dim ef }
  \repeat tremolo 6 { d ef }
  \repeat tremolo 6 { d ef }
  d8)\pp r r4 r |
  <d a' fs'>8 r r4 r |
  <g, d' bf' g'>8 r r4 r
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = ""
    midiInstrument = "violin"
    \consists "Page_turn_engraver"
  } {\transpose c c, \violin}
  \layout {
    \context {
      \Staff
      \consists #Measure_counter_engraver
    }
  }
  \midi {
    \tempo 4=170
  }
}

\paper { 
  #(set-paper-size "letter")
  ragged-last-bottom = ##f 
  %page-breaking = #ly:page-turn-breaking
  page-count = #6
}













