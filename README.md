# Introduction

Specular highlight detection is a challenging problem, and has many
applications such as shiny object detection and light source
estimation. Although various highlight detection methods have been
proposed, they fail to disambiguate bright material surfaces from
highlights, and cannot handle non-white-balanced images. Moreover, at
present, there is still no benchmark dataset for highlight
detection. In this paper, we present a large-scale real-world
highlight dataset containing a rich variety of material categories,
with diverse highlight shapes and appearances, in which each image is
with an annotated ground-truth mask. Based on the dataset, we develop
a deep learning-based specular highlight detection network (SHDNet)
leveraging multi-scale context contrasted features to accurately
detect specular highlights of varying scales. In addition, we design a
binary cross-entropy (BCE) loss and an intersection-over-union edge
(IoUE) loss for our network. Compared with existing highlight
detection methods, our method can accurately detect highlights of
different sizes, while effectively excluding the non- highlight
regions, such as bright materials, non-specular as well as colored
lighting, and even light sources.

# WHU-Specular dataset

WHU-Specular is a large dataset of annotated specular highlight
regions created from real-world images. It can be used for specular
highlight detection task. It contains 4310 image pairs (specular
images and corresponding highlight masks). We randomly selected 3,017
images as the training set, and other 1293 images as the testing set.
_Now, our full dataset is publicly available_. You can download our
dataset (size: 2G+) by Baidu Cloud (Link:
https://pan.baidu.com/s/1UizWty88XNhdI3PSNm0B-Q password: t3ov) and
Google Drive (Link:
https://drive.google.com/file/d/1yLSBr5tfYL-u4RyStX1sPmrJGCVuo0GB/view?usp=sharing).

If you use our dataset, please cite the following paper:

```text
@inproceedings{fu-2020-learn-detec,
  author = {Fu, Gang and Zhang, Qing and Lin, Qifeng and Zhu, Lei and Xiao, Chunxia},
  title = {Learning to Detect Specular Highlights from Real-world Images},
  booktitle = {ACM Multimedia},
  year = {2020},
  pages = {1873--1881},
}