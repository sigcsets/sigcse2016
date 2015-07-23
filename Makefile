BOOTSTRAP=bootstrap-3.2.0

clean:
	rm -rf _site/

local:
	jekyll serve -w --config _config.yml

staging: buildstaging
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2016/.staging

remote: build
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2016

both: staging remote

img:
	./optimizepng.bash

mini:
	./minify.bash

build:
	jekyll build --config _config.yml,_config_remote.yml

buildstaging:
	jekyll build --config _config.yml,_config_staging.yml

site: build mini

boot:
	$(MAKE) -C _assets/${BOOTSTRAP}
