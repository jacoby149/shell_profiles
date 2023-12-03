# shell file that links config folder files
# to a local config folder.
# that way, they don't get messed up by dropbox.
# lets give it a shot!
# Read the input file line by line

mkdir_if_absent(){
  if test -d $1; then
    echo "$1 exists!"
  else
    echo "$1 doesn't exit. creating..."
    mkdir $1
  fi
}

#!/bin/bash
sync_config_local(){
  mkdir_if_absent ~/.local_config/;

  INFILE=~/.config/local_config/files.txt
  # Read the input file line by line
  while read -r LINE
  do
      mkdir_if_absent ~/.local_config/$LINE/
      printf '%s\n' "Relinking $LINE"
      printf '%s\n' "~/.config/$LINE -> ~/.local_config/$LINE"
      rm -r ~/.config/$LINE; ln -sf ~/.local_config/$LINE ~/.config/$LINE
  #
  done < "$INFILE"
}

sync_config_local

######### DOWN THE LINE #########
# I want to do this...
#     - add ~/.config/.config_local/location.txt
#     - add ~/.config/.config_local/default_files.txt
#     - add ~/.config/.config_local/files.txt
#     - add ~/.config/.config_local/files_example.txt
#     - set to ~/.config_local/BraveSoftware.
#     - write shell_profiles/config_local.sh
#     - make a sync function that redoes all the links..
#     - add this to sync_config command
#     - add this to my shell profiles readme.
