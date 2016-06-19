#!/usr/bin/env bash

# Quick oneliner to print the director of a given movie using an unofficial IMDB API.
# It can be easily integrated to print the directors for a list of movies
#
# Usage example:
#   $ ./get_director "andrei rublev"
#   Andrei Tarkovski

curl -Gs "http://www.omdbapi.com/" --data-urlencode "t=$1"| grep -Po '"Director":.*?[^\\]",' | awk -F'"' '$0=$4'  
