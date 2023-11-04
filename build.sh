sass --no-source-map --style=compressed styles/reneeverly.scss htdocs/reneeverly.css

python3.10 tumblelog.py --template-filename tumblelog-tags.html \
--output-dir htdocs/ \
--author 'Renee Waverly' --name "Renee's Tumblelog" --description 'music, retrocomputing, synthesizers, programming, and linguistics' \
--blog-url 'https://reneeverly.neocities.org/' --css reneeverly.css --tags \
tumblelog-tags.md

cp tumblelog-tags.md htdocs/.
