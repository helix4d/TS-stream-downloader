#!/bin/bash

declare filename
declare url
declare extension=".mp4"


read -p "Enter file name: " filename
if [ -z "$filename" ]
then
      read -p "Enter file name: " filename
else
      filename+=$extension
      echo "Stream data will be stored in a file: $filename"
fi


read -p "Enter url: " url
if [ -z "$url" ]
then
      read -p "Enter link on m3u8 file. If file in current folder - input file name: " url
else
      echo "Stream will save from url: $url"
fi


echo "Starting download"


# ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i $url -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $filename

ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i $url -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $filename

echo "Finish downloading"
du -h "$filename"
