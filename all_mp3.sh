for file in *.mkv; do

 echo "--------------------------"
 bash ./mp3.sh    $file
 #bash ./mp3_2_wav $file
 echo "."
done
