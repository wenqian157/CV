.PHONY: clean all

all: out/cv-europass.pdf out/cv.pdf

out/cv-europass.pdf: cv/europass.latex cv.md
	mkdir -p out/
	pandoc cv.md --template=cv/europass.latex -s -o out/cv-europass.pdf

out/cv.pdf: cv/cv.latex cv.md
	mkdir -p out/
	pandoc cv.md --template=cv/cv.latex -s -o out/cv.pdf

clean:
	rm -rf out/
