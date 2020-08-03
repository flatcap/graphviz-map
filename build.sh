#!/bin/bash

NAME="example"

dot -Tcmapx -o "$NAME.map" -Tsvg -o "$NAME.svg" "$NAME.gv"

(
	echo "<img src='$NAME.svg' usemap='#$NAME' />"
	cat "$NAME.map"
) > "$NAME.html"

python3 -m http.server

