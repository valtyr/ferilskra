#! /bin/bash
mkdir /build
cp cv.css /build
python3 timerange_filter.py < ferilskra.md | pandoc -s -c cv.css -t html --template template.html -o /build/index.html
