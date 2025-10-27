from pathlib import Path
import xml.etree.ElementTree as ET

folder = Path("../texts/xml")
count = 0

for xml in folder.glob("*.xml"):
    tree = ET.parse(xml)
    text = tree.getroot()
    count += len(text.findall(".//{urn:taidh:cun/}w"))

print('The corpus currently contains', count, 'words.')




