for file in *.aax; do
  ffmpeg -activation_bytes 12345678 -i "$file" -c copy "${file%.aax}.m4b"
  rm "$file"
done
