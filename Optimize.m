clc;
file_path =  '.\data\';% ͼ���ļ���·��  
img_path_list = dir(strcat(file_path,'*.jpeg'));%��ȡ���ļ���������jpg��ʽ��ͼ��  
img_num = length(img_path_list);%��ȡͼ��������  
if img_num > 0 %������������ͼ��  
        for j = 1:img_num %��һ��ȡͼ��  
            image_name = img_path_list(j).name;% ͼ����  
            image =  imread(strcat(file_path,image_name));
            M = image;
%             g1 = medfilt2(M(:,:,1));%��
%             g2 = medfilt2(M(:,:,2));%��
%             g3 = medfilt2(M(:,:,3));%��
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
    
%         myobj = VideoWriter('new');% �½�һ����Ƶ�ļ�
%         writerObj.FrameRate =40;               % ����ÿ���֡��30
%         open(myobj);                           % ����Ƶ�ļ�
%         for i = 1:img_num;                  % ��ͼ������������Ƶ�ļ�
%         fname = strcat('new',num2str(i),'.jpg'); %��ÿ��ת��jpg��ͼƬ
%         frame = imread(fname);
%         writeVideo(myobj,frame);           
%         end
%         close(myobj);
%         implay ('test.mp4');
%         implay ('new.avi');
%             %fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% ��ʾ���ڴ����ͼ����  
%             %ͼ������� ʡ��  
%         end  
