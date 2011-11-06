.SUFFIXES: .js .coffee .scss .sass

.coffee.js:
	coffee -c $<

.scss.css:
	sass --update $<

script.js:

style.scss:
