all: site css

site: hakyll
	./hakyll build
	cp _site/* .

css: css/custom.css

css/custom.css: less/*
	lessc --compress less/custom.less > $@

hakyll: hakyll.hs
	ghc --make $^
	rm hakyll.o hakyll.hi

watch: all
	watchr -e "watch('.*\.markdown') {system 'make'}; watch('template/.*\.html') {system 'make'}; watch('less/.*\.less') {system 'make'}; watch('.*\.hs') {system 'make'}"

clean:
	-rm hakyll
	-rm -r _cache
	-rm -r _site
