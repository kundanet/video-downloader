# Video Downloader

Simple Windows GUI (Tkinter) around [yt-dlp](https://github.com/yt-dlp/yt-dlp).
YouTube channel Shorts (up to 200), TikTok bulk links, and other sites.

## Install (users)
1. Download the latest `VideoDownloader-vX.Y.Z.zip` from **Releases** and unzip it.
2. Double-click `get_tools.bat` once (downloads yt-dlp, deno, ffmpeg next to the app).
3. Run `VideoDownloader.exe`.

Update yt-dlp any time with the **Update yt-dlp** button in the app.

## Run from source
```
python video_downloader.py
```
(needs the tools from `get_tools.bat` in the same folder)

## Build the exe yourself
Run `build.bat` -> `dist\VideoDownloader.exe`

## Release a new version
1. Edit the code, commit, push.
2. `git tag v1.1.0`
3. `git push --tags`
GitHub Actions builds the exe and publishes the release automatically.

> For personal use only. Respect the terms of the sites you download from and creators' rights.
