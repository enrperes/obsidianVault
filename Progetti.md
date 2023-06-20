# Firefox Extensions
[Your first extension](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Your_first_WebExtension)
[Your second extension](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Your_second_WebExtension)
[Develop and publish your extension](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/What_next_)

# AI

## Getting Started

- Clone this repo: `git clone https://github.com/MoyGcc/vid2avatar`
- Create a python virtual environment and activate. `conda create -n v2a python=3.7` and `conda activate v2a`
- Install dependenices. `cd vid2avatar`, `pip install -r requirement.txt` and `cd code; python setup.py develop`
- Install [Kaolin](https://kaolin.readthedocs.io/en/v0.10.0/notes/installation.html). We use version 0.10.0.
- Download [SMPL model](https://smpl.is.tue.mpg.de/download.php) (1.0.0 for Python 2.7 (10 shape PCs)) and move them to the corresponding places:

```
mkdir code/lib/smpl/smpl_model/
mv /path/to/smpl/models/basicModel_f_lbs_10_207_0_v1.0.0.pkl code/lib/smpl/smpl_model/SMPL_FEMALE.pkl
mv /path/to/smpl/models/basicmodel_m_lbs_10_207_0_v1.0.0.pkl code/lib/smpl/smpl_model/SMPL_MALE.pkl
```

## [](https://github.com/MoyGcc/vid2avatar#download-preprocessed-demo-data)

## Download preprocessed demo data

You can quickly start trying out Vid2Avatar with a preprocessed demo sequence including the pre-trained checkpoint. This can be downloaded from [Google drive](https://drive.google.com/drive/folders/1AUtKSmib7CvpWBCFO6mQ9spVrga_CTU4?usp=share_link) which is originally a video clip provided by [NeuMan](https://github.com/apple/ml-neuman). Put this preprocessed demo data under the folder `data/`.

## [](https://github.com/MoyGcc/vid2avatar#training)

## Training

Before training, make sure that the `metaninfo` in the data config file `/code/confs/dataset/video.yaml` does match the expected training video. You can also continue the training by changing the flag `is_continue` in the model config file `code/confs/model/model_w_bg`. And then run:

```
cd code
python train.py
```

The training usually takes 24-48 hours. The validation results can be found at `outputs/`.

## [](https://github.com/MoyGcc/vid2avatar#test)

## Test

Run the following command to obtain the final outputs. By default, this loads the latest checkpoint.

```
cd code
python test.py
```