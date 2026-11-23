@echo off
cd /d C:\Users\d3sp1res\Desktop\FirmyLauncher-repo
set FF=C:\Users\d3sp1res\AppData\Local\Temp\opencode\ffmpeg\ffmpeg-9.0.2-essentials_build\bin\ffmpeg.exe
set TMP=C:\Users\d3sp1res\Desktop\FirmyLauncher-repo\gh-preview-tmp
%FF% -y -i telegram-post-github.png -vf "drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t1.txt:fontcolor=white:fontsize=72:x=(w-text_w)/2:y=118:borderw=10:bordercolor=black@0.9:shadowx=0:shadowy=6:shadowcolor=black@0.65,drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t2.txt:fontcolor=white:fontsize=24:x=(w-text_w)/2:y=205:shadowx=0:shadowy=2:shadowcolor=black@0.5,drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t3.txt:fontcolor=white:fontsize=24:x=810:y=430:shadowx=0:shadowy=2:shadowcolor=black@0.55,drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t4.txt:fontcolor=white:fontsize=20:x=810:y=470:shadowx=0:shadowy=2:shadowcolor=black@0.5,drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t5.txt:fontcolor=white:fontsize=30:x=(w-text_w)/2:y=708:borderw=8:bordercolor=black@0.9:shadowx=0:shadowy=4:shadowcolor=black@0.6,drawtext=fontfile=%TMP%/font.ttf:textfile=%TMP%/t6.txt:fontcolor=white:fontsize=17:x=(w-text_w)/2:y=752:shadowx=0:shadowy=1:shadowcolor=black@0.5" -frames:v 1 telegram-post-github-final.png
copy /Y telegram-post-github-final.png telegram-post-github.png
del telegram-post-github-final.png
echo DONE
