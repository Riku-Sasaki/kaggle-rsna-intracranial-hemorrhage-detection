# kaggle-rsna-intracranial-hemorrhage-detection

directories庵

```
- input
  - train_dcm
  - test_dcm
  - train.csv
  - test_wo_output.csv

- output
  - test.csv

- bin
  - preprocess.sh
  - train.sh : baseのcnnを直列train+predict -> first stacking直列 -> second stacking

- models
  - base
    - ricky
    - shimacos
    - 2kym
    - sugawarya
  - first_stacking
    - ricky_cnn
    - shimacos_cnn
    - sugawarya_lgbm
    - sugawarya_mlp
  - second_stacing
    - sugawarya_lgbm
 
- intermediate_output : preprocessファイル、モデルの結果など中間出力







```
