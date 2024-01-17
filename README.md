## About
The Script Generator Script will creat a personalized Script to Process all your AAX Files from Audible in a Folder with ffmpeg. 
 - This script will convert them to M4B Files.
 - It will keep the original Filename, Meta Data, Images and Chapters contained in the AAX File.
 - It will delete the AAX Files once processed.

## Requirements
This Script Requries FFMPEG, Git to be installed on your host.

##### The following only need to be done once to retrieve your activation_bytes if you don't have them:
This Script also requires your personal Activation Bytes to decript you Files. 

To retriev you activation Bytes you can use the Following repostiroy --> https://github.com/inAudible-NG/tables

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
## Alternatively you can create the final scirpt via copy paste from the "convert.sh" Script

Just creat a scirpt locally, copy paste the script and put in you activation_bytes.
Don't forget to make it executable.
