#!/usr/bin/env bash

# Delete old public directory
rm -rf public

# Generate the new page
hugo

# scp the generated data to server
scp -r public root@172.104.219.116:blog_stuff
