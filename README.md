# Charades Object Detection Dataset

## Citation
If you use our dataset in your research, please use the following BibTeX entry.
```
@inproceedings{YuanyuanICCV2017,
    Author = {Yuan Yuan and Xiaodan Liang and Xiaolong Wang and Dit-Yan Yeung and Abhinav Gupta},
    Title = {Temporal Dynamic Graph LSTM for Action-driven Video Object Detection},
    Booktitle = {ICCV},
    Year = {2017},
}
```

We label all the videos in the Charades Validation video set, which can be downloaded from here:
http://allenai.org/plato/charades/

The annotations can be downloaded from here:


There are 1812 videos labeled in total and 8 boxes per frame in average.
We label one frame every second, and we extract the frames in the original frame rate of the videos with:
```Shell
extract_frames.m
```
Note that the frame rate for every video is different, You will need to extract the frames with this script.
We did NOT use the 24fps jpg images from the official webpage.
