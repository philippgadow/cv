# Makefile for LaTeX documents using xelatex

# Compiler
LATEX = xelatex

# Flags for xelatex
LATEX_FLAGS = -interaction=nonstopmode -shell-escape

# Source file
SRC = cv_gadow.tex

# Default rule
all: pdf

# Rule to build PDF
pdf:
	$(LATEX) $(LATEX_FLAGS) $(SRC)
	$(LATEX) $(LATEX_FLAGS) $(SRC)  # Run twice for proper references

# Rule to clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.xml

# Rule to clean up all generated files
cleanall:
	rm -f *.aux *.log *.out *.toc *.pdf *.bbl *.blg *.bcf *.xml

.PHONY: all pdf clean cleanall