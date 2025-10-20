import json
import pprint
import sys
import xml.etree.ElementTree as ET

def printCitation(id):
    textid = id.split('_',2)[1]
    file = '../texts/xml/' + textid + '.xml'
    text = ET.parse(file).getroot()
    w = text.find(".//{urn:taidh:cun/}w[@id='" + id + "']")
    #print('    ', w.text, id)
    parent_map = {child: parent for parent in text.iter() for child in parent}
    s = parent_map.get(w, "{urn:taidh:cun/}s")
    gd = s.find('.//{urn:taidh:cun/}gd')
    print('-', ' '.join(gd.text.split()))

with open('faclair.json','r') as file:
    faclair = json.load(file)

ref = sys.argv[1]
print(ref)
entry = faclair[ref]
for key in entry:
    if entry[key]:
        print(key + ':')
        for citation in entry[key]:
            printCitation(citation)

#print(ref)
#pprint.pprint(entry)
