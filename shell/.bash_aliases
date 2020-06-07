# Config

alias hostfile="sudo nano /etc/hosts"
alias clshis="history -c && history -w"
alias obrc="sudo nano /home/$USER/.bashrc"
alias obrcf="sudo nano /home/$USER/.bash_functions"
alias obrca="sudo nano /home/$USER/.bash_aliases"

# PHP

alias pa="php artisan"
alias p="phpunit"
alias pf="phpunit --filter"
alias phpunit="vendor/bin/phpunit"
alias mfs='php artisan migrate:fresh --seed'

# Composer

alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias cda="composer dump-autoload -o"

# Git

alias gc="git checkout"
alias gpo="git push origin"
alias branch="git branch"
alias nah='git reset --hard;git clean -df'
alias gls="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Redis

alias flush-redis="redis-cli FLUSHALL"
