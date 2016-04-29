#!/bin/bash


OUTDIR=generated-corpus
docx2txt=/usr/local/bin/docx2txt.pl

[ -d $OUTDIR ] || mkdir $OUTDIR


locate .docx | grep -v /\\._ | while read docxfile ; do
	outfile=$OUTDIR/$(basename "$docxfile" .docx).txt
	echo "Processing $docxfile" 1>&2
	if ! $docx2txt < "$docxfile" > "$outfile" ; then
		echo "Failed on $docxfile" 1>&2
	fi
done
