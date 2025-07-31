
#ffmpeg -i $1 -ar 44100 -ac 2 -sample_fmt s16 $1.wav
#
#

i=$1
echo $i


output_wave=`echo $i  | sed 's/\.mp3$/.wav/'`

echo $output_wave


#ffmpeg -i $1 -ar 16000 -ac 1 -c:1 pcm_s16le $1.wav
ffmpeg -i $1 -ar 16000 -ac 1 -c:1 pcm_s16le -threads 0 -benchmark -stats   $1.wav
