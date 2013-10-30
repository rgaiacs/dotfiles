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

cat ${FILE} | msmtp -a $2 $1
