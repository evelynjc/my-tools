# my-tools

* Freezing apt packages installed
~~~
apt list --installed | sed s/Listing...// | awk -F"[[:blank:]/]" '{ if( $1 ne '' ) print $1"="$3}' >  $(date +aptlist-%m.%d.%Y-%H.%M.%S.txt)
~~~
