# Ansible Playbook - local environment deployment [Ubuntu 20.04]


This Playbook Ansible deploys a custom environment based on Ubuntu and Gnome, enjoy :wink:

### Version Note [v1.2] [Stable]

#### Next features :

- [X] Launching script
- [X] SSH-Key file management
- [X] Temporary files management
- [ ] More explicit variables

# Description

To execute this project, you need the sudoer right.

This script will install my custom env, feel free to adapt it !

__You can edit the "variables.yml" file to remove or include software.__

### `Variables.yml` :
```
---

  devTools: ['gcc', 'build-essential', 'valgrind', 'libncurses5', 'curl', 'openssh-server', 'net-tools']
  userTools: ['zsh', 'terminator', 'tree', 'git', 'glances', 'conky-all', 'gnome-tweak-tool', 'gnome-shell-extension-gsconnect', 'gnome-shell-extension-gsconnect-browsers']
  userSoftware: ['glances', 'firefox', 'filezilla', 'lollypop', 'easytag', 'soundconverter', 'vlc', 'qbittorrent', 'gimp', 'onedrive', 'remmina']
  snap: ['discord', 'spotify', 'intellij-idea-ultimate', 'moonlight']
```

### `zshrc` :
```
export ZSH="/home/username/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lah'
alias off='xset dpms force off' #screen off

alias htop='glances'
alias onesync='onedrive --synchronize'
```
As you can see there is some alias, and yes, I use the software `glances` as `htop`.

# Usage

```
$> ./launch.sh -h
``` 
 
> If you want all the results of every command executed, use the "-v" option.

## Software List

   * Tools
       -
       - Terminator
       - ZSH
       - Conky
       - Gnome-Tweak-Tool
       - Net-tools
       - Glances

   * Software
       -
       - IDE
            * [IntelliJ IDEA](https://www.jetbrains.com/fr-fr/idea/)
       - User
            * Firefox
            * Filezilla
            * qBittorrent
            * Gimp
            * OneDrive
            * GSConnect
   * Multimedia
       - 
       - Music Software (wav / flac support)
            * [SoundConverter](https://doc.ubuntu-fr.org/soundconverter)
            * [EasyTag](https://doc.ubuntu-fr.org/easytag)
            * [Lollypop](https://doc.ubuntu-fr.org/lollypop)
       - Other
            * Discord
            * Spotify
            * VLC
            * Moonlight
            * Microsoft Teams

## Built With

* [Ansible](https://docs.ansible.com/ansible/latest/index.html)

## Author

* **Thibaut Choppy** - *Initial work* - [Linkedin](https://www.linkedin.com/in/thibaut-choppy/)