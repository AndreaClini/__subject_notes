FIGURES := torus_foliation connection_exponential_diagram hodge_spectrum_symmetries \
	torsion_parallelogram curvature_parallelogram seismic_waves calabi_yau_artwork
PDFS := $(addprefix ../images/,$(addsuffix .pdf,$(FIGURES)))

.PHONY: all clean

all: $(PDFS)

../images/%.pdf: %.tex
	pdflatex -halt-on-error -interaction=batchmode -output-directory=../images $<

clean:
	$(RM) $(addprefix ../images/,$(addsuffix .aux,$(FIGURES)))
	$(RM) $(addprefix ../images/,$(addsuffix .log,$(FIGURES)))
