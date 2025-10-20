import xml.etree.ElementTree as ET
import pprint
import json

text = ET.parse('../texts/xml/198.xml').getroot()

faclair = {}

def addWord(w,d):
    hw = ''
    if 'ref' in w.attrib:
        hw = w.attrib['ref']
    else:
        hw = w.text
    if hw not in d:
        d[hw] = {'default': []}
    if 'tags' in w.attrib and w.attrib['tags'] != '':
        if w.attrib['tags'] not in d[hw]:
            d[hw][w.attrib['tags']] = [w.attrib['id']]
        else:
            d[hw][w.attrib['tags']].append(w.attrib['id'])
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
#print(json.dumps(faclair, indent=2, ensure_ascii=False))
with open('faclair.json','w') as file:
    json.dump(faclair, file, indent=2, ensure_ascii=False)

