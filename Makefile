BOOTSTRAP=bootstrap-3.2.0
local:
	$(MAKE) -C _assets/${BOOTSTRAP}
	jekyll serve -w --config _config.yml

remote:
	$(MAKE) _assets/${BOOTSTRAP}
	jekyll build --config _config.yml,_config_remote.yml
	./minify.bash
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2015
