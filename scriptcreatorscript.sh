#!/bin/bash

# Ask for script filename
echo -n "Enter the script filename (e.g., create_m4b_files.sh): "
read call_script

# Ask for activation bytes
echo -n "Enter activation_bytes: "
read activation_bytes

# Create a new script file
script_filename="$call_script"
touch "$script_filename"

# Write the script contents to the new file
echo "#!/bin/bash" >> "$script_filename"
echo "
for file in *.aax; do
  ffmpeg -activation_bytes \"$activation_bytes\" -i \"$file\" -c copy \"${file%.aax}.m4b\"
  rm \"$file\"
done" >> "$script_filename"

# Make the new script executable
chmod +x "$script_filename"

# Inform the user
echo "A new script named '$script_filename' has been created and made executable. You can now run it using the following command:"
echo "$call_script"
