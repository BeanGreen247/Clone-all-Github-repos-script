#!/usr/bin/env bash
USER=${1?Error: no username given}
count=${2?Error: no count given}
echo "Cloning $count git(s) from $USER"
mkdir ~/Github-$USER;
cd ~/Github-$USER;
curl "https://api.github.com/users/$USER/repos?per_page=$count" | grep -o 'git@[^"]*' | xargs -L1 -P4 git clone
