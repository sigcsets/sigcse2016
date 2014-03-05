error:
	jekyll build --config _config.yml,_config_local.yml

local:
	jekyll serve -w --config _config.yml,_config_local.yml

remote:
	jekyll build --config _config.yml,_config_remote.yml
	rsync -vrz \
		-e ssh _site/ \
		THISWILLERROR@berea.mobi:~/berea.mobi/courses/appsforapp-sp14/
