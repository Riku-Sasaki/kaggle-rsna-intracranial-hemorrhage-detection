
docker run --rm \
    -v $PWD/:/root/ \
    -v $PWD/../../../intermediate_output/:/root/intermediate_output/ \
    -v $PWD/../../../input/:/root/input/ \
    -v $HOME/.cache/:/root/.cache \
    --runtime=nvidia \
    --ipc=host \
    kaggle/pytorch \
    python ./src/features/cnn_stacking.py
