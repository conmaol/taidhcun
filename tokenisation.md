# Guidelines on tokenisation and annotation

The basic principles of tokenisation in Taidhcùn are:
1. Spaces are token separators.
2. Punctuation characters are tokens.

## Exceptions to rule 1

Sometimes spaces are not token separators. 

In other words, some tokens contain spaces.

- ann am, ann an – reduplicated prepositions

<w id="_198_d2e147" ref="an-prep">ann am</w><w id="_198_d2e150" rels="comp:-1">fear</w>

<w id="_198_d2e361" ref="an-prep">ann an</w><w id="_198_d2e364" ref="taigh">tigh</w>


- an seo, an sin, an siud

<w id="_198_d2e1499" ref="an_siud">an siud</w>
<w id="_198_d2e1841" ref="an_seo">an seo</w>
<w id="_198_d2e2028" ref="a-rithist">a rithist</w>

<w id="_198_d2e2099" ref="mura" join="left">mur a</w>

## Exceptions to rule 2

Sometimes punctuation characters are not tokens.

In other words, some tokens contain punctuation characters.

### Hyphens

Hyphenated initial mutations are always part of the following word:
  - t- eg. an t-simileir = <w ref="the" rels="spr:1">an</w><w ref="similear">t-simileir</w>
  - h- <w id="_198_d2e528" ref="gach">a</w><w id="_198_d2e531" ref="uile">h-uile</w>
  - n-

In adverbs starting with a- or an-, the prefix is always part of the following word:
  - a-muigh = <w>a-muigh</w>
  - a-mach

<w id="_198_d2e1342" ref="co-dhiù">Co-dhiùbh</w>

### Apostrophes

#### Initial apostrophes

<w id="_198_d2e436" ref="agus">’s</w>

- ’Se = ’S + e = <w ref="is">’S</w><w ref="e" rels="sbj:-1" join="left">e</w>
- ’nam (aonar) = ’na + m (+ aonar) = <w ref="an-prep">’na</w><w ref="mo" join="left">m</w><w>aonar</w>

<w id="_198_d2e883" ref="is">’S</w>
      <w id="_198_d2e883" ref="an-prep" join="left">ann</w>

#### Final apostrophes

The form a’ is always a word token:
  - as definite article (ref="the") – <w ref="the">a’</w>
  - as progressive particle (ref="ag") – <w ref="ag">a’</w>

Where a apostrophe indicates ellision of a final vowel, it is part of the word:
  - bhail’ – <w ref="baile">bhail’</w>
  - b’ – <w ref="is:past">b’</w>

#### Medial apostrophes

The apostrophised initial mutation dh’ is an integral part of the following word:
  - in past tense verb forms, eg. dh’fhàg – <w ref="fàg">dh’fhàg</w>
  - with reduplicating prepositions, eg. a dh’fhuireach – <w ref="do-prep" rels="comp:-2">a</w><w ref="fuireach" rels="comp:-1">dh’fhuireach</w>

When an apostrophe is inside an orthographic word, it sometimes represents the start of a new word:
  - do’n ‘to the’ = do + ’n = <w ref="do-prep">do</w><w ref="the" join="left">’n</w>
  - b’ann = b’ + ann = <w ref="is">b’</w><w ref="an-prep" rels="sbj:-1" join="left">ann</w>
  - bh’annam = bh’ + annam = <w ref="bi:past">bh’</w><w ref="an-prep" join="left">annam</w>
  



---

Fused words with no apostostrophe

- ’Se = ’S + e = <w ref="is">’S</w><w ref="e" rels="sbj:-1" join="left">e</w>

gur e
<w id="_198_d2e269" ref="gun">gu</w>
      <w id="_198_d2e270" ref="is" join="left">r</w>
      <w id="_198_d2e273">e</w>


<w id="_198_d2e320" ref="an-prep">’na</w>
      <w id="_198_d2e321" ref="mo" join="left">m</w>
      <w id="_198_d2e323">aonar</w>

<w id="_198_d2e883" ref="is">’S</w>
      <w id="_198_d2e883" ref="an-prep" join="left">ann</w>

<w id="_198_d2e1290">air</w>
      <w id="_198_d2e1291" join="left">son</w>

---


Rules for displaying text:
- Punctuation markers join to the preceding token. 

## Empty words

### Implicit prepositions

'aon latha' used adverbially ('one day') can be assumed to have an implicit preposition:

eg. Aon latha, thàinig aonaran ...

<w ref="null-prep" rels="mod:4"/>
<w ref="aon" rels="num:1">Aon</w>
<w ref="latha" rels="comp:-2">latha</w>
<pc>,</pc>
<w ref="thig:past">thàinig</w>
<w rels="sbj:-1">aonaran</w>


### Implicit progressive particles

eg. Tha mi fuireach ...

<w ref="bi:pres">Tha</w>
<w>mi</w>
<w ref="ag"/>
<w>fuireach</w>



