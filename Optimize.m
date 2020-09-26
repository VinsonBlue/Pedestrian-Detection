clc;
file_path =  '.\data\';% 图像文件夹路径  
img_path_list = dir(strcat(file_path,'*.jpeg'));%获取该文件夹中所有jpg格式的图像  
img_num = length(img_path_list);%获取图像总数量  
if img_num > 0 %有满足条件的图像  
        for j = 1:img_num %逐一读取图像  
            image_name = img_path_list(j).name;% 图像名  
            image =  imread(strcat(file_path,image_name));
            M = image;
%             g1 = medfilt2(M(:,:,1));%红
%             g2 = medfilt2(M(:,:,2));%绿
%             g3 = medfilt2(M(:,:,3));%蓝
%             
            r = histeq(M(:,:,1));
            g = histeq(M(:,:,2));
            b = histeq(M(:,:,3));
            I = cat(3,r,g,b);
            figure(1)
            imshow(image);
            
             figure(2)
            imshow(I);
        end
end
    
%         myobj = VideoWriter('new');% 新建一个视频文件
%         writerObj.FrameRate =40;               % 定义每秒的帧数30
%         open(myobj);                           % 打开视频文件
%         for i = 1:img_num;                  % 将图像重新生成视频文件
%         fname = strcat('new',num2str(i),'.jpg'); %将每祯转成jpg的图片
%         frame = imread(fname);
%         writeVideo(myobj,frame);           
%         end
%         close(myobj);
%         implay ('test.mp4');
%         implay ('new.avi');
%             %fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% 显示正在处理的图像名  
%             %图像处理过程 省略  
%         end  
