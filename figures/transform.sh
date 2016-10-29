rmtrash expansion-v* expansion-h*
find . -name '*svg' | xargs -I @ basename -s .svg @ | xargs -I @ convert @.svg @.png
mogrify -shave 10x10 -bordercolor black -border 10  *.png
convert pub-expansion*.png -append expansion-v.pdf
convert pub-expansion*.png +append expansion-h.pdf
convert pub-expansion*.png -append expansion-v.png
convert pub-expansion*.png +append expansion-h.png
