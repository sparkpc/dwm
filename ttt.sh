#cat /usr/share/dict/american-english | shuf -n 5 | tr '\n' ' ' | awk '{print "Terry Says: " $0}'
while :
do
	tr -dc 'a-z' </dev/urandom | head -c $(shuf -i1-10 -n1) | grep - /usr/share/dict/american-english
done
