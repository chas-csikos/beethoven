\version "2.24.4"
\language "english"

\include "include/layout.ily"
\include "include/paper.ily"

\header {
  title = "Sonata"
  subtitle = "Quasi una Fantasia"
  dedication = "for Contessina Giulietta Guicciardi"
  titleRunner = "Sonata 14.1"
  composer = "Beethoven"
  opus = "Op. 27.2"
}

\paper {
  min-systems-per-page = #5
  max-systems-per-page = #7
}

upper = \relative g' {
  \key cs \minor
  \time 2/2
  \tempo "Adagio sostenuto"
  \voiceOne
  s1*4
  \once\teeny r2 r4 gs8.^\pp gs16 |
  gs2. gs8. gs16 |
  gs2( a |
  gs fs4 b) |
  e, r4 r2 |
  r r4 g8. g16 |
  g2. g8. g16 |
  g2.( fs4) |
  fs2( g4 e) |
  fs2 fs |
  b,4 r r b'( |
  c2. as4) |
  b2. b4( |
  c2. as4) |
  b2 b |
  b( a |
  g fs) |
  cs cs4 cs |
  fs, r r cs''8. cs16 |
  cs2. cs8. cs16 |
  cs2( bs4 cs) |
  ds2. ds4 |
  e2( ds4 cs) |
  s4 gs4( a fs) |
  s gs,( a fs) |
  s cs''( e cs) |
  s cs,( e cs) |
  \omit TupletBracket \omit TupletNumber
  s1*5 s2 \tuplet 3/2 { a8 ds,4 } cs4
  bs2 ds4 cs bs2 d4 cs bs2 s s1 s2 r4 gs''8. gs16
  gs2. gs8. gs16 gs2( a gs fs4 b) e, r r b'8. b16 b2. b8. b16
  b2( bs4 cs) ds2( e d bs) cs2. cs4(
  d2. bs4) cs2. cs4( d2. bs4) cs2 cs b2. b4
  a a gs gs fs2( gs4 a) gs2 gs
  cs,4 s2.
  s1 s
  s2. bs4
  \voiceTwo e, s2.
  s2. \voiceOne bs'4
  \voiceTwo e, s2.
}
middle = \relative g \tuplet 3/2 4 {
  \key cs \minor
  \time 2/2
  \tempo "Adagio sostenuto"
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = 1,1,1,1
  \override TupletNumber.whiteout = ##t
  \voiceTwo
  \oneVoice
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.outside-staff-priority = #0
  \mark \markup { \normalsize "Si deve suonare tutto questo pezzo delicatissimamente e senza sordino." }
  gs8 cs e gs, cs e gs, cs e gs, cs e | \omit TupletBracket \omit TupletNumber
  gs, cs e gs, cs e gs, cs e gs, cs e | \break
  a,( cs e a, cs e) a,( d fs a, d fs) |
  gs,( bs fs' gs, cs e gs, cs ds fs, bs ds) |
  e,( gs cs) gs( cs e) \voiceTwo gs,( cs e) gs, cs e |
  gs, ds' fs gs, ds' fs gs, ds' fs gs, ds' fs |
  gs, cs e gs, cs e a, cs fs a, cs fs |
  gs, b e gs, b e a, b ds a b ds |
  gs, b e gs, b e gs, b e gs, b e |
  g, b e g, b e g, b e g, b e |
  g, b f' g, b f' g, b f' g, b f' |
  g, c e  g,
    %\footnote "**" #'(0 . -3) \markup {** Possible early transcription error; the B could be a C-natural.}
    b e g, cs e fs, cs' e |
  fs, b d fs, b d g, b cs e, b' cs |
  fs, b d fs, b d fs, as cs fs, as cs |
  b d fs b, d fs b, ds fs b, ds fs |
  b, e g b, e g b, e g b, e g |
  b, ds fs b, ds fs b, ds fs b, ds fs |
  b, e g b, e g b, e g b, e g |
  b, ds fs b, ds fs b, d es b d es |
  b cs gs' b, cs gs' a, cs fs a, cs fs |
  g, b d g, b d fs, a ds fs, a ds |
  \clef bass cs, fs a cs, fs a cs, fs gs cs, es gs |
  fs a cs a cs fs \clef treble  cs fs a cs, fs a |
  cs, gs' b cs, gs' b cs, gs' b cs, gs' b |
  cs, fs a cs, fs a bs, fs' a cs, fs a |
  ds, fs gs ds fs gs ds fs gs ds fs gs |
  e gs cs e, gs cs ds, fs a cs, e as |
  \oneVoice bs bs, ds \voiceTwo gs bs, ds a' bs, ds fs bs, ds |
  \oneVoice r[ \clef bass bs ds] \voiceTwo gs, bs ds a bs ds fs, bs ds |
  e, \clef treble e' gs  cs e, gs e' e, gs cs e, gs |
  \clef bass r[ e, gs] cs e, gs e' e, gs cs e, gs |
  \oneVoice ds( a' fs bs a ds \clef treble bs fs' e a fs bs) |
  e,,( cs' gs e' cs gs' e cs' gs e' cs gs) |
  cs,( fss e as fss cs' as e' cs fss e as) |
  fs,( bs a ds bs fs' ds a' fs bs a ds) |
  bs( fs a ds, fs bs, ds a bs fs a ds, |
  fs bs, ds \clef bass a bs fs) \voiceTwo a( ds, fs cs fs a) |
  bs, fs' gs a gs fs ds( fs a cs, fs a) |
  bs, fs' gs a gs fs d( fs a cs, fs a) |
  bs, fs' gs a gs fs cs e cs' cs, e cs' |
  ds, a' cs ds, a' cs ds, gs bs ds, gs bs |
  e, gs cs \clef treble gs cs e gs, cs e gs, cs e |
  gs, ds' fs gs, ds' fs gs, ds' fs gs, ds' fs |
  gs, cs e gs, cs e a, cs fs a, cs fs |
  gs, b e gs, b e a, b ds a b ds |
  gs, b e b e gs b, e gs b, e gs |
  b, fs' a b, fs' a b, fs' a b, fs' a |
  b, e gs b, e gs bs, fs' gs cs, e gs |
  ds fs gs ds fs gs e gs cs e, gs cs |
  d, fs a d, fs a bs, fs' gs bs, fs' gs |
  cs, e gs cs, e gs cs, es gs cs, es gs |
  cs, fs a cs, fs a cs, fs a cs, fs a |
  cs, es gs cs, es gs cs, es gs cs, es gs |
  cs, fs a cs, fs a cs, fs a cs, fs a |
  cs, es gs cs, es gs cs, fs a cs, fs a |
  b, fs' a b, fs' a b, fs' a b, e gs |
  a, e' gs a, ds fs gs, ds' fs gs, cs e |
  fs, cs' ds fs, cs' ds gs, cs ds a cs ds |
  gs, cs e gs, cs e fs, bs ds fs, bs ds |
  e, gs cs \oneVoice gs cs e gs, cs e gs, cs e |
  gs, ds' fs gs, ds' fs gs, ds' fs gs, ds' fs |
  gs,( e' cs gs' e cs' gs e' cs gs' e cs) |
  \shape #'((0 . -0.75)(0 . 2.5)(0 . 5)(0 . 0.5)) Slur
  \voiceTwo bs^( ds a bs fs a ds, fs a,~ a gs fs) |

  \voiceOne cs' e cs gs' e cs' \voiceTwo gs e' cs gs' e cs
  bs ds a bs fs a ds, fs a,~ a gs fs |
  \voiceOne cs' gs cs e cs gs \voiceTwo \clef bass r[ e gs] cs gs e |

  \clef bass r[ cs e] gs e cs \change Staff = "Down" \voiceThree gs cs gs e gs e
  \times 3/2 { \change Staff = "Up" \oneVoice r2 <e' gs cs> <e gs cs>1\fermata \bar "|." }
}
lower = \relative c {
  \key cs \minor
  \time 2/2
  \tempo "Adagio sostenuto"|
  <cs cs,>1
  <b b,>
  <a a,>2 <fs fs,>
  <gs gs,> <gs gs,>
  <cs, gs' cs>1
  <bs gs' bs>
  <cs cs'>2( <fs fs,>)
  <b, b'> <b b'>
  <e e'>1
  <e e'>
  <d d'>
  <c c'>4( <b b'> <as as'>2)
  <b b'>( e4 g)
  fs2 <fs fs,>
  <b b,>1( ~
  <b b,>4 <e e,> <g g,> <e e,>)
  <b b,>1( ~
  <b b,>4 <e e,> <g g,> <e e,>)
  <b b,>2
  <gs gs,!>
  <es es,> <fs fs,>
  <b b,> <bs bs,>
  cs, cs
  <fs, cs' fs>1
  <es' cs' es>
  <fs fs'>2( <ds ds'>4 <cs cs'>
  <bs gs' bs>2.) <bs gs' bs>4
  <cs gs' cs>2 <fs fs,>4( <fss fss,>)
  <gs gs,>1
  <gs gs,>
  <gs gs,>
  <gs gs,>
  <gs gs,>
  <gs gs,>
  <gs gs,>
  <gs gs,>~
  <gs gs,>~
  <gs gs,>
  <gs gs,>
  <gs gs,>
  <gs gs,>2( <a a,>
  <fs fs,> <gs gs,>
  <cs gs cs,>1)
  <bs gs bs,>
  <cs cs,>2 <fs, fs,>
  <b b,> <b b,>
  <e e,>1
  <ds ds,>
  <e e,>2 <ds ds,>4 <cs cs,>
  <bs gs bs,>2 <cs gs cs,>
  <fs, fs,> <gs gs,>
  <cs ~ cs,>1_( ~
  <cs cs,>4 <fs fs,> <a a,> <fs fs,>)
  <
   cs-\shape #'(((0.75 . 0)(0.75 . 0.25)(0 . 0.25)(0 . 0))) ^~
   cs,-\shape #'(((0.25 . 0)(0.25 . 0)(0 . 0)(0 . 0))) _~
  >1_(
  \once \override TieColumn.positioning-done = ##t
  <cs cs,>4 <fs fs,> <a a,> <fs fs,>)
  \set doubleSlurs = ##t
  <cs cs,>2 <fs, fs,>( <ds' ds,>2.) <e e,>4
  \set doubleSlurs = ##f
  <cs cs,>4( <ds ds,> <bs bs,> <cs cs,>)
  <a a,>2( <gs gs,>4 <fs fs,>)
  <gs gs,>2 <gs gs,>
  <<
    {
      gs2. gs8. gs16 | gs2. gs8. gs16 | gs2. gs8. gs16 |
      gs2. gs8. gs16 | gs2. gs8. gs16 | gs2. gs8. gs16 |
      gs2 cs gs s2
    }
    \\
    {cs,1 bs cs gs cs gs cs ~ cs2}
  >>
  cs2 <cs gs' cs> <cs gs' cs>1\fermata
  \once \override Score.RehearsalMark.break-align-symbols = #'(bar-line)
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.direction = #DOWN
  \mark \markup{\normalsize\italic "Attacca subito il seguente."}
}

dynamics = {
  s1_\markup{\italic "sempre" \dynamic pp \italic "e senza sordino"}
  s1*14
  s2\< s2\>
  s1\!
  s2\< s2\>
  s1*6\!
  s1\cresc
  s1
  s2 s2\decresc
  s4\p s2\< s4\>
  s4\! s2\< s4\>
  s4\! s2\< s4\>
  s4\! s2\< s4\>
  s1*8\!
  s1*2\decresc
  s1*6\pp
  s1\cresc
  s1*3\p
  s2.\< s4\>
  s1\!
  s2.\< s4\>
  s1*3\!
  s1\cresc
  s1\p
  s1*2\pp
  s1\<
  s1\>
  s1\<
  s1\>\!
  s1*2\decresc
  s1\tweak Y-offset 2\pp
}

\score {
   \new PianoStaff <<
     \new Staff = "Up" <<
        \new Voice \upper
        \new Voice \middle
     >>
     \new Dynamics \dynamics
     \new Staff = "Down" \with { \clef bass } <<
        \new Voice \lower
     >>
   >>
   \layout {
      \override DynamicTextSpanner.style = #'none
      \override DynamicTextSpanner.layer = #-1
      \override DynamicTextSpanner.whiteout-style = #'rounded-box
      \override DynamicTextSpanner.whiteout = #1
   }
}
