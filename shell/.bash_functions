# Gets weather of the city you enter

function weather() {
   city="$1"

   if [ -z "$city" ]; then
      city="Vadodara"
   fi

   eval "curl http://wttr.in/${city}"
}

# Scrape a single webpage with all assets

function scrapeUrl() {
   wget --adjust-extension --convert-links --page-requisites --span-hosts --no-host-directories "$1"
}


# Start a PHP server from a directory, optionally specifying the port
# (Requires PHP 5.4.0+.)

function phpserver() {
   local port="${1:-4000}"
   local ip="localhost"
   sleep 2 && xdg-open "http://${ip}:${port}/" &
   php -S "${ip}:${port}"
}

#  Commit everything

function commit() {
  commitMessage="$1"

  if [ "$commitMessage" = "" ]; then
     commitMessage="wip"
  fi

  git add .
  eval "git commit -a -m '${commitMessage}'"
}

# Database

function db {
   if [ "$1" = "refresh" ]; then
       mysql -uroot -e "drop database $2; create database $2"
   elif [ "$1" = "create" ]; then
       mysql -uroot -e "create database $2"
   elif [ "$1" = "drop" ]; then
       mysql -uroot -e "drop database $2"
   fi
}

# Create a new directory and enter it

function mkd() {
   mkdir -p "$@" && cd "$@"
}
