%����Ƶת��Ϊͼ������
clc; clear all; 
close all;
filename = 'test.avi';                     %�����е���Ƶ 
mov = VideoReader(filename);                     %����
fnum = mov.NumberOfFrames;                       %��ȡ��Ƶ��������movΪ1*temp
for i=1:fnum
  strtemp=strcat('we',int2str(i),'.','jpeg');     %��ÿ��ת��jpg��ͼƬ
  img=read(mov,i);                                %������Ƶ�����е�ͼ��֡
  imwrite(img,strtemp);                             %����Ƶ֡תΪͼƬ
end