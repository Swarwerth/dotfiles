#!/bin/sh

DIR="source"
RESULT="result_pdfs"

mkdir -p $RESULT

for file in "$DIR"/*.pdf; do
    # Extraire le nom du fichier sans extension et du chemin
    filename=$(basename "$file" .pdf)
    # Extraire les numéros de pages à partir du nom du fichier
    page1=$(echo $filename | cut -d "-" -f2)
    page2=$(echo $filename | cut -d "-" -f3)

    # Vérifier que les numéros de pages sont valides
    if [ -z "$page1" ] || [ -z "$page2" ]; then
        echo "Invalid page numbers in filename: $filename"
        continue
    fi

    pdftk "$file" cat $page1-$page2 output "$RESULT/${filename}-urgence.pdf"
    echo "$RESULT/${filename}-urgence.pdf"
done

if [ $(ls $DIR | wc -l) -ne $(ls $RESULT | wc -l) ]; then
    echo "Not the same number of pdfs in source and result dir"
    exit 1
fi

pdftk "$RESULT"/*.pdf cat output all_urgences.pdf
