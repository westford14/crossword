#!/bin/bash
FORMATTEDDATE=$(date '+%Y-%m-%d')
URL="http://www.nytimes.com/svc/crosswords/v2/puzzle/daily-$FORMATTEDDATE.puz"
USERNAME="jonathanfosdick91@gmail.com"
PASSWORD="COaxing1"
AUTHURL="https://myaccount.nytimes.com/mobile/login/smart/index.html?EXIT_URI=http%3A%2F%2Fwww.nytimes.com%2Fcrosswords%2Findex.html%3Fpage%3Dhome&_r=0"
OUTPUTFILE="tmp/daily.puz"

mkdir tmp

#auth
curl -b cookies -c cookies --data "username=$USERNAME&password=$PASSWORD&remember_me=1" $AUTHURL

#give it a sec
sleep 5

#get today's crossword using auth cookie
curl -b cookies -c cookies "$URL" > "$OUTPUTFILE"
