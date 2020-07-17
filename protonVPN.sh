zenity --question --width 300 --text "Would you like to run the fastest server?"
echo $?
if ( test $? = 1 ); then
sudo protonvpn c -f
else
Response=$(zenity --entry --text "Input server id." --title "Server select" --entry-text="")
echo $Response
sudo protonvpn c $?
fi
fi