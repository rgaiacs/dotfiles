alias R="R --no-save"
alias calibreupgrade="sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python2 -c \"import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()\""
alias flatfishbuild="GAIA_DEVICE_TYPE=tablet DEVICE_DEBUG=1 REMOTE_DEBUGGER=1 GAIA_OPTIMIZE=1 NOFTU=1 NO_LOCK_SCREEN=1 PRODUCTION=1 make reset-gaia"
alias g="git"
alias grep="grep --color"
alias https2git="sed -i 's/https:\/\/github\.com\//git@github.com:/' .git/config"
alias info='info'
alias ls='ls --classify --color=auto'
alias mount="mount -o uid=raniere"
alias qemu32='qemu-system-i386 -enable-kvm -m 1G'
alias qemu64='qemu-system-x86_64 -enable-kvm -m 1G'
alias t="task"
alias tinkercat="grep -hr '.. categories::' 201{3,4} | sed -e 's/.. categories:: //' -e 's/,/\n/g' | sort | uniq"
alias tinkertag="grep -hr '.. tags::' 201{3,4} | sed -e 's/.. tags:: //' -e 's/,/\n/g' | sort | uniq"
alias xclipb="xclip -selection XA_CLIPBOARD"
alias youtube-dl="youtube-dl --restrict-filenames --ignore-errors"
alias zathura="zathura --fork"
