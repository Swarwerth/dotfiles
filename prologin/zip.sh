for d in */; do
    echo "$d"
    zip -r "${d::-1}".zip "$d"
done

mkdir output
mv *.zip output/
