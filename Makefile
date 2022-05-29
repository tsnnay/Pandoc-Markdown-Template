download_csl:
	./build.sh download_csl
pdf:	
	./build.sh pdf
html:
	./build.sh html
docx:
	./build.sh docx
tex:
	./build.sh tex
all: pdf html docx tex