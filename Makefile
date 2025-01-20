main.pdf: main.tex
	xelatex --shell-escape main.tex -interaction batchmode

open: clean main.pdf
	open main.pdf

clean:
	find . -type f \( -name "*.pdf" -or -name "*.aux" -or -name "*.aux" -or -name "*.log" \) | xargs -I'{}' rm -f '{}'
