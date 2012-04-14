bootstrap:
	mkdir -p css
	lessc --compress ./less/custom.less > css/custom.css

watch:
	echo "Watching less files..."; \
	watchr -e "watch('less/.*\.less') { system 'make' }"
