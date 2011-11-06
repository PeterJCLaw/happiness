.SUFFIXES: .js .coffee .scss .css

.coffee.js:
	coffee -c $<

.scss.css:
	sass --update $<

script.js:

style.css:
