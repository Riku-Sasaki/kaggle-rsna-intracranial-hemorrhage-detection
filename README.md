# kaggle-rsna-intracranial-hemorrhage-detection

directories構成案 1

```
│- input
│  │- train_dcm
│  │- test_dcm
│  │- train.csv
│  │- test_wo_output.csv
│
│
│- output
│  │- test.csv
│
│
│- bin
│  │- preprocess.sh
│  │- train.sh : baseのcnnを直列train+predict -> first stacking直列 -> second stacking
│
│
│- models
│  │- base_cnn
│  │ │- model_base : appian's base model
│  │ │- model_1
│  │ │- model_2
│  │ │- model_3
│  │ │- ...
│  │
│  │- first_stacking
│  │ │- cnn_stacking_1.py (ricky)
│  │ │- cnn_stacking_2.py (shimacos)
│  │ │- lgbm_first_stacking.py (sugawarya)
│  │ │- mlp_stacking.py (sugawarya)
│  │
│  │- second_stacing
│    │- lgbm_second_stacking.py (sugawarya)
│
│
│- intermediate_output : preprocessed files and intermediate outputs
  │- train_raw.pkl : preprocessed train file (based on appian'a model)
  │- train_folds.pkl : splitted train file (based on appian'a model)
  │- test_raw.pkl : preprocessed test file (based on appian'a model)
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
