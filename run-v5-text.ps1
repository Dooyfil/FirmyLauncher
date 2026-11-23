Set-Location 'C:\Users\d3sp1res\Desktop\FirmyLauncher-repo'
$ff = 'C:\Users\d3sp1res\AppData\Local\Temp\opencode\ffmpeg\ffmpeg-9.0.2-essentials_build\bin\ffmpeg.exe'
$f = @"
drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t1.txt:fontcolor=white:fontsize=100:x=(w-text_w)/2:y=210:borderw=12:bordercolor=black@0.9:shadowx=0:shadowy=8:shadowcolor=black@0.7
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t2.txt:fontcolor=white:fontsize=26:x=(w-text_w)/2:y=305:shadowx=0:shadowy=3:shadowcolor=black@0.65
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t3.txt:fontcolor=0x34D399:fontsize=24:x=(w-text_w)/2:y=348:shadowx=0:shadowy=3:shadowcolor=black@0.6
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t5.txt:fontcolor=white:fontsize=26:x=(w-text_w)/2:y=318:shadowx=0:shadowy=3:shadowcolor=black@0.7
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t4.txt:fontcolor=white:fontsize=22:x=(w-text_w)/2:y=708:shadowx=0:shadowy=2:shadowcolor=black@0.6
"@
$out = & $ff -y -i telegram-post-github.png -vf $f -frames:v 1 telegram-post-github-final.png 2>&1
'OUTPUT: ' + $out
Copy-Item -Path telegram-post-github-final.png -Destination telegram-post-github.png -Force
Remove-Item telegram-post-github-final.png -Force
