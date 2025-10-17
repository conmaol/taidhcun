import xml.etree.ElementTree as ET
import pprint
import json

text = ET.parse('texts/198/198.xml').getroot()

faclair = {}

def addWord(w,d):
    hw = ''
    if 'ref' in w.attrib:
        hw = w.attrib['ref']
    else:
        hw = w.text
    #if hw not in d:
    #    d[hw] = [w.attrib['id']]
    #else:
    #    d[hw].append(w.attrib['id'])
    if hw not in d:
        d[hw] = {'default': []}
    if 'sense' in w.attrib and w.attrib['sense'] != '':
        if w.attrib['sense'] not in d[hw]:
            d[hw][w.attrib['sense']] = [w.attrib['id']]
        else:
            d[hw][w.attrib['sense']].append(w.attrib['id'])
    else:
        d[hw]['default'].append(w.attrib['id'])






for block in text:
    if block.tag == '{urn:taidh:cun/}h':
        for token in block:
            if token.tag == '{urn:taidh:cun/}w':
                addWord(token,faclair)
    elif block.tag == '{urn:taidh:cun/}p':
        for sentence in block:
            if sentence.tag == '{urn:taidh:cun/}s':
                for token in sentence:
                    if token.tag == '{urn:taidh:cun/}w':
                        addWord(token,faclair)
            
#pprint.pprint(faclair)
print(json.dumps(faclair, indent=2, ensure_ascii=False))

# senses?
