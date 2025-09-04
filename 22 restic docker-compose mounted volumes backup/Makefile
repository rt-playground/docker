list-targets:
	@targets=$$(awk '/^[a-zA-Z0-9][^:]*:$$/ {print substr($$0, 1, length($$0)-1)}' $(MAKEFILE_LIST) | grep -v '^list-targets$$'); \
	if [ -z "$$targets" ]; then \
		echo "No other targets found."; \
	else \
		echo "$$targets"; \
	fi
.PHONY: list-targets

