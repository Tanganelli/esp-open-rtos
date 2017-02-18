# Component makefile for extras/er-coap

# expected anyone using er-coap includes it as 'er-coap/rest-engine.h'
ERCOAP_DIR = $(er-coap_ROOT)er-coap/
INC_DIRS += $(er-coap_ROOT)er-coap/..

# args for passing into compile rule generation
er-coap_SRC_DIR = $(er-coap_ROOT)er-coap/
er-coap_CFLAGS = $(CFLAGS) -DREST=coap_rest_implementation
$(eval $(call component_compile_rules,er-coap))
# Helpful error if git submodule not initialised
$(ERCOAP_DIR):
	$(error "er-coap git submodule not installed. Please run 'git submodule update --init'")

