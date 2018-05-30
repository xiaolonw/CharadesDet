# Charades Object Detection Dataset

Reference:
@inproceedings{YuanyuanICCV2017,
    Author = {Yuan Yuan and Xiaodan Liang and Xiaolong Wang and Dit-Yan Yeung and Abhinav Gupta},
    Title = {Temporal Dynamic Graph LSTM for Action-driven Video Object Detection},
    Booktitle = {ICCV},
    Year = {2017},
}

We label all the videos in the Charades Validation video set, which can be downloaded from here:
http://allenai.org/plato/charades/

There are 1812 videos labeled in total and 8 boxes per frame in average. 
We label one frame every second, and we extract the frames in the original frame rate of the videos with:

extract_frames.m

Note that the frame rate for every video is different, and we did not use the 24fps jpg images from the official webpage.







