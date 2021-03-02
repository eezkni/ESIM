## ESIM: Edge Similarity for Screen Content Image Quality Assessment

#### IEEE Transactions on Image Processing (T-IP) 
[Zhangkai Ni](https://eezkni.github.io/), [Lin Ma](http://forestlinma.com/), Huanqiang Zeng, Jing Chen, Canhui Cai, and [Kai-Kuang Ma](https://scholar.google.com/citations?user=GGUNtCsAAAAJ&hl=en)

##### [Project](https://eezkni.github.io/publications/ESIM.html) | [Paper](https://eezkni.github.io/publications/journal/ESIM/ESIM_ZKNI_TIP17.pdf) | [Dataset](https://onedrive.live.com/?authkey=%21AG8z0EkhES1JQY4&cid=2F2705FEBCB6FF84&id=2F2705FEBCB6FF84%21105&parId=2F2705FEBCB6FF84%21104&action=locate)


## Introdcurion

This website shares the codes of the "ESIM: Edge Similarity for Screen Content Image Quality Assessment", IEEE Transactions on Image Processing (T-IP), vol. 26, pp. 4818-4831, October 2017. 

<img src="./figures/examples.PNG" width = "100%" height = "100%" div align=center>



### Abstract

In this paper, an accurate full-reference image quality assessment (IQA) model developed for assessing screen content images (SCIs), called the edge similarity (ESIM), is proposed. It is inspired by the fact that the human visual system (HVS) is highly sensitive to edges that are often encountered in SCIs; therefore, essential edge features are extracted and exploited for conducting IQA for the SCIs. The key novelty of the proposed ESIM lies in the extraction and use of three salient edge features—i.e., edge contrast, edge width, and edge direction. The first two attributes are simultaneously generated from the input SCI based on a parametric edge model, while the last one is derived directly from the input SCI. The extraction of these three features will be performed for the reference SCI and the distorted SCI, individually. The degree of similarity measured for each above-mentioned edge attribute is then computed independently, followed by combining them together using our proposed edge-width pooling strategy to generate the final ESIM score. To conduct the performance evaluation of our proposed ESIM model, a new and the largest SCI database (denoted as SCID) is established in our work and made to the public for download. Our database contains 1800 distorted SCIs that are generated from 40 reference SCIs. For each SCI, nine distortion types are investigated, and five degradation levels are produced for each distortion type. Extensive simulation results have clearly shown that the proposed ESIM model is more consistent with the perception of the HVS on the evaluation of distorted SCIs than the multiple state-of-the-art IQA methods.