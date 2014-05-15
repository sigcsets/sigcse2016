error:
	jekyll build --base /

local:
	jekyll serve -w --base /

remote:
	jekyll build --base /
	rsync -vrz \
		-e ssh _site/ \
		THISWILLERROR@berea.mobi:~/berea.mobi/courses/appsforapp-sp14/
