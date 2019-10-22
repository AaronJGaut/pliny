LOCAL_INSTALL_PATH = $(HOME)/.local/bin
BIN_NAME = pliny

default:
	@echo "No default target. Use make install_local to install to $(LOCAL_INSTALL_PATH)"
	@exit 2
.PHONY: default

install_local: $(LOCAL_INSTALL_PATH)/$(BIN_NAME)
.PHONY: install_local

$(LOCAL_INSTALL_PATH)/$(BIN_NAME) : $(BIN_NAME) | $(LOCAL_INSTALL_PATH)
	cp $< $@

$(LOCAL_INSTALL_PATH):
	mkdir -p $@

$(BIN_NAME):
	$(error missing file "$@")
