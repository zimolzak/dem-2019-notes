PDFS = dem-conference-notes.pdf
.PHONY: all clean
all: $(PDFS)
%.pdf: %.txt
	pandoc -o $@ $<
clean:
	rm -f $(PDFS)
