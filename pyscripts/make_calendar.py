import glob
import json
import os

from acdh_tei_pyutils.tei import TeiReader

files = glob.glob("./data/editions/*xml")

out_dir = os.path.join("html", "js-data")
out_file = os.path.join(out_dir, "calendarData.json")
os.makedirs(out_dir, exist_ok=True)


data = []
for x in files:
    doc = TeiReader(x)
    link = os.path.split(x)[-1].replace(".xml", ".html")
    try:
        item = {
            "date": doc.any_xpath(".//tei:title[@type='date']")[0].text,
            "label": doc.any_xpath(".//tei:title[@level='a']")[0].text,
            "link": link,
            "kind": "Text",
            "country": doc.any_xpath(".//tei:title[@type='country']")[0].text,
        }
        data.append(item)
    except Exception as e:
        print(f"failed to process {x} due to {e}")

with open(out_file, "w", encoding="utf-8") as fp:
    json.dump(data, fp, ensure_ascii=False, indent=2)

print(f"saving calendar data as {out_file}")
