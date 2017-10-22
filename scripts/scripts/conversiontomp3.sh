for i in *.flac ; do 
    ffmpeg -i "$i" -acodec libmp3lame "$(basename "${i/.flac}").mp3" 
    sleep 60 
done
