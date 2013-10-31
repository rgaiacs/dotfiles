#!/bin/bash

# This is a script to subscribe in a mail-list.
#
#     $ mail-list-subscribe.sh mail-list your-mail

# create temporary file
FILE=$(mktemp -p /tmp/);

# write mail
echo "To: $1" >> ${FILE}
echo "From: $2" >> ${FILE}
echo "Subject: " >> ${FILE}

# send email
cat ${FILE} | msmtp -a $2 $1

# add address to mutt configuration file
echo "alias $1" >> ~/.mutt/mail-list-alias
echo "subscribe $1" >> ~/.mutt/mail-list-address
