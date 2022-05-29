#!/bin/bash

SOURCEDIR="src"
BUILDIR="build"
STYLEDIR="style"
TEMPLATEDIR="template"
CSLDIR="style/csl"
BIBDIR="src/ref"
BUILDDIR="build"

download_csl() {
    mkdir "${CSLDIR}" -p
    wget -O "${CSLDIR}/citation-style.csl" \
        "https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl"
}
pdf() {
    mkdir "${BUILDDIR}/pdf" -p
    echo "Creating pdf-print output"
    pandoc "${SOURCEDIR}"/*.md \
        --resource-path="${SOURCEDIR}" \
        --filter=pandoc-crossref \
        --filter=pandoc-shortcaption \
        --citeproc \
        --csl="${CSLDIR}/citation-style.csl" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars+raw_tex" \
        --to="latex" \
        --output="${BUILDDIR}/pdf/output_print.pdf" \
        --variable=fontsize:12pt \
		--variable=papersize:a4paper \
		--variable=documentclass:report \
        --pdf-engine="xelatex" \
        --number-sections \
        --verbose \
        2>pandoc.pdf.log
}

html() {
    mkdir "${BUILDDIR}/html" -p
    echo "Creating html-print output"
    pandoc "${SOURCEDIR}"/*.md \
        --resource-path="${SOURCEDIR}" \
        --filter=pandoc-crossref \
        --citeproc \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="html5" \
        --csl="${CSLDIR}/citation-style.csl" \
        --output="${BUILDDIR}/html/output.html" \
        --mathjax \
        --number-sections \
        --standalone \
        --verbose \
        2>pandoc.html.log
    rm -rf "${BUILDDIR}/html/img"
    mkdir "${BUILDDIR}/html/img"
    cp -r "${SOURCEDIR}/img" "${BUILDDIR}/html/"
}

docx() {
    mkdir "${BUILDDIR}/docx" -p
    echo "Creating docx output"
    pandoc "${SOURCEDIR}"/*.md \
        --resource-path="${SOURCEDIR}" \
        --filter=pandoc-crossref \
        --citeproc \
        --csl="${CSLDIR}/citation-style.csl" \
        --output="${BUILDDIR}/docx/output.docx" \
        --number-sections \
        --verbose \
        2>pandoc.docx.log
}


# Allows to call a function based on arguments passed to the script
# Example: `./build.sh pdf_print`
$*