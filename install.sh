printf '%s\n' 'This will overwrite your vimrc.'
printf '%s ' 'Press <Enter> to acknowledge and continue.'
read _
cp .vimrc ~/.vimrc
printf '%s\n' 'Operation complete!'