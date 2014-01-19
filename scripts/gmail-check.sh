#! /bin/bash
wget -q -O - https://mail.google.com/a/gmail.com/feed/atom --http-user=kissavos@gmail.com --http-password='(sk8recht!M)' --no-check-certificate | grep fullcount | sed 's/<[^0-9]*>//g'

