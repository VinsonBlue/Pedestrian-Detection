%implay('highwayII_raw.avi');
videoObj = MMREADER('test.avi');%����Ƶ�ļ�
nframes = get(videoObj, 'NumberOfFrames');%��ȡ��Ƶ�ļ�֡����
for k = 1 : nframes
    currentFrame = read(videoObj, k);%��ȡ��i֡
    subplot(2,2,1);%����ͼ����ʾ���ڲ���ȡ��һ�����ھ��
    imshow(currentFrame);
   
    % Convert to grayscale.
    grayFrame = rgb2gray(currentFrame);%�ҶȻ�
    if(k==1)
        grayFrame_1 = grayFrame;
    end
   
    difgrayFrame= grayFrame - grayFrame_1;%��֡��
   
    grayFrame_1 = grayFrame;
   
    subplot(2,2,2);
    imshow(difgrayFrame);
end
