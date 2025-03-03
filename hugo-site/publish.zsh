#!/bin/zsh

set -e
set -x

rm -rf public/* || echo ''
sudo chown -R david:users .
git add -f .
git commit -m "Latest hugo modification"
hugo --gc
hugo
git add -f .
git commit -m "Latest hugo publish"
git push origin main
cd ~/.hqconfig/swag-deploy/hugo-davidcraddockaudio-blog
./deploy-davidcraddockaudio-hugo.sh

