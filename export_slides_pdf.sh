# Run pdf convert
for f in *.ipynb; do 
    jupyter nbconvert --to slides $f
    jupyter nbconvert --to latex $f
    pdflatex "$(basename -- "$f" .ipynb).tex"
done 

mkdir -p documents
mv *pdf documents

rm *.log *.out *.tex *.aux 
rm -r *_files