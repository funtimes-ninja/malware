#!/bin/bash



users=$1;
pass=$2;

if [ ! -f "$users" -o ! -f "$pass" ] ; then 
				echo "File not found";
				exit;
fi

rm -f pass_file
for m_user in $(cat $users) ; do 
				for m_pass in $(cat $pass) ; do 
								echo "$m_user $m_pass" >>pass_file
				done
done
