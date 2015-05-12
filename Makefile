BOOTSTRAP=bootstrap-3.2.0

clean:
	rm -rf _site/

local:
	jekyll serve -w --config _config.yml

remote: boot build mini 
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2016

img:
	./optimizepng.bash

mini:
	./minify.bash

build:
	jekyll build --config _config.yml,_config_remote.yml

site: build mini
	
boot: 
	$(MAKE) -C _assets/${BOOTSTRAP}
