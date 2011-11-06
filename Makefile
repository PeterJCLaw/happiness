.SUFFIXES: .js .coffee .scss .css

.coffee.js:
	coffee -c $<

.scss.css:
	sass --update $<

all: script.js style.css

script.js:

style.css:
