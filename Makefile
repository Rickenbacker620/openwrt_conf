COMPONENTS := rpi mini extra docker

diffconfig: $(addprefix diffconfig., $(COMPONENTS))
	@cat $^ > ../.config
	@grep -qF "OpenClash" ../feeds.conf.default || \
	echo -e \
	"\nsrc-git openclash https://github.com/vernesong/OpenClash.git" \
	>> ../feeds.conf.default

