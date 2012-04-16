all: hakyll
	./hakyll build
	cp _site/* .

hakyll: hakyll.hs
	ghc --make $^
	rm hakyll.o hakyll.hi

watch:
	watchr -e "watch('.*\.markdown') { system 'make' }"

clean:
	-rm hakyll
	-rm -r _cache
	-rm -r _site
