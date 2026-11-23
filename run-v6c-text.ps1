Set-Location 'C:\Users\d3sp1res\Desktop\FirmyLauncher-repo'
$ff = 'C:\Users\d3sp1res\AppData\Local\Temp\opencode\ffmpeg\ffmpeg-9.0.2-essentials_build\bin\ffmpeg.exe'
$f = @"
drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t1.txt:fontcolor=white:fontsize=95:x=960:y=178:borderw=12:bordercolor=black@0.9:shadowx=0:shadowy=8:shadowcolor=black@0.7
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t2.txt:fontcolor=white:fontsize=25:x=960:y=252:shadowx=0:shadowy=3:shadowcolor=black@0.6
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t3.txt:fontcolor=white:fontsize=22:x=960:y=292:shadowx=0:shadowy=2:shadowcolor=black@0.55
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t4.txt:fontcolor=white:fontsize=18:x=960:y=325:shadowx=0:shadowy=2:shadowcolor=black@0.5
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t5.txt:fontcolor=white:fontsize=17:x=960:y=351:shadowx=0:shadowy=2:shadowcolor=black@0.5
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t7.txt:fontcolor=white:fontsize=22:x=490:y=372:shadowx=0:shadowy=2:shadowcolor=black@0.6
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t8.txt:fontcolor=white:fontsize=22:x=890:y=520:shadowx=0:shadowy=2:shadowcolor=black@0.6
,drawtext=fontfile=gh-preview-tmp/font.ttf:textfile=gh-preview-tmp/t6.txt:fontcolor=white:fontsize=26:x=(w-text_w)/2:y=699:borderw=8:bordercolor=black@0.9:shadowx=0:shadowy=5:shadowcolor=black@0.6
"@
& $ff -y -i telegram-post-github.png -vf $f -frames:v 1 telegram-post-github-final.png 2>&1 | Select-Object -Last 2
Copy-Item -Path telegram-post-github-final.png -Destination telegram-post-github.png -Force
Remove-Item telegram-post-github-final.png -Force
Get-Item telegram-post-github.png | Select-Object Length, FullName
