.SUFFIXES: .js .coffee .scss .css
.PHONY: clean

.coffee.js:
	coffee -c $<

.scss.css:
	sass --update $<

# Grouped targets

all: script.js style.css

clean:
	-rm script.js style.css

# Individual files

script.js:

style.css:
