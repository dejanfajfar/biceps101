.DEFAULT_GOAL := start
BICEP_FILES := $(shell find . -name '*.bicep')
ARM_FILES := $(BICEP_FILES:.bicep=.json)

start:
	mdp presentation/presentation.md

%.json: %.bicep
	az bicep build --file $< --outfile $@

arm: $(ARM_FILES)

clean:
	rm -f $(ARM_FILES)