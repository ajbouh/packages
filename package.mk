pkg: clean
	guild package

clean:
	rm -rf dist build *.egg-info

upload:
	export TWINE_USERNAME=guildai; \
	export TWINE_PASSWORD=`gpg --quiet --batch -d $(root)/.pypi-creds.gpg`; \
	guild package --upload --skip-existing
