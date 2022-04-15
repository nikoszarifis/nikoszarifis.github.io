#!/bin/bash
bundle exec jekyll serve &
pid=$!
sleep 4
echo $pid
kill $pid
cp -av * ~/Dropbox/mysites/.
cp -av _site/* ../mysite2/.
cd ..
cd mysite2
git add *
git commit -m "new commit"
git push
