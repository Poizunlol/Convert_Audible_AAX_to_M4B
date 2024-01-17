## About
The Script Generator Script will create a personalized Script to Process all your AAX Files from Audible in a Folder with ffmpeg. 
 - This script will convert them to M4B Files.
 - It will keep the original Filename, Meta Data, Images and Chapters contained in the AAX File.
 - It will delete the AAX Files once processed.

## Requirements
This Script Requires FFMPEG to be installed on your host.

To clone the repositroy you need GIT. 

Alternatively do the manual Script setup below!

##### The following only needs to be done once to retrieve your activation_bytes if you don't have them:

This Script also requires your personal Activation Bytes to decrypt you Files. 

To retrieve you activation Bytes you can use the Following repository --> https://github.com/inAudible-NG/tables

##### Optional
I followed along the following Video -> https://www.youtube.com/watch?v=4bB6phEtDFI

## Usage on Linux

##### Clone the Repository

```
git clone https://github.com/Poizunlol/Convert_Audible_AAX_to_M4B
```

#### Go to Folder "Convert_Audible_AAX_to_M4B"

```
cd Convert_Audible_AAX_to_M4B/
```

#### Make Script Executable

```
chmod +x scriptcreatorscript.sh
```

#### Execute Script

```
.scriptcreatorscript.sh
```

#### Move the finished Script to the location of aax Files

```
mv yourscriptname.sh /your/path/to/the/files
```

## Alternatively you can create the final script via copy paste from the "convert.sh" Script

#### Just create a script locally, copy paste the script and put in you activation_bytes:

```
for file in *.aax; do
  ffmpeg -activation_bytes 12345678 -i "$file" -c copy "${file%.aax}.m4b"
  rm "$file"
done
```

#### Don't forget to make it executable:

```
chmod +x yourscript.sh
```

#### Execute Script

```
.yourscript.sh
```
