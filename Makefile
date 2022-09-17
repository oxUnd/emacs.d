.PHONY: all
all:
	echo "Nothing..."


.PHONY: clean
clean:
	find ./boot ./plug ./settings -name '*.elc' | xargs rm



