# kaggle-rsna-intracranial-hemorrhage-detection

### usage
```
sh bin/build_image.sh
sh bin/preprocess.sh
sh bin/train.sh
```


### directories
```

│- raw_scripts : raw scripts that we used during the competition
│
│
│- input
│  │- stage_2_sample_submission.csv : test csv (label columns are filled with 0.5)
│  │- stage_2_train.csv : train csv
│  │
│  │- stage_2_train_images
│  │  │-*.dcm : train dicoms
│  │
│  │- stage_2_test_images
│  │  │-*.dcm : test dicoms
│
│
│- output
│  │- submission.csv : predicted test csv
│
│
│- bin : main file
│  │- preprocess.sh
│  │- train.sh
│
│
│- models
│  │- base_cnn : base CNN models
│  │  │- model_base : appian's base model
│  │  │- model_1 : ricky's resize 410 model
│  │  │- model_2 : ricky's second model
│  │  │- model_3 : ricky's custom labels model
│  │  │- model_4-6 : shimacosh's models
│  │  │- sugawara_efficientnetb3 : sugawarya's model
│  │  │- model_5
│  │  │- model_6
│  │  │- model_7
│  │
│  │- first_stacking : first level stacking models
│  │  │- cnn_stacking_1.py (ricky)
│  │  │- cnn_stacking_2.py (shimacos)
│  │  │- lgbm_first_stacking.py (sugawarya)
│  │  │- mlp_stacking.py (sugawarya)
│  │
│  │- second_stacing : second level stacking models
│     │- lgbm_second_stacking.py (sugawarya)
│
│
│- intermediate_output : preprocessed files and intermediate outputs
   │- preprocessed_data
   │  │- train.pkl : preprocessed train file (appian's base model)
   │  │- train_raw.pkl : preprocessed train file (appian's base model)
   │  │- train_folds.pkl : splitted train file (appian's base model)
   │  │- test.pkl : preprocessed train file (appian's base model)
   │  │- test_raw.pkl : preprocessed test file (appian's base model)
   │  │
   │  │- train_model_3.pkl : preprocessed train file (ricky's model_3)
   │  │- train_raw_model_3.pkl : preprocessed train file (ricky's model_3)
   │  │- train_folds_model_3.pkl : splitted train file (ricky's model_3)
   │  │- test_model_3.pkl : preprocessed train file (ricky's model_3)
   │  │- test_raw_model_3.pkl : preprocessed test file (ricky's model_3)
   │  │- other preprocessed files
   │
   │- model_base
   │  │- fold{0-4}_test.pkl
   │  │- fold{0-4}_valid.pkl
   │  │- weight files
   │  │- log files
   │  │- tmp files
   │
   │- model_1
   │  │- fold{0-4}_test.pkl
   │  │- fold{0-4}_valid.pkl
   │  │- weight files
   │  │- log files
   │  │- tmp files
   │
   │- model_2
   │  │- ...
   │
   │- ...
   │
   │- cnn_stacking_1
   │  │- fold{0-4}_test.pkl
   │  │- fold{0-4}_valid.pkl
   │  │- weight files
   │  │- tmp files
   │
   │- cnn_stacking_2
   │  │- ...
   │
   │- ...
   │
   │- lgbm_second_stacking
      │- fold{0-4}_test.pkl
      │- fold{0-4}_valid.pkl
      │- tmp files
```
