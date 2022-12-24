SRCS = $(sort $(wildcard content/*.md))
METADATA = metadata.yaml
CSS = epub.css

BOOK = book.epub

CC = pandoc
CFLAGS = --from=markdown --to=epub --toc --toc-depth=2

all: $(BOOK)

$(BOOK): $(METADATA) $(SRCS) $(CSS)
	$(CC) $(CFLAGS) --output=$(BOOK) $(METADATA) $(SRCS)

.PHONY: clean

clean:
	rm -f $(BOOK)

