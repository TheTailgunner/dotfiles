xrdb -merge ~/.Xresources
conky -b --daemonize
setxkbmap -model pc105 -layout us,ru -option grp:lctrl_lshift_toggle
ssh-agent &
exec jwm 
