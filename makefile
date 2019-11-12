FILES = Readme.pdf word_freq.txt
.PHONY: all clean
all: $(FILES)
%.pdf: %.md
	pandoc -o $@ $<
word_freq.txt: Readme.md split.py
	python split.py Readme.md | sort | uniq -c | sort -nr > $@
clean:
	rm -f $(FILES)
