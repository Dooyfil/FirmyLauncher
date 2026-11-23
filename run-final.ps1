Set-Location 'C:\Users\d3sp1res\Desktop\FirmyLauncher-repo'
$ff = 'C:\Users\d3sp1res\AppData\Local\Temp\opencode\ffmpeg\ffmpeg-9.0.2-essentials_build\bin\ffmpeg.exe'
$f = @"
drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t1.txt:fontcolor=white:fontsize=92:x=(w-text_w)/2:y=222:borderw=10:bordercolor=black@0.9:shadowx=0:shadowy=8:shadowcolor=black@0.65
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t2.txt:fontcolor=white:fontsize=25:x=(w-text_w)/2:y=316:shadowx=0:shadowy=2:shadowcolor=black@0.6
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t3.txt:fontcolor=0xA78BFA:fontsize=23:x=(w-text_w)/2:y=368:shadowx=0:shadowy=2:shadowcolor=black@0.55
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t4.txt:fontcolor=white:fontsize=24:x=(w-text_w)/2:y=704:shadowx=0:shadowy=2:shadowcolor=black@0.6
"@
& $ff -y -i telegram-post-github.png -vf $f -frames:v 1 telegram-post-github-final.png
Get-Item telegram-post-github-final.png | Select-Object Length, FullName
