all: epub html pdf

epub:
	# Generate EPUB document
	Rscript -e "bookdown::render_book('Preparation.md', 'bookdown::epub_book')"

html:
	# Generate (GitBook) HTML document
	Rscript -e "bookdown::render_book('Preparation.md', 'bookdown::gitbook')"
	# Rename main HTML file for GitHub pages
	Rscript -e "file.rename('Bookdown/Testing.html', 'Bookdown/index.html')"

pdf:
	# Generate PDF
	Rscript -e "bookdown::render_book('Preparation.md', 'bookdown::pdf_book')"

clean:
	rm -rf Bookdown
