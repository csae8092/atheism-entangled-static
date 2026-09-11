uv run add-attributes -g "data/meta/*.xml" -b "https://foo-bar-roo.com"
uv run add-attributes -g "data/editions/*.xml" -b "https://foo-bar-roo.com"
uv run add-attributes -g "data/indices/*.xml" -b "https://foo-bar-roo.com"

uv run denormalize-indices -f "./data/editions/*.xml" -i "./data/indices/*.xml"  -m ".//*[@ref]/@ref" -x ".//tei:title[@level='a']/text()"
uv run pyscripts/rm_notegroups.py
# uv run pyscripts/make_calendar.py