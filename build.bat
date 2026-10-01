@echo off
echo Installing build tool...
pip install pyinstaller
echo.
echo Building VideoDownloader.exe ...
pyinstaller --noconsole --onefile --name VideoDownloader video_downloader.py
echo.
echo Done: dist\VideoDownloader.exe
echo Put yt-dlp.exe, deno.exe, ffmpeg.exe and ffprobe.exe next to it (run get_tools.bat).
pause
