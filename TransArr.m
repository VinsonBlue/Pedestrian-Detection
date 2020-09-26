%把视频转化为图像序列
clc; clear all; 
close all;
filename = 'test.avi';                     %磁盘中的视频 
mov = VideoReader(filename);                     %读入
fnum = mov.NumberOfFrames;                       %读取视频的祯数，mov为1*temp
for i=1:fnum
  strtemp=strcat('we',int2str(i),'.','jpeg');     %将每祯转成jpg的图片
  img=read(mov,i);                                %读出视频序列中的图像帧
  imwrite(img,strtemp);                             %将视频帧转为图片
end