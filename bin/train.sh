#!/bin/bash

# base CNN models training and predicting
cd models/base_cnn/model_base
sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_1
sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_2
sh bin/train.sh
sh bin/predict.sh
cd ../../../

cd models/base_cnn/model_3
sh bin/train.sh
sh bin/predict.sh
cd ../../../

# shimacos's model
cd models/base_cnn/model_4-6
sh bin/train_001.sh
sh bin/test_001.sh
sh bin/train_002.sh
sh bin/test_002.sh
sh bin/train_003.sh
sh bin/test_003.sh
cd ../../../

# sugawarya model
cd models/base_cnn/sugawara_efficientnetb3
sh bin/train.sh
sh bin/predict.sh
cd ../../../

# 1st stacking training
cd models/first_stacking
sh ./bin/stacking.sh
cd ../../

# 2nd stacking training
cd models/second_stacking
sh ./bin/stacking.sh
cd ../../
