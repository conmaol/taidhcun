import xml.etree.ElementTree as ET

text = ET.parse('texts/198/198.xml').getroot()
print(text.tag.split("}",1)[1], text.attrib)
print(text.tag)

for block in text:
    blocktype = block.tag.split("}",1)[1]
    if blocktype == 'h':
        print(block.find('{urn:taidh:cun/}gd').text)
    else:
        print('Banana!')

    """for child in block:
        print('    ', child.tag.split("}",1)[1], child.attrib, child.text)
        for child2 in child:
            print('        ', child2.tag.split("}",1)[1], child2.attrib, child2.text)"""

