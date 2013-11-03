#!/bin/bash

while getopts g:m:v:h name
do
    case $name in
        (g)
            SMAILLIST=${2/@/+subscribe@}
            ;;
        (m)
            SMAILLIST=${2/@/-join@}
            ;;
        (v)
            MSMTPOPTIONS=-v
            ;;
        (h|?)
            echo 'Usage: mail-list-subscribe.sh [-g|-m] [-v] MAILLIST YOURMAIL'
            echo 'This is a script to subscribe in YOURMAIL into MAILLIST.'
            echo ''
            echo '  -g Google Groups mail list'
            echo '  -m GNU Mailman mail list'
            echo '  -v Enable msmtp debugging mode. Be careful.'
            exit 2;;
    esac
done

if $(test -z ${SMAILLIST})
then
    MAILLIST=$1
    SMAILLIST=$1
    YOURMAIL=$2
else
    MAILLIST=$2
    YOURMAIL=$3
fi

# create temporary file
FILE=$(mktemp -p /tmp/);

# write mail
echo "To: ${SMAILLIST}" >> ${FILE}
echo "From: ${YOURMAIL}" >> ${FILE}
echo "Subject: " >> ${FILE}

# send email
cat ${FILE} | msmtp ${MSMTPOPTIONS} -f ${YOURMAIL} ${SMAILLIST}

# add address to mutt configuration file
echo "alias ${MAILLIST}" >> ~/.mutt/mail-list-alias
echo "subscribe ${MAILLIST}" >> ~/.mutt/mail-list-address
