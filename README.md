# kaggle-rsna-intracranial-hemorrhage-detection

directories案 1

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
│- intermediate_output : preprocessファイル、モデルの結果など中間出力
  │- train_raw.pkl
  │- train_folds.pkl
  │- test_raw.pkl
  │
  │- model_1
  │  │- fold{}_test.pkl
  │  │- fold{}_valid.pkl
  │  │- 他tmp
  │
  │- model_2
  │  │- ...
  │
  │- ...
  │
  │- cnn_stacking_1
  │  │- fold{}_test.pkl
  │  │- fold{}_valid.pkl
  │  │- 他tmp
  │
  │- cnn_stacking_2
  │  │- ...
  │
  │- ...
  │
  │- lgbm_second_stacking
     │- fold{}_test.pkl
     │- fold{}_valid.pkl
     │- 他tmp
```
