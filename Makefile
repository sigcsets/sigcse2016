BOOTSTRAP=bootstrap-3.2.0

local:
	jekyll serve -w --config _config.yml

remote:
	$(MAKE) -C _assets/${BOOTSTRAP}
	jekyll build --config _config.yml,_config_remote.yml
	./minify.bash
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2015

full:
	$(MAKE) -C _assets/${BOOTSTRAP}
	./minify.bash
		
fulllocal: full local