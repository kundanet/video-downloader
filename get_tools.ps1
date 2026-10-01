# Downloads yt-dlp, deno and ffmpeg/ffprobe next to this script (and next to the app).
$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$tmp = Join-Path $env:TEMP "vd_tools"
New-Item -ItemType Directory -Force $tmp | Out-Null

Write-Host "Downloading yt-dlp..."
Invoke-WebRequest "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -OutFile "$dir\yt-dlp.exe"

Write-Host "Downloading deno..."
Invoke-WebRequest "https://github.com/denoland/deno/releases/latest/download/deno-x86_64-pc-windows-msvc.zip" -OutFile "$tmp\deno.zip"
Expand-Archive "$tmp\deno.zip" -DestinationPath $dir -Force

Write-Host "Downloading ffmpeg (large, please wait)..."
Invoke-WebRequest "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip" -OutFile "$tmp\ffmpeg.zip"
Expand-Archive "$tmp\ffmpeg.zip" -DestinationPath "$tmp\ffmpeg" -Force
Get-ChildItem "$tmp\ffmpeg" -Recurse -Include ffmpeg.exe,ffprobe.exe | Copy-Item -Destination $dir -Force

Write-Host "All tools ready in $dir"
