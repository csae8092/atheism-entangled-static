import glob
import json
import os

from acdh_tei_pyutils.tei import TeiReader
from acdh_tei_pyutils.utils import any_xpath, check_for_hash, get_xmlid
from config import HTML_DATA_DIR

os.makedirs(HTML_DATA_DIR, exist_ok=True)
out_file = os.path.join(HTML_DATA_DIR, "network.json")

# shape_example = https://github.com/jacomyal/sigma.js/blob/main/packages/storybook/stories/_data/data.json
files = sorted(glob.glob("./data/editions/*.xml"))
graph = {}
nodes = []
edges = []
check_duplicates = ()
years = set()
for x in files:
    doc = TeiReader(x)
    bibl_id = os.path.split(x)[1]
    bibl_label = doc.any_xpath(".//tei:title[@level='a']")[0].text
    nodes.append({"id": bibl_id, "label": bibl_label, "type": "text"})

    # years
    for y in doc.any_xpath(".//tei:title[@type='date']"):
        if y in years:
            pass
        else:
            nodes.append({"id": y.text, "label": y.text, "type": "year"})
            edges.append((bibl_id, y.text))

    # persons:
    for y in doc.any_xpath(".//tei:back//tei:person[@xml:id]"):
        item_id = get_xmlid(y)
        if item_id not in check_duplicates:
            label = any_xpath(y, "./tei:persName")[0].text
            nodes.append({"id": item_id, "label": label, "type": "person"})
            edges.append((bibl_id, item_id))

    # places:
    for y in doc.any_xpath(".//tei:back//tei:place[@xml:id]"):
        item_id = get_xmlid(y)
        if item_id not in check_duplicates:
            label = any_xpath(y, "./tei:placeName")[0].text
            nodes.append({"id": item_id, "label": label, "type": "place"})
            edges.append((bibl_id, item_id))

    # keywords:
    for y in doc.any_xpath(".//tei:body//tei:rs[@ref]/@ref"):
        item_id = check_for_hash(y)
        if item_id not in check_duplicates:
            nodes.append({"id": item_id, "label": item_id, "type": "keyword"})
            edges.append((bibl_id, item_id))

graph["nodes"] = nodes
graph["edges"] = edges

# print(graph)
print(out_file)

with open(out_file, "w", encoding="utf-8") as fp:
    json.dump(graph, fp, ensure_ascii=False, indent=2)
