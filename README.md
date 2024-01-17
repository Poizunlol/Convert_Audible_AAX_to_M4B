## About
Script to Process all your AACX Files from Audible in a Folder. 
 - This script will convert them to M4B Files.
 - It will keep the original Filename, Meta Data, Images and Chapters contained in the AACX File.
 - It will delete the AACX Files once processed.

## Requirements
This Script Requries FFMPEG to be installed on your host.

##### The following only need to be done once:
This Script also requires your personal Activation Bytes to decript you Files. 

To retriev you activation Bytes you can use the Following repostiroy --> https://github.com/inAudible-NG/tables

I followed along the following Video -> https://www.youtube.com/watch?v=4bB6phEtDFI

## Usage on Linux

##### Create the Script File with the text editor of you choice:
```
vi conversion.sh
```
##### Copy the Script, change the activation_bytes "12345678" that you have extracted with "github.com/inAudible-NG/tables" : 
```
for file in *.aax; do
  ffmpeg -activation_bytes 12345678 -i "$file" -c copy "${file%.aax}.m4b"
  rm "$file"
done
```
##### Make script executable
```
chmod +x conversion.sh
```
##### Execute the script
```
./conversion.sh
```
