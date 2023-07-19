COMPONENTS := r2s mini docker dev

diffconfig: $(addprefix diffconfig., $(COMPONENTS))
	@cat $^ > ../.config
	@cp -TR files/ ../files/

feeds:
	@cat feeds.conf.custom >> ../feeds.conf.default