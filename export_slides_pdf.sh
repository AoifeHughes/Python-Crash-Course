# Run pdf convert
cd lessons 
for f in *.ipynb; do 
    jupyter nbconvert --to slides $f
    jupyter nbconvert --to latex $f
    pdflatex "$(basename -- "$f" .ipynb).tex"
done 

mkdir -p ../documents
mv *pdf ../documents

mkdir -p ../slides
mv *html ../slides

rm *.log *.out *.tex *.aux 
rm -r *_files

cd .. 