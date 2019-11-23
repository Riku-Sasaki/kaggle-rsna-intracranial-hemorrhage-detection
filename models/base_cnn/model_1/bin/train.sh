model=model
gpu=0
conf=./conf/${model}.py

python -m src.cnn.main train ${conf} --fold 0 --gpu ${gpu}
python -m src.cnn.main train ${conf} --fold 1 --gpu ${gpu}
python -m src.cnn.main train ${conf} --fold 2 --gpu ${gpu}
python -m src.cnn.main train ${conf} --fold 3 --gpu ${gpu}
python -m src.cnn.main train ${conf} --fold 4 --gpu ${gpu}
