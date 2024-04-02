set content "+++
title = \"$argv\"
template = \"404.html\"
+++"
set nowdate "$(date +%Y-%m-%d-%H%M%S)"
set name "$nowdate.md"
cd /Users/criphc/Sites/drifting/content/micro/
echo $content > $name

git checkout dev
git add .
git commit --message "new micro post" .
git push
git checkout main
