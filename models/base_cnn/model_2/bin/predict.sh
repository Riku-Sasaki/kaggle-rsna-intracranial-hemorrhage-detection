model=model
modelname=model_2
gpu=0
ep=2
tta=5
conf=./conf/${model}.py

fold=0
snapshot=../../../intermediate_output/${modelname}/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/${modelname}/fold${fold}_valid.pkl
test=../../../intermediate_output/${modelname}/fold${fold}_test.pkl
python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}

fold=1
snapshot=../../../intermediate_output/${modelname}/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/${modelname}/fold${fold}_valid.pkl
test=../../../intermediate_output/${modelname}/fold${fold}_test.pkl
python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}

fold=2
snapshot=../../../intermediate_output/${modelname}/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/${modelname}/fold${fold}_valid.pkl
test=../../../intermediate_output/${modelname}/fold${fold}_test.pkl
python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}

fold=3
snapshot=../../../intermediate_output/${modelname}/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/${modelname}/fold${fold}_valid.pkl
test=../../../intermediate_output/${modelname}/fold${fold}_test.pkl
python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}

fold=4
snapshot=../../../intermediate_output/${modelname}/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/${modelname}/fold${fold}_valid.pkl
test=../../../intermediate_output/${modelname}/fold${fold}_test.pkl
python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
