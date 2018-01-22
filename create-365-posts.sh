#!/bin/bash
# this script creates a post file for every day of the year, giving it a unique date in the title, front matter, content

for i in `seq 1 365`; # this loop is a simple sequence looping from 0 to 365
do
	touch $(date -d "+$i day" "+%Y-%m-%d"-"newpost.md"); # expands the date command into the title of each text file to meet jekyll post format
	echo -e "---\nlayout: post\ntitle: \"newpost\"\ndate: "$(date -d  "+$i day" "+%Y-%m-%d %H:%M:%S %z")"\ncategories: linux\n---\n\nThis is some sample content\n" >> $(date -d "+$i day" "+%Y-%m-%d"-"newpost.md"); # redirects echo to make up yaml front matter
done
