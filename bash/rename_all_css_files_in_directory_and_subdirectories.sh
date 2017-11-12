FILES=$(find assets  -type f -name '*-v2.2.0.css')

for file in $FILES 
do 
	NAME=`echo ${file##*/}`

	echo $NAME	

	DPATH=`echo ${file%-*}`
	XPATH=`echo "$DPATH.css"`

echo $XPATH
echo $file

	mv "$file" "$XPATH" 
done
