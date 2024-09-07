for filename in $(find _site -name '*.html'); do
    if [ $filename != "_site/index.html" ];
    then
        original="$filename"

        # Get the filename without the path/extension
        # filename=$(basename "$filename")
        extension="${filename##*.}"
        filename="${filename%.*}"

        # Move it
        mv $original $filename
    fi
done