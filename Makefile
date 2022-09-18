.PHONY: minify build

IMG=$(wildcard static/orig/*.jpg)
IMG-MIN=$(IMG:static/orig/%.jpg=static/min/%.jpg)

minify: $(IMG-MIN)

static/min/%.jpg: static/orig/%.jpg
	mkdir -p $(@D)
	convert $< -colorspace Gray -colorize 33,0,13 -quality 30% $@

build: minify
	hugo -s ./
