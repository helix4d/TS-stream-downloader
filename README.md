# TS stream downloader

*TS stream downloader* - bash script to download ts fragments from video stream services.

Haw it work:
1. Install ffmpeg in your OS.
2. Go to the page with stream, that you want to download.
3. In browser, open developer console (press F12) and choose tab ‘Network’.
4. Reload page (press F5).
5. Start play stream.
6. In list of files by tab ‘Network’ search file with file extension ‘m3u8’ and copy his link address to the buffer.
7. Start script: ./stream-downloader.sh
8. Input name of result file.
9. Input  link to m3u8 file and start download.

The result of the script - video file mp4 format. 
