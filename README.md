# my-tools

* Freezing all apt packages installed
~~~
apt list --installed | sed s/Listing...// | awk -F"[[:blank:]/]" '{ if( $1 ne '' ) print $1"="$3}' >  $(date +aptlist-%m.%d.%Y-%H.%M.%S.txt)
~~~

* Freezing maually installed apt packages (not apt-get)
~~~
zcat /var/log/apt/history.log.*.gz | cat - /var/log/apt/history.log | grep -Po '^Commandline: apt install (?!.*--reinstall)\K.*' > $(date +aptlist-%m.%d.%Y-%H.%M.%S.txt)
~~~

* Set Linux-like alias on CMD
~~~
doskey TO_THIS = FROM_THIS_CMD_COMMAND
~~~
