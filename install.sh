printf '%s\n' 'This will overwrite your vimrc.'
printf '%s ' 'Press <Enter> to acknowledge and continue.'
read _
cp .vimrc ~/.vimrc
cp .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
printf '%s\n\n' 'Operation complete!'
printf '%s\n' 'Make sure to manually compile YCM if necessary.'
