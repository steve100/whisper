#./whisper.cpp/build/bin/main -m models/ggml-base.bin -f $
#
#
#
p=`pwd`
cd whisper.cpp
# transcribe an audio file

#ls $p/*wav
#ls samples/*


#/build/bin/whisper-cli -f samples/jfk.wav

#my file with timestamps
#./build/bin/whisper-cli -f $p/2025-05-16_12-01-11.wav

#broken
#./build/bin/whisper-cli --language English --output_dir $p  --output_format txt    $p/2025-05-16_12-01-11.wav


#./build/bin/whisper-cli  --threads 8    $p/2025-05-16_12-01-11.wav
#

# high def
#low def

#@./build/bin/whisper-cli  --threads 8    $p/$1

# will want to change to be more general
echo "input:  $p/$1"
echo "output: $p/$1.txt"
echo "sleep 5 seconds"
sleep 5

./build/bin/whisper-cli --threads 8  -m ~/whisper/whisper.cpp/models/ggml-large-v2.bin -f $p/$1  --output-txt $p/$1.txt




