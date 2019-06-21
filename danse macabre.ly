\version "2.19.80"
\language "english"

\header {
  title = "DANSE MACABRE"
  subtitle = "POËM SYMPHONIQUE"
  composer = "C. SAINT-SAËNS"
  poet = "Transcription for violin and piano"
  piece = "par L‘AUTEUR"
  opus = "Op. 40"
}

global = {
  \compressFullBarRests
  \accidentalStyle modern-cautionary

  \key g \minor
  \time 3/4
  \tempo "Mouv modéré de valse"
}

violin = \relative c' {
  \global
  % Music follows here.
  <<
    \new Voice="pizz" { \voiceOne
      d4\p^"pizz" r r |
      \repeat unfold 11 {
        d r r |
      }
    }
   \\
    \new Voice="arco" { \voiceFour
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
      \cueClef "bass"
      c,4 r r | ef r r |
    }
  >>
  \cueClefUnset
  <a' ef'>2.->\f |
  <d, a'>-> |
  <a' ef'>2-> q4 |
  <d, a'>2-> q4 |
  <a' ef'>8->-. q-. q4-. <d, a'>-. |
  <a' ef'>8->-. q-. q4-. <d, a'>-. |
  
  % PAGE 1 LINE 3
  \break
  <a' ef'>4-. <d, a'>-. <a' ef'>4-. |
  <d, a'>-. <a' ef'>4-. <d, a'>-. |
  r4 g,8-.\p bf-. g-. a-. |
  bf4-- a8-. bf g-. bf-. |
  a( g) g-. bf-. g-. a-. |
  bf4-- a8-. bf-. g-. bf-. |
  af4-- af8-. c-. af-. bf-. |
  
  % PAGE 1 LINE 4
  \break
  c4-- bf8-. c-. af-. c-. |
  bf( af) af-. c-. af-. bf-. |
  c4\! af8-. c-. bf-. af-. |
  g4-. <d' bf'>-> g,-. |
  r <d' bf'>-> g,-. |
  r <d' bf'>-> g,-. |
  r <d' bf'>-> g,-. |
  
  % PAGE 1 LINE 5
  \break
  r <ef' c'>-> af,-. |
  r q-> af-. |
  r q-> af-. |
  r q-> af-. |
  <g d' bf'>-> r d'4\f^\markup{\italic{largamente}} |
  g2 g4 |
  f2 f4 |
  e2 e4 |
  ef2 ef4 |
  d4 e g |
  
  
  % PAGE 1 LINE 6
  \break
  fs4 e d |
  e2 e4 |
  fs r d |
  g2 g4 |
  f2 f4 |
  e2 e4 |
  ef2 ef4 |
  d g bf |
  a fs d |
  fs2 e4 |
  d r r |
  
  % PAGE 1 LINE 7
  \break
  <d a' fs'>4^"pizz" r r |
  q r r |
  q r r |
  r g8\f^"arco" bf g a |
  bf4 ef,8 g ef f |
  g4 bf,8 ef bf d |
  ef4-- ef8 ef ef ef |
  d4 r r |
  
  % PAGE 1 LINE 8
  \break
  <d a' fs'>4^"pizz" r r |
  q r r |
  q r r |
  r g8\f^"arco" bf g a |
  bf4 ef,8 g ef f |
  g4 bf,8 ef bf d |
  ef4-- ef8 ef ef ef |
  d4\ff <d a'>8 q q q |
  
  % PAGE 1 LINE 9
  \break
  <a' ef'>4 <d, a'>8 q q q |
  <a' ef'>4-. <d, a'>-. <a' ef'>4-. |
  <d, a'>-. <a' ef'>4-. <d, a'>-. |
  \repeat unfold 4 { r4 <g, d' bf' g'> <bf' g'> | }
  r4 <af, ef' c' af'>4 <c' af'> |
  
  % PAGE 1 LINE 10
  \break
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
  g4 r d, |
  
  % PAGE 2 LINE 1
  
}

\score {
  \new Staff \with {
    instrumentName = "Violin"
    midiInstrument = "violin"
  } \violin
  \layout { }
  \midi {
    \tempo 4=170
  }
}
