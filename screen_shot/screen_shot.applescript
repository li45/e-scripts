set output_path to do shell script "out=~/Desktop/屏幕截图/`date +%Y%m%d`/`date +%H%M%S`; mkdir -p `dirname $out`; echo $out"
do shell script "screencapture " & output_path & "_1.jpg " & output_path & "_2.jpg " & output_path & "_3.jpg " & output_path & "_4.jpg "
display notification "屏幕截图已创建 " & output_path with title "时间管理"
