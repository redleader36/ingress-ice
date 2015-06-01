#!/bin/sh

# ingress-ice start script by Nikitakun (http://github.com/nibogd/ingress-ice)
#               SETTINGS          
L=''            #google login or email
P=''            #google password
AREA='https://www.ingress.com/intel?ll=41.582589,-93.614026&z=14' #link to your location
MINLEVEL='1'    #minimal portal level, set to 1 to display all available portals
MAXLEVEL='8'    #highest portal level, set to 8 to display all
V='150'          #Delay between capturing screenshots in seconds
WIDTH='1280'     #Picture width
HEIGHT='720'    #Picture height
FOLDER='./images/'     #Folder where to save screenshots with \ (or /) in the end. '.' means current folder. 
NUMBER='0'      #Number of screenshots to take. 0 for infinity.
LOGLEVEL='3'    #Log level. 0 = silence, 1 = only short welcome, two-factor code and errors, 2 = everything from 1 + every screenshot announced, 3 = beautiful welcome + everything from 2, 4 = all logs including debug messages, short welcome
#DO NOT EDIT ANYTHING BELOW THIS LINE
ARGS="$L $P $AREA $MINLEVEL $MAXLEVEL $V $WIDTH $HEIGHT $FOLDER $NUMBER $LOGLEVEL"
for arg
do
    if [ "$arg" = --help ]
    then
       echo "Please visit http://github.com/nibogd/ingress-ice for help"
    fi
done

exec phantomjs ice.js $ARGS
