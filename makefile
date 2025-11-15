SRC_DIR = src
OUT_DIR = $(shell pwd)/out/$
PUML_FILES = $(patsubst $(SRC_DIR)/%, %, $(shell find $(SRC_DIR) -type f -name '*.puml'))

png: clean
	cd $(SRC_DIR) && plantuml --png --output-dir $(OUT_DIR) $(PUML_FILES)

svg: clean
	cd $(SRC_DIR) && plantuml --svg --output-dir $(OUT_DIR) $(PUML_FILES)

clean:
	rm -rf out/*

.PHONY: png svg clean
