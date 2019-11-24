model=model002_inceptionv4_stage2
gpu=2
fold=4
conf=./conf/${model}.py

python -m src.cnn.main train ${conf} --fold ${fold} --gpu ${gpu}
