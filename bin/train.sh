#!/bin/bash

# base CNN models training and predicting
cd models/base_cnn/model_base
# sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_1
# sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_2
# sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_3
# sh bin/train.sh
sh bin/predict.sh
cd ../../../

<<<<<<< HEAD
cd models/base_cnn/sugawara_efficientnetb3
# sh bin/train.sh
sh bin/predict.sh
=======
# shimacos's model
cd models/base_cnn/densenet_adj_prediction
sh bin/train_001.sh
sh bin/test_001.sh
cd ../../../

cd models/base_cnn/seresnext50_label_smoothing
sh bin/train_002.sh
sh bin/test_002.sh
cd ../../../

cd models/base_cnn/seresnext50_label_smoothing_without_any
sh bin/train_003.sh
sh bin/test_003.sh
>>>>>>> origin
cd ../../../

# 1st stacking training
cd models/first_stacking
python cnn_stacking_1.py
docker run --rm \
    -v $PWD/:/root/ \
    -v $PWD/../../intermediate_output/:/root/intermediate_output/ \
    -v $HOME/.cache/:/root/.cache \
    --runtime=nvidia \
    --ipc=host \
    kaggle/pytorch \
    python cnn_stacking_2.py
python lgbm_first_stacking.py
python mlp_stacking.py
cd ../../

# 2nd stacking training
python models/second_stacking/lgbm_second_stacking.py
