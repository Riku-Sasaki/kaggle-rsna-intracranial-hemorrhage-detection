# base CNN models training and predicting
cd models/base_cnn/model_base
sh bin/train.sh
sh bin/predict.sh
cd ../../../


# 1st stacking training
#python models/first_stacking/cnn_stacking_1.py
#python models/first_stacking/cnn_stacking_2.py
#python models/first_stacking/lgbm_first_stacking.py
#python models/first_stacking/mlp_stacking.py

# 2nd stacking training
#python models/second_stacking/lgbm_second_stacking.py