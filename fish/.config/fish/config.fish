fish_add_path -aP ~/.local/bin
fish_add_path -aP ~/.local/scripts
fish_add_path -aP ~/.cargo/bin
fish_add_path -aP ~/.local/share/gem/ruby/3.0.0/bin

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GEM_HOME="$HOME/.local/share/gem"

function ssh-auth --description "Authenticate SSH"
    eval $(ssh-agent -c) && ssh-add
end

alias yt2opus="yt-dlp --extract-audio --audio-quality 0 --audio-format opus --embed-thumbnail --embed-metadata"
alias sshfs="command sshfs -o Compression=yes -o ServerAliveCountMax=3 -o ServerAliveInterval=15 -o reconnect"

starship init fish | source