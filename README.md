# kaggle-rsna-intracranial-hemorrhage-detection

directories構成案 1

```
│- input
│  │- stage_2_sample_submission.csv : test csv without predicted labels
│  │- stage_2_train.csv : train csv
│  │
│  │- stage_2_train
│  │  │-*.dcm : train dicoms
│  │
│  │- stage_2_train
│     │-*.dcm : train dicoms
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
   │  │- train_raw.pkl : preprocessed train file (appian'a model)
   │  │- train_folds.pkl : splitted train file (appian'a model)
   │  │- test_raw.pkl : preprocessed test file (appian'a model)
   │  │- other preprocessed files
   │
   │- model_base
   │  │- fold{}_test.pkl
   │  │- fold{}_valid.pkl
   │  │- tmp files
   │
   │- model_1
   │  │- fold{}_test.pkl
   │  │- fold{}_valid.pkl
   │  │- tmp files
   │
   │- model_2
   │  │- ...
   │
   │- ...
   │
   │- cnn_stacking_1
   │  │- fold{}_test.pkl
   │  │- fold{}_valid.pkl
   │  │- tmp files
   │
   │- cnn_stacking_2
   │  │- ...
   │
   │- ...
   │
   │- lgbm_second_stacking
      │- fold{}_test.pkl
      │- fold{}_valid.pkl
      │- tmp files
```
