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
