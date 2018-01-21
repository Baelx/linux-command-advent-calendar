#!/bin/bash
# this script creates a post file for every day of the year, giving it a unique date in the title and some content to meet jekyll post format

for i in `seq 0 365`; # this loop is a simple sequence looping from 0 to 365
do
	touch $(date -d "+$i day" "+%Y-%m-%d"-"post.md"); # expands the date command into the title of each text file to meet jekyll post format
	echo -e "---\nlayout:post\ntitle:post\ndate:"$(date -d  "+$i day" "+%Y-%m-%d")"\n---\n\nThis is some sample content\n"
	>> $(date -d "+$i day" "+%Y-%m-%d"-"post.md"); # redirects echo into each post file in jekyll formatting
done
