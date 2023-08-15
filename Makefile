COMPONENTS := r2s mini extra docker

diffconfig: $(addprefix diffconfig., $(COMPONENTS))
	@cat $^ > ../.config
	@cp -TR files/ ../files/
	@grep -qF "OpenClash" ../feeds.conf.default || \
	echo \
	"\nsrc-git openclash https://github.com/vernesong/OpenClash.git" \
	>> ../feeds.conf.default

