for file in *.mp3; do

 echo "--------------------------"
 bash ./mp3_2_wav.sh    $file
 #bash ./mp3_2_wav $file
 echo "."
done
