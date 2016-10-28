rmtrash expansion-v* expansion-h*
find . -name '*svg' | xargs -I @ basename -s .svg @ | xargs -I @ convert @.svg @.png
mogrify -shave 10x10 -bordercolor black -border 10  *.png
convert *.png -append expansion-v.pdf
convert *.png -append expansion-h.pdf
convert *.png +append expansion-h.png
convert *.png +append expansion-v.png
