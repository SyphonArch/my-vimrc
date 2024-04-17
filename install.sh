printf '%s\n' 'This will overwrite your vimrc.'
printf '%s\n\n' 'Changes are as follows:'

diff ~/.vimrc ./vimrc --color

printf '\n%s ' 'Press <Enter> to acknowledge and continue.'
read _
cp ./vimrc ~/.vimrc

mkdir ~/.vim -p
cp ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

printf '%s\n\n' 'Operation complete!'
printf '%s\n' 'Make sure to manually compile YCM if necessary.'
