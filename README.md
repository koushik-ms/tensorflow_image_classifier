# Tensorflow Image Classifier

This repo contains the code and data for image classification tutorial in tensorflow. It is a fork of [this](https://github.com/llsourcell/tensorflow_image_classifier) repo and is based on this [CodeLab](https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/?utm_campaign=chrome_series_machinelearning_063016&utm_source=gdev&utm_medium=yt-desc#0) by Google as well as this [tutorial](https://www.tensorflow.org/versions/r0.9/how_tos/image_retraining/index.html) is quite helpful. For a quick video walkthrough of the process check out this information-packed [YouTube](https://youtu.be/QfNvhPx5Px8) video.

## Requirements

* [docker](https://www.docker.com/products/docker-toolbox)

## Usage 

Training data is availabe in `tf_files/data` directory. There are 2 sub-directories for 2 categories pre-populated. If you need additional categories, create additional sub-directories, like, for example
```
 tf_files/data/iron_man
 tf_files/data/wonder_woman
```
and then put your images in them.

These will be used for training. After training the `tf_files` directory will have the classifier.

## Training process
 
Just type
```
 bash ./train.sh $PWD/tf_files
``` 
And it will do everything for you !

## Testing the classifier

Just type for a single guess
```
 bash ./guess.sh $PWD/tf_files $PWD/test_data/images00.jpg 
```

To guess an entire directory
```
bash ./guessDir.sh $PWD/tf_files $PWD/test_data $PWD/classified
```
Ps. Make sure the directory $PWD/classified exists. It can be empty.
## Example of result
```
$ bash guess.sh $PWD/tf_files $PWD/test_data/images00.jpg 
elsa (score = 0.99636)
darth vader (score = 0.00364)
```

Use an absolute file path for classifier and images because the script dos not support relative path (volume mounting)

# The Challenge

Make your own classifier for scientists, then post a clone of this repo with your retrained model in it. (you can name it retrained_graph.pb and it will be around 80 MB. If it's too big for GitHub, upload it to DropBox and post the link to it in your README)

# Credits

Credit goes to [Xblaster](https://github.com/xblaster) & [@sirajology](https://github.com/llsourcell) for the majority of this code. I've merely customized it for the training data. 



