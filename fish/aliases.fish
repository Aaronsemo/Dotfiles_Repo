switch (uname)
    case Linux
        if grep -q "opensuse" /etc/os-release
            alias up "zy dup;and zy up;and rup"
            alias zy "sudo zypper"
        else if grep -q "archlinux" /etc/os-release
            alias up "yaourt -Syyuua --devel --noconfirm; rup"
        end
    case Darwin
        alias up "brew update;and brew upgrade;and rup"
end

function c; clear; if test $TMUX; tmux clear-history; end; end
function mdc; mkdir -p $argv; and cd $argv; end
function gpl; for branch in (git branch -vv | grep ': gone]' | gawk '{print $1}'); git branch -D $branch; end; end
function grm; git push origin :$argv; and gpl; end
function kns; kubectl config set-context (kubectl config current-context) --namespace=$argv; end

alias ..... "cd ../../../../"
alias .... "cd ../../../"
alias ... "cd ../../"
alias .. "cd ../"
alias cat "bat"
alias d "dirs"
alias dockerclean "docker images -f=dangling=true -qa | xargs -r docker rmi -f"
alias dockerrma "docker rmi -f (docker images -q); docker rm (docker ps -a -q)"
alias duf "du -sh *"
alias f "fd"
alias ff "fd --type f"
alias g "git"
alias ga "git add"
alias gaa "git add -A"
alias gb "git branch"
alias gba "git branch -a"
alias gcl "git clone"
alias gcm "git checkout master"
alias gcmsg "git commit -sm"
alias gco "git checkout"
alias gd "git diff"
alias gdiff "git multidiff origin/master...(git rev-parse --abbrev-ref HEAD)"
alias gdifff "git diff --name-only origin/master...(git rev-parse --abbrev-ref HEAD)"
alias gl "git pull --prune;and gpl"
alias glg "git log --stat --max-count=10"
alias glgg "git log --graph --max-count=10"
alias glgga "git log --graph --decorate --all"
alias glo "git log --oneline --decorate --color"
alias glog "git log --oneline --decorate --color --graph"
alias glr "git pull --rebase"
alias gm "git merge"
alias gmb "git merge-base origin/master (git rev-parse --abbrev-ref HEAD)"
alias gmm "git merge origin/master"
alias gmn "git merge --no-ff"
alias gp "git push"
alias gr "git reset ."
alias grinse "git clean -xfd;and git submodule foreach --recursive git clean -xfd; and git reset --hard; git submodule foreach --recursive git reset --hard; and git submodule update --init --recursive"
alias grup "git remote update"
alias grv "git remote -v"
alias gsp "git stash pop"
alias gsq "git reset (gmb); gaa; git commit -s"
alias gss "git stash"
alias gst "git status"
alias gsta "git stash"
alias h "history"
alias hs "history --search"
alias iosc "osc --apiurl https://api.suse.de"
alias k "kill"
alias kk "kubectl config use-context"
alias ls "exa --git -bg"
alias la "ls -a"
alias l "ls -l"
alias ll "l -a"
alias lt "l -T"
alias llt "ll -T"
alias m "make"
alias mc "make clean"
alias md "mkdir -p"
alias mm "make -j32"
alias nowrap "cut -c-$COLUMNS"
alias p "pwd"
alias po "popd"
alias pu "pushd"
alias r "rm -rf"
alias rup "rustup update"
alias t "tail -f"
alias ta "tmux attach"
alias tg "cd ~; and tmux"
alias tl "tmux list-sessions"
alias ts "tmux new-session -s"
alias v "vim"
alias vr "ranger"
alias vv "vim -u NONE"
