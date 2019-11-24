mkdir -p cache model data/submission

# train
python -m src.preprocess.dicom_to_dataframe --input ../input/stage_2_train.csv --output ./cache/train_raw.pkl --imgdir ../input/stage_2_train_images
python -m src.preprocess.create_dataset --input ./cache/train_raw.pkl --output ./cache/train2.pkl
python -m src.preprocess.make_folds --input ./cache/train2.pkl --output ./cache/train_folds2.pkl --n-fold 5 --seed 10

# test
python -m src.preprocess.dicom_to_dataframe --input ../input/stage_2_sample_submission.csv --output ./cache/test_raw.pkl --imgdir ../input/stage_2_test_images
python -m src.preprocess.create_dataset --input ./cache/test_raw.pkl --output ./cache/test2.pkl
