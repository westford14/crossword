#!/bin/bash
todaysFormattedDate=$(date '+%Y-%m-%d')
crosswordName="daily-$todaysFormattedDate.puz"
linkToCrossword="http://www.nytimes.com/svc/crosswords/v2/puzzle/$crosswordName"
username="jonathanfosdick91@gmail.com"
password="COaxing1"
authUrl="https://myaccount.nytimes.com/mobile/login/smart/index.html?EXIT_URI=http%3A%2F%2Fwww.nytimes.com%2Fcrosswords%2Findex.html%3Fpage%3Dhome&_r=0"
DIR="dailyCrosswords"

if [ ! -d "$DIR" ]; then
	mkdir $DIR
fi

#auth
curl -b cookies -c cookies --data "username=$username&password=$password&remember_me=1" $authUrl

#give it a sec
sleep 1

#get today's crossword using auth cookie
curl -b cookies -c cookies "$linkToCrossword" > "$DIR/$crosswordName"

