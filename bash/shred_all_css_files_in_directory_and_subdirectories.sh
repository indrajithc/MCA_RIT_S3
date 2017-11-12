if [ "$(id -u)" != "0" ]; then


find -name "* *" -print0 | sort -rz | \
  while read -d $'\0' f; do 
mv -v "$f" "$(dirname "$f")/$(basename "${f// /_}")"; 
done
 


	FILES=$(find $PWD  -type f)
	ME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	for file in $FILES 
	do  

			NAME=`echo ${file##*/}`
				if [ "${NAME}" != "${ME}" ]; then 
					echo ">> $file <<" 
			    		sudo shred -vuz $file
				fi 
		 
	done
fi

 
 
