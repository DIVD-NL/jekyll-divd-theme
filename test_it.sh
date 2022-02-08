#!/bin/bash

docker pull mrseccubus/github-pages:latest
docker run --volume="$PWD:/root/project:delegated" --entrypoint /bin/bash -ti mrseccubus/github-pages \
-c "
	if [[ -e Gemfile ]]; then
		echo \"*** Installing Gems in Gemfile ***\"
		bundle install 
		EXEC=\"bundle exec\"
	fi

	cd /root/project/;
	rm -rf _site/* jekyll-build.log;
	$EXEC jekyll build  --future 2>&1 | tee jekyll-build.log
	./proof_html.sh
"