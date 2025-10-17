import xml.etree.ElementTree as ET

text = ET.parse('texts/198/198.xml').getroot()
print(text.tag)

for block in text:
    if block.tag == '{urn:taidh:cun/}h':
        #print(block.find('{urn:taidh:cun/}gd').text)
        for token in block:
            if token.tag == '{urn:taidh:cun/}w':
                if 'ref' in token.attrib:
                    print(token.attrib['ref'])
                else:
                    print(token.text)
    elif block.tag == '{urn:taidh:cun/}p':
        for sentence in block:
            if sentence.tag == '{urn:taidh:cun/}s':
                for token in sentence:
                    if token.tag == '{urn:taidh:cun/}w':
                        if 'ref' in token.attrib:
                            print(token.attrib['ref'])
                        else:
                            print(token.text)
            
    

    """for child in block:
        print('    ', child.tag.split("}",1)[1], child.attrib, child.text)
        for child2 in child:
            print('        ', child2.tag.split("}",1)[1], child2.attrib, child2.text)"""

