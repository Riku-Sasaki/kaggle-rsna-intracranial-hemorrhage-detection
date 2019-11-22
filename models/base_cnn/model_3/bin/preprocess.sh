# train
python -m src.preprocess.dicom_to_dataframe --input ../../../input/stage_2_train.csv --output ../../../intermediate_output/preprocessed_data/train_raw_model_3.pkl --imgdir ../../../input/stage_2_train_images
python -m src.preprocess.create_dataset --input ../../../intermediate_output/preprocessed_data/train_raw_model_3.pkl --output ../../../intermediate_output/preprocessed_data/train_model_3.pkl
python -m src.preprocess.make_folds --input ../../../intermediate_output/preprocessed_data/train_model_3.pkl --output ../../../intermediate_output/preprocessed_data/train_folds_model_3.pkl --n-fold 5 --seed 10

# test
python -m src.preprocess.dicom_to_dataframe --input ../../../input/stage_2_sample_submission.csv --output ../../../intermediate_output/preprocessed_data/test_raw_model_3.pkl --imgdir ../../../input/stage_2_test_images
python -m src.preprocess.create_dataset --input ../../../intermediate_output/preprocessed_data/test_raw_model_3.pkl --output ../../../intermediate_output/preprocessed_data/test_model_3.pkl
