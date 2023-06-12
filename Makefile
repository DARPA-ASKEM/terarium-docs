SOURCE := ./src
SITE := ./_site

.PHONY: all
all:
	@echo "make <cmd>"
	@echo ""
	@echo "commands:"
	@echo "  build          - compile production documentation"
	@echo "  clean          - remove _site directory"
	@echo "  serve          - serve

.PHONY: clean
clean:
	@rm -rf $(SITE)

.PHONY: build
build: clean
	mkdocs build -d $(SITE)
