.PHONY: clean all

all: out/cv-europass.pdf

out/cv-europass.pdf: cv/europass.latex cv.md
	mkdir -p out/
	pandoc cv.md --template=cv/europass.latex -s -o out/cv-europass.pdf
	

clean:
	rm -rf out/
