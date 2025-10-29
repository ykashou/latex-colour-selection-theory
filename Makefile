.PHONY: all clean distclean

# Directory structure
SRC_DIR = src
BUILD_DIR = build

# Container settings
CONTAINER_ENGINE = podman
CONTAINER_IMAGE = docker.io/texlive/texlive:latest
WORKDIR = /workspace

# LaTeX settings
MAIN_FILE = colour_selection_theory
TEX_ENGINE = pdflatex
BIB_ENGINE = bibtex

# Build targets
all: $(BUILD_DIR)/$(MAIN_FILE).pdf

$(BUILD_DIR)/$(MAIN_FILE).pdf: $(SRC_DIR)/$(MAIN_FILE).tex $(SRC_DIR)/$(MAIN_FILE).bib
	@echo "Preparing build directory..."
	@mkdir -p $(BUILD_DIR)
	@cp $(SRC_DIR)/$(MAIN_FILE).tex $(BUILD_DIR)/
	@cp $(SRC_DIR)/$(MAIN_FILE).bib $(BUILD_DIR)/
	@echo "Building $(MAIN_FILE).pdf using Podman container..."
	$(CONTAINER_ENGINE) run --rm \
		-v $(CURDIR):$(WORKDIR):Z \
		-w $(WORKDIR)/$(BUILD_DIR) \
		$(CONTAINER_IMAGE) \
		bash -c "$(TEX_ENGINE) $(MAIN_FILE).tex && \
		         $(BIB_ENGINE) $(MAIN_FILE) && \
		         $(TEX_ENGINE) $(MAIN_FILE).tex && \
		         $(TEX_ENGINE) $(MAIN_FILE).tex"
	@echo "Build complete: $(BUILD_DIR)/$(MAIN_FILE).pdf"

clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)/*
	@echo "Clean complete"

distclean:
	@echo "Removing all build artifacts and outputs..."
	@rm -rf $(BUILD_DIR)
	@echo "Distclean complete"

# Help target
help:
	@echo "Available targets:"
	@echo "  all        - Build the PDF (default)"
	@echo "  clean      - Remove build artifacts"
	@echo "  distclean  - Remove build artifacts and PDF"
	@echo "  help       - Show this help message"
	@echo ""
	@echo "Requirements:"
	@echo "  - Podman >= 4.0"
	@echo "  - No local LaTeX installation needed"

