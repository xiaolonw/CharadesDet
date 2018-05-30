% parse video frames
clear all;
clc;

% read video
addpath('/Users/yuanyuan/projects/mmread/');
viddataset = '/Users/yuanyuan/projects/CharadesDataset/Charades_v1_480/';
imgdataset = '/Volumes/yyMacRed/projects/detection_dataset/Charades/Charades_v1_480_images/';
if ~exist(imgdataset,'dir')
    mkdir(imgdataset);
end

file = dir(viddataset);

for i = 1:9848
    vidname = file(i+3).name;
    vidname = vidname(1:end-4);
    vidpath = [viddataset,vidname,'.mp4'];
    readerobj = mmread(vidpath, [], [], false, true);
    start_frame = 1;
    [~, maxframe] = size(readerobj.frames(start_frame:end));
    vidFrames   = readerobj.frames(start_frame:end);
    impath = [imgdataset,vidname];
    if ~exist(impath,'dir')
        mkdir(impath);
    end
    for im_id = 1:maxframe
        im = vidFrames(im_id).cdata;
        im_name = [num2str(im_id),'.jpg'];
        imwrite(im,[impath,'/',im_name],'jpg');
    end
    i

end

