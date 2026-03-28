# F28HS-CW1
Coursework1 for F28HS, which implement a image processor. 

## Task:
Through my ID code I have a specific task as below:
python3 mytask.py H00460464 
H00460464: HQ8 MEDIAN NORM

## Getting start:
We have image of HQ8 and source in the cwk1-images. Please visit and check them.
The processor can accept a list of image. 
```
cd cwk1-c
./process INPUT OUTPUT INPUT OUTPUT ...
```
There also exist a hqconvert for you to use. 
```
hqconvert -h #Discover how to use it
```
This can help you change hq8 to a file that can be viewed.

## Installation
```
git clone https://github.com/KunLiangChen/F28HS-CW1.git
cd cwk1-c
make
```

## Usage
for example you can
```
cd cwk1-c
./process ../cwk1-images/HQ8/bars.hq8 ../cwk1-images/HQ8/bars_p.hq8
hqconvert ../cwk1-images/HQ8/bars_p.hq8 ../cwk1-images/HQ8/bars_p
```
Then you can open bars_q to check the result of the process.
