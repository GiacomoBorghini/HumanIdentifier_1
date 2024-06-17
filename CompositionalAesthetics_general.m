clear
close all
clc

N_B = 512*512; %Standard number of pixel of the image. Used in resize_save to bring all the images to the
               %nearly the same resolution.
resol_level = 4; %dimension of the regular grid used to partition the image

Hfolder = 'ImageDatabase/Human/';  %Folder where are located the artworks made by human artists
AIfolder ='ImageDatabase/AI/';  %Folder where are located the artworks generated by AI

Hfolder_RES = 'ImageDatabase/InUse_H/'; %Folder where the resized human images are saved
AIfolder_RES = 'ImageDatabase/InUse_AI/'; %Folder where the resized AI images are saved

delete(strcat(Hfolder_RES,'/*'));
delete(strcat(AIfolder_RES,'/*'));


dirNameH = strcat(Hfolder,'*jpg');
dirNameAI = strcat(AIfolder,'*jpeg');
 
resize_save(Hfolder,Hfolder_RES,dirNameH,N_B);
resize_save(AIfolder,AIfolder_RES,dirNameAI,N_B);

dirNameH = strcat(Hfolder_RES,'*jpg');
dirNameAI = strcat(AIfolder_RES,'*jpeg');

image_structH = dir(dirNameH);
image_structAI = dir(dirNameAI);
%Sort,by name, the elements of image_structH and image_structAI
image_structH = natsortfiles(image_structH);
image_structAI = natsortfiles(image_structAI);

%Computes global aesthetic metrics for human artworks
[M_JH] = M_J_Calculation(image_structH,Hfolder_RES,resol_level);
[M_NCDH] = M__NCD_Calculation(image_structH,Hfolder_RES,resol_level);

%Computes global aesthetic metrics for AI artworks
[M_JAI] = M_J_Calculation(image_structAI,AIfolder_RES,resol_level);
[M_NCDAI] = M_NCD_Calculation(image_structAI,AIfolder_RES,resol_level);

x = linspace(1,size(image_structAI,1),size(image_structAI,1));




%Creates graphics for all the computed metrics.
figure
bar(x,[M_JAI;M_JH])

ylim([0.8 1])
title('AI vs. Human Jensen-Shannon order M_J')
xlabel('Painting label')
ylabel('M_J')
legend('AI','Human')

figure
bar(x,[M_NCDAI;M_NCDH])

ylim([0.2 0.5])
title('AI vs. Human NCD analysis M_{NCD}')
xlabel('Painting label')
ylabel('M_{NCD}') 

legend('AI','Human')


%Old graphics

% figure
% 
% plot(x,M_jH,'r:.','MarkerSize',20, LineStyle='none')
% grid on
% hold on
% plot(x,M_jAI,'b:.','MarkerSize',20, LineStyle='none')
% title('AI vs. Human Jensen-Shannon order M_J')
% xlabel('Painting label')
% ylabel('M_j') 
% 
% legend('Human','AI')
% hold off
% 
% 
% figure
% 
% plot(x,M_KH,'r:.','MarkerSize',20, LineStyle='none')
% grid on
% hold on
% plot(x,M_KAI,'b:.','MarkerSize',20, LineStyle='none')
% title('AI vs. Human NCD analysis M_K')
% xlabel('Painting label')
% ylabel('M_K') 
% 
% legend('Human','AI')
% hold off








