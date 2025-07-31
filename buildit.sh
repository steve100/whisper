echo "pull the cpp whisper code"
git clone https://github.com/ggerganov/whisper.cpp

echo "update ubuntu for building"

sudo apt update
sudo apt install build-essential cmake ffmpeg -y

cd whisper.cpp

 
echo download a whisper model
bash ./models/download-ggml-model.sh base.en


echo build the project
cmake -B build
cmake --build build --config Release


#echo early exit
#exit 0

echo transcribe an audio file without specifiying a model
./build/bin/whisper-cli -f samples/jfk.wav

echo transcribe an audio file with specifying a model
./build/bin/whisper-cli -m ./models/ggml-base.en.bin -f ./samples/jfk.wav -ml 16


echo get another model hard coded now
bash  get-model.sh 

echo transcribe again
./build/bin/whisper-cli -m ~/whisper/whisper.cpp/models/ggml-large-v2.bin -f samples/jfk.wav
