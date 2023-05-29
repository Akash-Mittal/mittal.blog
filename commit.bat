git pull
git fetch
@echo off
setlocal

set GITHUB_USERNAME=Akash-Mittal
set GITHUB_TOKEN=%GITHUB_TOKEN%
set GITHUB_REPO=mittal.blog

git pull https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%GITHUB_REPO%.git
git fetch https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%GITHUB_REPO%.git

git add *.bat
git add ./*.html
git add ./*.css
git add ./*/*.jpeg
git add ./*/*/*.*
git add ./*/*/*/*.*

git commit -m "Added new HTML files"
git push https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%GITHUB_REPO%.git
endlocal

