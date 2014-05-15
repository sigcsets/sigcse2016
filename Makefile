local:
	jekyll serve -w --base /

remote:
	jekyll build --config _config.yml,_config_remote.yml
	rsync -vrz \
		-e "ssh -p 7822" _site/ \
		sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2015
