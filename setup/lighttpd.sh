#!/bin/bash

sudo apt-get install -y lighttpd
echo 'Edit /etc/lighttpd/lighttpd.conf'
echo '$HTTP["url"] =~ "\.git" {'
echo '  url.access-deny = ("")'
echo '}'
