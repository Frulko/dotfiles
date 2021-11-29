#!/bin/bash
file="./.scp-sync-exclude"
EXCLUDES=""
while IFS= read -r line
do
        # display $line or do somthing with $line
	
  EXCLUDES+=" --exclude='$line'"

done <"$file"
EXCLUDES+=" --exclude='$file'"

#eval "tar $EXCLUDES -zcvf myarchive.tar.gz ."

backupdir="/Users/mowmow/macbook-13-2020_11_11"

fileb="./to_backup"
while IFS= read -r path
do
        # display $line or do somthing with $line
  eval "rsync -auvhp --delete --progress $EXCLUDES '$path' '$backupdir'"


done <"$fileb"


#iCloud Drive (Archive)

#.ssh
#.config
#.oh-my-zsh
#.sshBack
#.tldrc
#.vim_runtime
#.vimrc
#.zsh
#.zsh_history
#.zshrc

# echo $ARGS