%implay('highwayII_raw.avi');
videoObj = MMREADER('test.avi');%读视频文件
nframes = get(videoObj, 'NumberOfFrames');%获取视频文件帧个数
for k = 1 : nframes
    currentFrame = read(videoObj, k);%读取第i帧
    subplot(2,2,1);%创建图像显示窗口并获取第一个窗口句柄
    imshow(currentFrame);
   
    % Convert to grayscale.
    grayFrame = rgb2gray(currentFrame);%灰度化
    if(k==1)
        grayFrame_1 = grayFrame;
    end
   
    difgrayFrame= grayFrame - grayFrame_1;%邻帧差
   
    grayFrame_1 = grayFrame;
   
    subplot(2,2,2);
    imshow(difgrayFrame);
end
