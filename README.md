# kaggle-rsna-intracranial-hemorrhage-detection

directories

```
│- input
│  │- stage_2_sample_submission.csv : test csv without predicted labels
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
│- bin
│  │- preprocess.sh : model_base(appian's model)内のpreprocessを実行 -> 追加で各々の
│  │- train.sh : baseのcnnを直列train+predict -> first stacking直列 -> second stacking
│
│
│- models
│  │- base_cnn : base CNN models
│  │  │- model_base : appian's base model
│  │  │- model_1
│  │  │- model_2
│  │  │- model_3
│  │  │- ...
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
   │  │- train.pkl : preprocessed train file (appian's model)
   │  │- train_raw.pkl : preprocessed train file (appian's model)
   │  │- train_folds.pkl : splitted train file (appian's model)
   │  │- test.pkl : preprocessed train file (appian's model)
   │  │- test_raw.pkl : preprocessed test file (appian's model)
   │  │- other preprocessed files
   │
   │- model_base
   │  │- fold{0-4}_test.pkl
   │  │- fold{0-4}_valid.pkl
   │  │- weight files
   │  │- tmp files
   │
   │- model_1
   │  │- fold{0-4}_test.pkl
   │  │- fold{0-4}_valid.pkl
   │  │- weight files
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
